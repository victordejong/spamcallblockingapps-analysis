package com.amazonaws.services.s3;

import com.amazonaws.AbortedException;
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressReportingInputStream;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.handlers.RequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.RegionUtils;
import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.internal.AWSS3V4Signer;
import com.amazonaws.services.s3.internal.BucketNameUtils;
import com.amazonaws.services.s3.internal.CompleteMultipartUploadRetryCondition;
import com.amazonaws.services.s3.internal.DigestValidationInputStream;
import com.amazonaws.services.s3.internal.InputSubstream;
import com.amazonaws.services.s3.internal.MD5DigestCalculatingInputStream;
import com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler;
import com.amazonaws.services.s3.internal.RepeatableFileInputStream;
import com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain;
import com.amazonaws.services.s3.internal.S3ErrorResponseHandler;
import com.amazonaws.services.s3.internal.S3ExecutionContext;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3MetadataResponseHandler;
import com.amazonaws.services.s3.internal.S3ObjectResponseHandler;
import com.amazonaws.services.s3.internal.S3RequesterChargedHeaderHandler;
import com.amazonaws.services.s3.internal.S3Signer;
import com.amazonaws.services.s3.internal.S3VersionHeaderHandler;
import com.amazonaws.services.s3.internal.S3XmlResponseHandler;
import com.amazonaws.services.s3.internal.ServerSideEncryptionHeaderHandler;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CreateBucketRequest;
import com.amazonaws.services.s3.model.GeneratePresignedUrlRequest;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.Grant;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.HeadBucketRequest;
import com.amazonaws.services.s3.model.HeadBucketResult;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.ResponseHeaderOverrides;
import com.amazonaws.services.s3.model.S3AccelerateUnsupported;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.SSECustomerKey;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.HeadBucketResultHandler;
import com.amazonaws.services.s3.model.transform.RequestPaymentConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.RequestXmlFactory;
import com.amazonaws.services.s3.model.transform.Unmarshallers;
import com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser;
import com.amazonaws.services.s3.util.Mimetypes;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.LengthCheckInputStream;
import com.amazonaws.util.Md5Utils;
import com.amazonaws.util.RuntimeHttpUtils;
import com.amazonaws.util.ServiceClientHolderInputStream;
import com.amazonaws.util.ValidationUtils;
import com.explorestack.iab.vast.VastError;
import com.sinch.verification.core.verification.VerificationLanguage;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3Client.class */
public class AmazonS3Client extends AmazonWebServiceClient implements AmazonS3 {
    private static Log i = LogFactory.a(AmazonS3Client.class);
    private static final BucketConfigurationXmlFactory l = new BucketConfigurationXmlFactory();
    private static final RequestPaymentConfigurationXmlFactory m = new RequestPaymentConfigurationXmlFactory();
    private static final Map<String, String> p = Collections.synchronizedMap(new LinkedHashMap<String, String>(VastError.ERROR_CODE_GENERAL_WRAPPER, 1.1f, true) { // from class: com.amazonaws.services.s3.AmazonS3Client.1
        @Override // java.util.LinkedHashMap
        protected final boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 300;
        }
    });
    protected S3ClientOptions g;
    volatile String h;
    private final S3ErrorResponseHandler j;
    private final S3XmlResponseHandler<Void> k;
    private final AWSCredentialsProvider n;
    private int o;
    private final CompleteMultipartUploadRetryCondition q;

    static {
        AwsSdkMetrics.addAll(Arrays.asList(S3ServiceMetric.a()));
        SignerFactory.a("S3SignerType", S3Signer.class);
        SignerFactory.a("AWSS3V4SignerType", AWSS3V4Signer.class);
    }

    @Deprecated
    public AmazonS3Client() {
        this(new DefaultAWSCredentialsProviderChain());
    }

    @Deprecated
    public AmazonS3Client(ClientConfiguration clientConfiguration) {
        this(new DefaultAWSCredentialsProviderChain(), clientConfiguration);
    }

    public AmazonS3Client(ClientConfiguration clientConfiguration, Region region) {
        this(new DefaultAWSCredentialsProviderChain(), region, clientConfiguration);
    }

    @Deprecated
    public AmazonS3Client(AWSCredentials aWSCredentials) {
        this(aWSCredentials, new ClientConfiguration());
    }

    @Deprecated
    public AmazonS3Client(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), clientConfiguration);
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, Region region) {
        this(aWSCredentials, region, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, Region region, ClientConfiguration clientConfiguration) {
        this(aWSCredentials, region, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, Region region, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this(new StaticCredentialsProvider(aWSCredentials), region, clientConfiguration, httpClient);
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider) {
        this(aWSCredentialsProvider, new ClientConfiguration());
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.j = new S3ErrorResponseHandler();
        this.k = new S3XmlResponseHandler<>(null);
        this.g = new S3ClientOptions();
        this.o = 1024;
        this.q = new CompleteMultipartUploadRetryCondition();
        this.n = aWSCredentialsProvider;
        d();
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        super(clientConfiguration, new UrlHttpClient(clientConfiguration), requestMetricCollector);
        this.j = new S3ErrorResponseHandler();
        this.k = new S3XmlResponseHandler<>(null);
        this.g = new S3ClientOptions();
        this.o = 1024;
        this.q = new CompleteMultipartUploadRetryCondition();
        this.n = aWSCredentialsProvider;
        d();
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region) {
        this(aWSCredentialsProvider, region, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, region, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.j = new S3ErrorResponseHandler();
        this.k = new S3XmlResponseHandler<>(null);
        this.g = new S3ClientOptions();
        this.o = 1024;
        this.q = new CompleteMultipartUploadRetryCondition();
        this.n = aWSCredentialsProvider;
        if (aWSCredentialsProvider == null) {
            throw new IllegalArgumentException("Credentials cannot be null. Credentials is required to sign the request");
        } else if (region != null) {
            this.f6533b = clientConfiguration;
            this.f = "s3";
            a("s3.amazonaws.com");
            a(region);
            HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
            this.f6535d.addAll(handlerChainFactory.a("/com/amazonaws/services/s3/request.handlers", RequestHandler.class));
            this.f6535d.addAll(handlerChainFactory.a("/com/amazonaws/services/s3/request.handler2s", RequestHandler2.class));
            Log log = i;
            log.b("initialized with endpoint = " + this.f6532a);
        } else {
            throw new IllegalArgumentException("Region cannot be null. Region is required to sign the request");
        }
    }

    private static long a(InputStream inputStream) {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        inputStream.mark(-1);
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    j += read;
                } else {
                    inputStream.reset();
                    return j;
                }
            } catch (IOException e) {
                throw new AmazonClientException("Could not calculate content length.", e);
            }
        }
    }

    private <X extends AmazonWebServiceRequest> Request<X> a(String str, String str2, X x, HttpMethodName httpMethodName) {
        return a(str, str2, x, httpMethodName, null);
    }

    private <X extends AmazonWebServiceRequest> Request<X> a(String str, String str2, X x, HttpMethodName httpMethodName, URI uri) {
        DefaultRequest defaultRequest = new DefaultRequest(x, "Amazon S3");
        URI uri2 = uri;
        if (this.g.f6779c) {
            uri2 = uri;
            if (!(defaultRequest.a() instanceof S3AccelerateUnsupported)) {
                uri2 = this.g.f6780d ? RuntimeHttpUtils.a("s3-accelerate.dualstack.amazonaws.com", this.f6533b) : RuntimeHttpUtils.a("s3-accelerate.amazonaws.com", this.f6533b);
            }
        }
        defaultRequest.a(httpMethodName);
        a(defaultRequest, str, str2, uri2);
        return defaultRequest;
    }

    @Deprecated
    private static S3Signer a(Request<?> request, String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder("/");
        if (str != null) {
            str3 = str + "/";
        } else {
            str3 = "";
        }
        sb.append(str3);
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        return new S3Signer(request.e().toString(), sb.toString());
    }

    private <X, Y extends AmazonWebServiceRequest> X a(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, String str, String str2) {
        Signer signer;
        AmazonWebServiceRequest a2 = request.a();
        ExecutionContext a3 = a(a2);
        AWSRequestMetrics aWSRequestMetrics = a3.f6611a;
        request.a(aWSRequestMetrics);
        aWSRequestMetrics.a(AWSRequestMetrics.Field.ClientExecuteTime);
        r18 = null;
        Response<?> response = null;
        try {
            try {
                request.a(this.e);
                if (!request.b().containsKey("Content-Type")) {
                    request.a("Content-Type", Mimetypes.MIMETYPE_OCTET_STREAM);
                }
                if (str != null && !(request.a() instanceof CreateBucketRequest) && a((Request<?>) request)) {
                    Map<String, String> map = p;
                    String str3 = map.get(str);
                    String str4 = str3;
                    if (str3 == null) {
                        if (i.a()) {
                            Log log = i;
                            StringBuilder sb = new StringBuilder("Bucket region cache doesn't have an entry for ");
                            sb.append(str);
                            sb.append(". Trying to get bucket region from Amazon S3.");
                            log.b(sb.toString());
                        }
                        String b2 = b(str);
                        str4 = b2;
                        if (b2 != null) {
                            map.put(str, b2);
                            str4 = b2;
                        }
                    }
                    if (i.a()) {
                        Log log2 = i;
                        StringBuilder sb2 = new StringBuilder("Region for ");
                        sb2.append(str);
                        sb2.append(" is ");
                        sb2.append(str4);
                        log2.b(sb2.toString());
                    }
                }
                AWSCredentials a4 = this.n.a();
                if (a2.getRequestCredentials() != null) {
                    a4 = a2.getRequestCredentials();
                }
                Signer a5 = a(this.g.f6779c ? this.f6532a : request.f());
                if (!((this.f6533b == null || this.f6533b.getSignerOverride() == null) ? false : true)) {
                    if ((a5 instanceof AWSS3V4Signer) && a((Request<?>) request)) {
                        String str5 = this.h == null ? p.get(str) : this.h;
                        if (str5 != null) {
                            a((Request<?>) request, str, str2, RuntimeHttpUtils.a(RegionUtils.a(str5).b("s3"), this.f6533b));
                            signer = (AWSS3V4Signer) a5;
                            a((AWSS3V4Signer) a5, str5);
                        } else if (request.a() instanceof GeneratePresignedUrlRequest) {
                            signer = a((Request<?>) request, str, str2);
                        }
                        a3.a(signer);
                        a3.f6614d = a4;
                        Response<?> a6 = this.f6534c.a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) this.j, a3);
                        response = a6;
                        response = a6;
                        X x = (X) a6.f6543a;
                        a(aWSRequestMetrics, (Request<?>) request, a6);
                        return x;
                    }
                    String c2 = c() == null ? this.h == null ? p.get(str) : this.h : c();
                    if (c2 != null) {
                        AWSS3V4Signer aWSS3V4Signer = new AWSS3V4Signer();
                        a(aWSS3V4Signer, c2);
                        signer = aWSS3V4Signer;
                        a3.a(signer);
                        a3.f6614d = a4;
                        Response<?> a62 = this.f6534c.a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) this.j, a3);
                        response = a62;
                        response = a62;
                        X x2 = (X) a62.f6543a;
                        a(aWSRequestMetrics, (Request<?>) request, a62);
                        return x2;
                    }
                }
                signer = a5;
                if (a5 instanceof S3Signer) {
                    signer = a((Request<?>) request, str, str2);
                }
                a3.a(signer);
                a3.f6614d = a4;
                Response<?> a622 = this.f6534c.a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) this.j, a3);
                response = a622;
                response = a622;
                X x22 = (X) a622.f6543a;
                a(aWSRequestMetrics, (Request<?>) request, a622);
                return x22;
            } catch (AmazonS3Exception e) {
                if (e.getStatusCode() == 301 && e.getAdditionalDetails() != null) {
                    String str6 = e.getAdditionalDetails().get("x-amz-bucket-region");
                    p.put(str, str6);
                    StringBuilder sb3 = new StringBuilder("The bucket is in this region: ");
                    sb3.append(str6);
                    sb3.append(". Please use this region to retry the request");
                    e.setErrorMessage(sb3.toString());
                }
                throw e;
            }
        } catch (Throwable th) {
            a(aWSRequestMetrics, (Request<?>) request, response);
            throw th;
        }
    }

    private static String a(ObjectTagging objectTagging) {
        if (objectTagging == null || objectTagging.getTagSet() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Tag> it2 = objectTagging.getTagSet().iterator();
        while (it2.hasNext()) {
            Tag next = it2.next();
            sb.append(S3HttpUtils.a(next.getKey()));
            sb.append('=');
            sb.append(S3HttpUtils.a(next.getValue()));
            if (it2.hasNext()) {
                sb.append("&");
            }
        }
        return sb.toString();
    }

    private static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        return sb.toString();
    }

    private static URI a(URI uri, String str) {
        try {
            return new URI(uri.getScheme() + "://" + str + "." + uri.getAuthority());
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid bucket name: ".concat(String.valueOf(str)), e);
        }
    }

    private static void a(Request<? extends AmazonWebServiceRequest> request, AccessControlList accessControlList) {
        Permission[] values;
        Set<Grant> grants = accessControlList.getGrants();
        HashMap hashMap = new HashMap();
        for (Grant grant : grants) {
            if (!hashMap.containsKey(grant.getPermission())) {
                hashMap.put(grant.getPermission(), new LinkedList());
            }
            ((Collection) hashMap.get(grant.getPermission())).add(grant.getGrantee());
        }
        for (Permission permission : Permission.values()) {
            if (hashMap.containsKey(permission)) {
                Collection<Grantee> collection = (Collection) hashMap.get(permission);
                StringBuilder sb = new StringBuilder();
                boolean z = false;
                for (Grantee grantee : collection) {
                    if (!z) {
                        z = true;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(grantee.getTypeIdentifier());
                    sb.append("=\"");
                    sb.append(grantee.getIdentifier());
                    sb.append("\"");
                }
                request.a(permission.getHeaderName(), sb.toString());
            }
        }
    }

    private static void a(Request<?> request, ObjectMetadata objectMetadata) {
        Map<String, Object> rawMetadata = objectMetadata.getRawMetadata();
        if (rawMetadata.get("x-amz-server-side-encryption-aws-kms-key-id") == null || ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION.equals(rawMetadata.get("x-amz-server-side-encryption"))) {
            if (rawMetadata != null) {
                for (Map.Entry<String, Object> entry : rawMetadata.entrySet()) {
                    request.a(entry.getKey(), entry.getValue().toString());
                }
            }
            Date httpExpiresDate = objectMetadata.getHttpExpiresDate();
            if (httpExpiresDate != null) {
                request.a("Expires", DateUtils.b(httpExpiresDate));
            }
            Map<String, String> userMetadata = objectMetadata.getUserMetadata();
            if (userMetadata != null) {
                for (Map.Entry<String, String> entry2 : userMetadata.entrySet()) {
                    String key = entry2.getKey();
                    String value = entry2.getValue();
                    String str = key;
                    if (key != null) {
                        str = key.trim();
                    }
                    String str2 = value;
                    if (value != null) {
                        str2 = value.trim();
                    }
                    if (!"x-amz-tagging".equals(str)) {
                        request.a("x-amz-meta-".concat(String.valueOf(str)), str2);
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION");
    }

    private static void a(Request<?> request, SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        if (sSEAwsKeyManagementParams != null) {
            b(request, "x-amz-server-side-encryption", sSEAwsKeyManagementParams.getEncryption());
            b(request, "x-amz-server-side-encryption-aws-kms-key-id", sSEAwsKeyManagementParams.getAwsKmsKeyId());
        }
    }

    private static void a(Request<?> request, SSECustomerKey sSECustomerKey) {
        if (sSECustomerKey != null) {
            b(request, "x-amz-server-side-encryption-customer-algorithm", sSECustomerKey.getAlgorithm());
            b(request, "x-amz-server-side-encryption-customer-key", sSECustomerKey.getKey());
            b(request, "x-amz-server-side-encryption-customer-key-MD5", sSECustomerKey.getMd5());
            if (sSECustomerKey.getKey() != null && sSECustomerKey.getMd5() == null) {
                request.a("x-amz-server-side-encryption-customer-key-MD5", Md5Utils.a(Base64.decode(sSECustomerKey.getKey())));
            }
        }
    }

    private void a(Request<?> request, String str, String str2, URI uri) {
        URI uri2 = uri;
        if (uri == null) {
            uri2 = this.f6532a;
        }
        if (b(uri2, str)) {
            i.b("Using virtual style addressing. Endpoint = ".concat(String.valueOf(uri2)));
            request.a(a(uri2, str));
            request.a(c(str2));
        } else {
            i.b("Using path style addressing. Endpoint = ".concat(String.valueOf(uri2)));
            request.a(uri2);
            if (str != null) {
                request.a(a(str, str2));
            }
        }
        Log log = i;
        log.b("Key: " + str2 + "; Request: " + request);
    }

    private static void a(Request<?> request, String str, Date date) {
        if (date != null) {
            request.a(str, ServiceUtils.b(date));
        }
    }

    private static void a(Request<?> request, String str, List<String> list) {
        if (list != null && !list.isEmpty()) {
            request.a(str, ServiceUtils.a(list));
        }
    }

    private static void a(Request<?> request, boolean z) {
        if (z) {
            request.a("x-amz-request-payer", "requester");
        }
    }

    private static void a(ProgressListenerCallbackExecutor progressListenerCallbackExecutor, int i2) {
        if (progressListenerCallbackExecutor != null) {
            ProgressEvent progressEvent = new ProgressEvent(0L);
            progressEvent.setEventCode(i2);
            progressListenerCallbackExecutor.a(progressEvent);
        }
    }

    private void a(AWSS3V4Signer aWSS3V4Signer, String str) {
        aWSS3V4Signer.a(b());
        aWSS3V4Signer.b(str);
    }

    private boolean a(Request<?> request) {
        if (!request.f().getHost().endsWith("s3.amazonaws.com")) {
            return false;
        }
        String c2 = c();
        String str = c2;
        if (c2 == null) {
            str = this.h;
        }
        return str == null;
    }

    private static ByteArrayInputStream b(InputStream inputStream) {
        int i2 = 262144;
        byte[] bArr = new byte[262144];
        int i3 = 0;
        while (i2 > 0) {
            try {
                int read = inputStream.read(bArr, i3, i2);
                if (read == -1) {
                    break;
                }
                i3 += read;
                i2 -= read;
            } catch (IOException e) {
                throw new AmazonClientException("Failed to read from inputstream", e);
            }
        }
        if (inputStream.read() == -1) {
            inputStream.close();
            return new ByteArrayInputStream(bArr, 0, i3);
        }
        throw new AmazonClientException("Input stream exceeds 256k buffer.");
    }

    private String b(String str) {
        String str2 = null;
        try {
            str2 = ((HeadBucketResult) a(a(str, null, new HeadBucketRequest(str), HttpMethodName.HEAD, new URI("https://s3-us-west-1.amazonaws.com")), new HeadBucketResultHandler(), str, (String) null)).getBucketRegion();
        } catch (AmazonS3Exception e) {
            if (e.getAdditionalDetails() != null) {
                str2 = e.getAdditionalDetails().get("x-amz-bucket-region");
            }
        } catch (URISyntaxException e2) {
            i.d("Error while creating URI");
        }
        if (str2 == null && i.a()) {
            Log log = i;
            log.b("Not able to derive region of the " + str + " from the HEAD Bucket requests.");
        }
        return str2;
    }

    private static void b(Request<?> request) {
        request.a("Content-Length", "0");
    }

    private static void b(Request<?> request, String str, String str2) {
        if (str2 != null) {
            request.a(str, str2);
        }
    }

    private boolean b(URI uri, String str) {
        return !this.g.f6778b && BucketNameUtils.isDNSBucketName(str) && !d(uri.getHost());
    }

    private static String c(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.startsWith("/")) {
                str2 = "/".concat(String.valueOf(str));
            }
        }
        return str2;
    }

    @Deprecated
    private void d() {
        a("s3.amazonaws.com");
        this.f = "s3";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f6535d.addAll(handlerChainFactory.a("/com/amazonaws/services/s3/request.handlers", RequestHandler.class));
        this.f6535d.addAll(handlerChainFactory.a("/com/amazonaws/services/s3/request.handler2s", RequestHandler2.class));
    }

    private static boolean d(String str) {
        if (str == null) {
            return false;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return false;
        }
        for (String str2 : split) {
            try {
                int parseInt = Integer.parseInt(str2);
                if (parseInt < 0 || parseInt > 255) {
                    return false;
                }
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return true;
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    public final ExecutionContext a(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new S3ExecutionContext(this.f6535d, b(amazonWebServiceRequest) || a(), this);
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(completeMultipartUploadRequest, "The request parameter must be specified when completing a multipart upload");
        String bucketName = completeMultipartUploadRequest.getBucketName();
        String key = completeMultipartUploadRequest.getKey();
        String uploadId = completeMultipartUploadRequest.getUploadId();
        ValidationUtils.a(bucketName, "The bucket name parameter must be specified when completing a multipart upload");
        ValidationUtils.a(key, "The key parameter must be specified when completing a multipart upload");
        ValidationUtils.a(uploadId, "The upload ID parameter must be specified when completing a multipart upload");
        ValidationUtils.a(completeMultipartUploadRequest.getPartETags(), "The part ETags parameter must be specified when completing a multipart upload");
        int i2 = 0;
        while (true) {
            Request a2 = a(bucketName, key, (String) completeMultipartUploadRequest, HttpMethodName.POST);
            a2.b("uploadId", uploadId);
            a(a2, completeMultipartUploadRequest.isRequesterPays());
            byte[] convertToXmlByteArray = RequestXmlFactory.convertToXmlByteArray(completeMultipartUploadRequest.getPartETags());
            a2.a("Content-Type", Mimetypes.MIMETYPE_XML);
            a2.a("Content-Length", String.valueOf(convertToXmlByteArray.length));
            a2.a(new ByteArrayInputStream(convertToXmlByteArray));
            XmlResponsesSaxParser.CompleteMultipartUploadHandler completeMultipartUploadHandler = (XmlResponsesSaxParser.CompleteMultipartUploadHandler) a(a2, new ResponseHeaderHandlerChain(new Unmarshallers.CompleteMultipartUploadResultUnmarshaller(), new ServerSideEncryptionHeaderHandler(), new ObjectExpirationHeaderHandler(), new S3VersionHeaderHandler(), new S3RequesterChargedHeaderHandler()), bucketName, key);
            if (completeMultipartUploadHandler.getCompleteMultipartUploadResult() != null) {
                return completeMultipartUploadHandler.getCompleteMultipartUploadResult();
            }
            AmazonS3Exception amazonS3Exception = completeMultipartUploadHandler.getAmazonS3Exception();
            RetryPolicy retryPolicy = this.f6533b.getRetryPolicy();
            if ((retryPolicy == null || retryPolicy.f6770a == null || retryPolicy == PredefinedRetryPolicies.f6763a) ? false : this.q.a(amazonS3Exception, i2)) {
                i2++;
            } else {
                throw completeMultipartUploadHandler.getAmazonS3Exception();
            }
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(initiateMultipartUploadRequest, "The request parameter must be specified when initiating a multipart upload");
        ValidationUtils.a(initiateMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when initiating a multipart upload");
        ValidationUtils.a(initiateMultipartUploadRequest.getKey(), "The key parameter must be specified when initiating a multipart upload");
        Request a2 = a(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), (String) initiateMultipartUploadRequest, HttpMethodName.POST);
        a2.b("uploads", null);
        if (initiateMultipartUploadRequest.getStorageClass() != null) {
            a2.a("x-amz-storage-class", initiateMultipartUploadRequest.getStorageClass().toString());
        }
        if (initiateMultipartUploadRequest.getRedirectLocation() != null) {
            a2.a("x-amz-website-redirect-location", initiateMultipartUploadRequest.getRedirectLocation());
        }
        if (initiateMultipartUploadRequest.getAccessControlList() != null) {
            a(a2, initiateMultipartUploadRequest.getAccessControlList());
        } else if (initiateMultipartUploadRequest.getCannedACL() != null) {
            a2.a("x-amz-acl", initiateMultipartUploadRequest.getCannedACL().toString());
        }
        if (initiateMultipartUploadRequest.objectMetadata != null) {
            a(a2, initiateMultipartUploadRequest.objectMetadata);
        }
        b(a2, "x-amz-tagging", a(initiateMultipartUploadRequest.getTagging()));
        a(a2, initiateMultipartUploadRequest.isRequesterPays());
        a(a2, initiateMultipartUploadRequest.getSSECustomerKey());
        a(a2, initiateMultipartUploadRequest.getSSEAwsKeyManagementParams());
        b(a2);
        a2.a(new ByteArrayInputStream(new byte[0]));
        return (InitiateMultipartUploadResult) a(a2, new ResponseHeaderHandlerChain(new Unmarshallers.InitiateMultipartUploadResultUnmarshaller(), new ServerSideEncryptionHeaderHandler()), initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey());
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public PutObjectResult a(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException {
        ByteArrayInputStream byteArrayInputStream;
        ValidationUtils.a(putObjectRequest, "The PutObjectRequest parameter must be specified when uploading an object");
        String bucketName = putObjectRequest.getBucketName();
        String key = putObjectRequest.getKey();
        ObjectMetadata metadata = putObjectRequest.getMetadata();
        InputStream inputStream = putObjectRequest.getInputStream();
        ProgressListenerCallbackExecutor a2 = ProgressListenerCallbackExecutor.a(putObjectRequest.getGeneralProgressListener());
        ObjectMetadata objectMetadata = metadata;
        if (metadata == null) {
            objectMetadata = new ObjectMetadata();
        }
        ValidationUtils.a(bucketName, "The bucket name parameter must be specified when uploading an object");
        ValidationUtils.a(key, "The key parameter must be specified when uploading an object");
        boolean a3 = ServiceUtils.a(putObjectRequest, this.g);
        if (putObjectRequest.getFile() != null) {
            File file = putObjectRequest.getFile();
            objectMetadata.setContentLength(file.length());
            boolean z = objectMetadata.getContentMD5() == null;
            if (objectMetadata.getContentType() == null) {
                objectMetadata.setContentType(Mimetypes.getInstance().getMimetype(file));
            }
            if (z && !a3) {
                try {
                    objectMetadata.setContentMD5(Md5Utils.a(file));
                } catch (Exception e) {
                    throw new AmazonClientException("Unable to calculate MD5 hash: " + e.getMessage(), e);
                }
            }
            try {
                inputStream = new RepeatableFileInputStream(file);
            } catch (FileNotFoundException e2) {
                throw new AmazonClientException("Unable to find file to upload", e2);
            }
        }
        Request a4 = a(bucketName, key, (String) putObjectRequest, HttpMethodName.PUT);
        if (putObjectRequest.getAccessControlList() != null) {
            a(a4, putObjectRequest.getAccessControlList());
        } else if (putObjectRequest.getCannedAcl() != null) {
            a4.a("x-amz-acl", putObjectRequest.getCannedAcl().toString());
        }
        if (putObjectRequest.getStorageClass() != null) {
            a4.a("x-amz-storage-class", putObjectRequest.getStorageClass());
        }
        InputStream inputStream2 = inputStream;
        if (putObjectRequest.getRedirectLocation() != null) {
            a4.a("x-amz-website-redirect-location", putObjectRequest.getRedirectLocation());
            inputStream2 = inputStream;
            if (inputStream == null) {
                b(a4);
                inputStream2 = new ByteArrayInputStream(new byte[0]);
            }
        }
        b(a4, "x-amz-tagging", a(putObjectRequest.getTagging()));
        a(a4, putObjectRequest.isRequesterPays());
        a(a4, putObjectRequest.getSSECustomerKey());
        Long l2 = (Long) objectMetadata.getRawMetadataValue("Content-Length");
        if (l2 != null) {
            long longValue = l2.longValue();
            byteArrayInputStream = inputStream2;
            if (longValue >= 0) {
                LengthCheckInputStream lengthCheckInputStream = new LengthCheckInputStream(inputStream2, longValue, false);
                a4.a("Content-Length", l2.toString());
                byteArrayInputStream = lengthCheckInputStream;
            }
        } else if (!inputStream2.markSupported()) {
            i.d("No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors.");
            ByteArrayInputStream b2 = b(inputStream2);
            a4.a("Content-Length", String.valueOf(b2.available()));
            a4.m();
            byteArrayInputStream = b2;
        } else {
            a4.a("Content-Length", String.valueOf(a(inputStream2)));
            byteArrayInputStream = inputStream2;
        }
        ProgressReportingInputStream progressReportingInputStream = byteArrayInputStream;
        if (a2 != null) {
            progressReportingInputStream = new ProgressReportingInputStream(byteArrayInputStream, a2);
            progressReportingInputStream.a(this.o);
            a(a2, 2);
        }
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream = progressReportingInputStream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream2 = null;
        if (objectMetadata.getContentMD5() == null) {
            mD5DigestCalculatingInputStream = progressReportingInputStream;
            mD5DigestCalculatingInputStream2 = null;
            if (!a3) {
                MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream3 = new MD5DigestCalculatingInputStream(progressReportingInputStream);
                mD5DigestCalculatingInputStream = mD5DigestCalculatingInputStream3;
                mD5DigestCalculatingInputStream2 = mD5DigestCalculatingInputStream3;
            }
        }
        if (objectMetadata.getContentType() == null) {
            objectMetadata.setContentType(Mimetypes.MIMETYPE_OCTET_STREAM);
        }
        a(a4, objectMetadata);
        a(a4, putObjectRequest.getSSEAwsKeyManagementParams());
        a4.a(mD5DigestCalculatingInputStream);
        try {
            try {
                ObjectMetadata objectMetadata2 = (ObjectMetadata) a(a4, new S3MetadataResponseHandler(), bucketName, key);
                try {
                    mD5DigestCalculatingInputStream.close();
                } catch (AbortedException e3) {
                } catch (Exception e4) {
                    i.a("Unable to cleanly close input stream: " + e4.getMessage(), e4);
                }
                String contentMD5 = objectMetadata.getContentMD5();
                if (mD5DigestCalculatingInputStream2 != null) {
                    contentMD5 = BinaryUtils.b(mD5DigestCalculatingInputStream2.f6799a.digest());
                }
                if (objectMetadata2 == null || contentMD5 == null || a3 || Arrays.equals(BinaryUtils.b(contentMD5), BinaryUtils.a(objectMetadata2.getETag()))) {
                    a(a2, 4);
                    PutObjectResult putObjectResult = new PutObjectResult();
                    putObjectResult.setVersionId(objectMetadata2.getVersionId());
                    putObjectResult.setSSEAlgorithm(objectMetadata2.getSSEAlgorithm());
                    putObjectResult.setSSECustomerAlgorithm(objectMetadata2.getSSECustomerAlgorithm());
                    putObjectResult.setSSECustomerKeyMd5(objectMetadata2.getSSECustomerKeyMd5());
                    putObjectResult.setExpirationTime(objectMetadata2.getExpirationTime());
                    putObjectResult.setExpirationTimeRuleId(objectMetadata2.getExpirationTimeRuleId());
                    putObjectResult.setETag(objectMetadata2.getETag());
                    putObjectResult.setMetadata(objectMetadata2);
                    putObjectResult.setRequesterCharged(objectMetadata2.isRequesterCharged());
                    putObjectResult.setContentMd5(contentMD5);
                    return putObjectResult;
                }
                a(a2, 8);
                throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
            } catch (Throwable th) {
                try {
                    mD5DigestCalculatingInputStream.close();
                } catch (AbortedException e5) {
                } catch (Exception e6) {
                    i.a("Unable to cleanly close input stream: " + e6.getMessage(), e6);
                }
                throw th;
            }
        } catch (AmazonClientException e7) {
            a(a2, 8);
            throw e7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.s3.AmazonS3
    public S3Object a(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException {
        InputStream inputStream;
        ValidationUtils.a(getObjectRequest, "The GetObjectRequest parameter must be specified when requesting an object");
        ValidationUtils.a(getObjectRequest.getBucketName(), "The bucket name parameter must be specified when requesting an object");
        ValidationUtils.a(getObjectRequest.getKey(), "The key parameter must be specified when requesting an object");
        Request a2 = a(getObjectRequest.getBucketName(), getObjectRequest.getKey(), (String) getObjectRequest, HttpMethodName.GET);
        if (getObjectRequest.getVersionId() != null) {
            a2.b("versionId", getObjectRequest.getVersionId());
        }
        long[] range = getObjectRequest.getRange();
        if (range != null) {
            String str = "bytes=" + Long.toString(range[0]) + VerificationLanguage.REGION_PREFIX;
            String str2 = str;
            if (range[1] >= 0) {
                str2 = str + Long.toString(range[1]);
            }
            a2.a("Range", str2);
        }
        a(a2, getObjectRequest.isRequesterPays());
        ResponseHeaderOverrides responseHeaders = getObjectRequest.getResponseHeaders();
        if (responseHeaders != null) {
            if (responseHeaders.getCacheControl() != null) {
                a2.b(ResponseHeaderOverrides.RESPONSE_HEADER_CACHE_CONTROL, responseHeaders.getCacheControl());
            }
            if (responseHeaders.getContentDisposition() != null) {
                a2.b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_DISPOSITION, responseHeaders.getContentDisposition());
            }
            if (responseHeaders.getContentEncoding() != null) {
                a2.b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_ENCODING, responseHeaders.getContentEncoding());
            }
            if (responseHeaders.getContentLanguage() != null) {
                a2.b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_LANGUAGE, responseHeaders.getContentLanguage());
            }
            if (responseHeaders.getContentType() != null) {
                a2.b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_TYPE, responseHeaders.getContentType());
            }
            if (responseHeaders.getExpires() != null) {
                a2.b(ResponseHeaderOverrides.RESPONSE_HEADER_EXPIRES, responseHeaders.getExpires());
            }
        }
        a(a2, "If-Modified-Since", getObjectRequest.getModifiedSinceConstraint());
        a(a2, "If-Unmodified-Since", getObjectRequest.getUnmodifiedSinceConstraint());
        a(a2, "If-Match", getObjectRequest.getMatchingETagConstraints());
        a(a2, "If-None-Match", getObjectRequest.getNonmatchingETagConstraints());
        a(a2, getObjectRequest.getSSECustomerKey());
        ProgressListenerCallbackExecutor a3 = ProgressListenerCallbackExecutor.a(getObjectRequest.getGeneralProgressListener());
        try {
            S3Object s3Object = (S3Object) a(a2, new S3ObjectResponseHandler(), getObjectRequest.getBucketName(), getObjectRequest.getKey());
            s3Object.setBucketName(getObjectRequest.getBucketName());
            s3Object.setKey(getObjectRequest.getKey());
            ServiceClientHolderInputStream serviceClientHolderInputStream = new ServiceClientHolderInputStream(s3Object.getObjectContent(), this);
            ServiceClientHolderInputStream serviceClientHolderInputStream2 = serviceClientHolderInputStream;
            if (a3 != null) {
                ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(serviceClientHolderInputStream, a3);
                progressReportingInputStream.f6601a = true;
                progressReportingInputStream.a(this.o);
                a(a3, 2);
                serviceClientHolderInputStream2 = progressReportingInputStream;
            }
            if (ServiceUtils.a(getObjectRequest, this.g) || ServiceUtils.a(s3Object.getObjectMetadata(), this.g)) {
                inputStream = new LengthCheckInputStream(serviceClientHolderInputStream2, s3Object.getObjectMetadata().getContentLength(), true);
            } else {
                String eTag = s3Object.getObjectMetadata().getETag();
                inputStream = serviceClientHolderInputStream2;
                if (eTag != null) {
                    inputStream = serviceClientHolderInputStream2;
                    if (!ServiceUtils.c(eTag)) {
                        try {
                            inputStream = new DigestValidationInputStream(serviceClientHolderInputStream2, MessageDigest.getInstance("MD5"), BinaryUtils.a(s3Object.getObjectMetadata().getETag()));
                        } catch (NoSuchAlgorithmException e) {
                            i.b("No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity.", e);
                            inputStream = serviceClientHolderInputStream2;
                        }
                    }
                }
            }
            s3Object.setObjectContent(new S3ObjectInputStream(inputStream));
            return s3Object;
        } catch (AmazonS3Exception e2) {
            if (e2.getStatusCode() == 412 || e2.getStatusCode() == 304) {
                a(a3, 16);
                return null;
            }
            a(a3, 8);
            throw e2;
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3, com.amazonaws.services.s3.internal.S3DirectSpi
    public UploadPartResult a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        InputStream inputStream;
        ValidationUtils.a(uploadPartRequest, "The request parameter must be specified when uploading a part");
        String bucketName = uploadPartRequest.getBucketName();
        String key = uploadPartRequest.getKey();
        String uploadId = uploadPartRequest.getUploadId();
        int partNumber = uploadPartRequest.getPartNumber();
        long partSize = uploadPartRequest.getPartSize();
        ValidationUtils.a(bucketName, "The bucket name parameter must be specified when uploading a part");
        ValidationUtils.a(key, "The key parameter must be specified when uploading a part");
        ValidationUtils.a(uploadId, "The upload ID parameter must be specified when uploading a part");
        ValidationUtils.a(Integer.valueOf(partNumber), "The part number parameter must be specified when uploading a part");
        ValidationUtils.a(Long.valueOf(partSize), "The part size parameter must be specified when uploading a part");
        Request a2 = a(bucketName, key, (String) uploadPartRequest, HttpMethodName.PUT);
        a2.b("uploadId", uploadId);
        a2.b("partNumber", Integer.toString(partNumber));
        ObjectMetadata objectMetadata = uploadPartRequest.getObjectMetadata();
        if (objectMetadata != null) {
            a(a2, objectMetadata);
        }
        b(a2, "Content-MD5", uploadPartRequest.getMd5Digest());
        a2.a("Content-Length", Long.toString(partSize));
        a(a2, uploadPartRequest.isRequesterPays());
        a(a2, uploadPartRequest.getSSECustomerKey());
        if (uploadPartRequest.getInputStream() != null) {
            inputStream = uploadPartRequest.getInputStream();
        } else if (uploadPartRequest.getFile() != null) {
            try {
                inputStream = new InputSubstream(new RepeatableFileInputStream(uploadPartRequest.getFile()), uploadPartRequest.getFileOffset(), partSize, true);
            } catch (FileNotFoundException e) {
                throw new IllegalArgumentException("The specified file doesn't exist", e);
            }
        } else {
            throw new IllegalArgumentException("A File or InputStream must be specified when uploading part");
        }
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream = inputStream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream2 = null;
        if (uploadPartRequest.getMd5Digest() == null) {
            mD5DigestCalculatingInputStream = inputStream;
            mD5DigestCalculatingInputStream2 = null;
            if (!ServiceUtils.a(uploadPartRequest, this.g)) {
                mD5DigestCalculatingInputStream2 = new MD5DigestCalculatingInputStream(inputStream);
                mD5DigestCalculatingInputStream = mD5DigestCalculatingInputStream2;
            }
        }
        ProgressListenerCallbackExecutor a3 = ProgressListenerCallbackExecutor.a(uploadPartRequest.getGeneralProgressListener());
        ProgressReportingInputStream progressReportingInputStream = mD5DigestCalculatingInputStream;
        if (a3 != null) {
            progressReportingInputStream = new ProgressReportingInputStream(mD5DigestCalculatingInputStream, a3);
            progressReportingInputStream.a(this.o);
            a(a3, 1024);
        }
        try {
            try {
                a2.a(progressReportingInputStream);
                ObjectMetadata objectMetadata2 = (ObjectMetadata) a(a2, new S3MetadataResponseHandler(), bucketName, key);
                if (objectMetadata2 != null && mD5DigestCalculatingInputStream2 != null && !ServiceUtils.a(objectMetadata2, this.g) && !Arrays.equals(mD5DigestCalculatingInputStream2.f6799a.digest(), BinaryUtils.a(objectMetadata2.getETag()))) {
                    throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
                }
                a(a3, 2048);
                UploadPartResult uploadPartResult = new UploadPartResult();
                uploadPartResult.setETag(objectMetadata2.getETag());
                uploadPartResult.setPartNumber(partNumber);
                uploadPartResult.setSSEAlgorithm(objectMetadata2.getSSEAlgorithm());
                uploadPartResult.setSSECustomerAlgorithm(objectMetadata2.getSSECustomerAlgorithm());
                uploadPartResult.setSSECustomerKeyMd5(objectMetadata2.getSSECustomerKeyMd5());
                uploadPartResult.setRequesterCharged(objectMetadata2.isRequesterCharged());
                if (progressReportingInputStream != null) {
                    try {
                        progressReportingInputStream.close();
                    } catch (Exception e2) {
                    }
                }
                return uploadPartResult;
            } catch (AmazonClientException e3) {
                a(a3, 4096);
                throw e3;
            }
        } catch (Throwable th) {
            if (progressReportingInputStream != null) {
                try {
                    progressReportingInputStream.close();
                } catch (Exception e4) {
                }
            }
            throw th;
        }
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    public final void a(Region region) {
        super.a(region);
        this.h = region.f6757a;
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public void a(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(abortMultipartUploadRequest, "The request parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.getKey(), "The key parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.getUploadId(), "The upload ID parameter must be specified when aborting a multipart upload");
        String bucketName = abortMultipartUploadRequest.getBucketName();
        String key = abortMultipartUploadRequest.getKey();
        Request a2 = a(bucketName, key, (String) abortMultipartUploadRequest, HttpMethodName.DELETE);
        a2.b("uploadId", abortMultipartUploadRequest.getUploadId());
        a(a2, abortMultipartUploadRequest.isRequesterPays());
        a(a2, this.k, bucketName, key);
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    public final void a(String str) {
        if (!str.endsWith("s3-accelerate.amazonaws.com")) {
            super.a(str);
            if (!str.endsWith("s3.amazonaws.com")) {
                this.h = AwsHostNameUtils.a(this.f6532a.getHost(), "s3");
                return;
            }
            return;
        }
        throw new IllegalStateException("To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());");
    }
}
