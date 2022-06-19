package com.amazonaws.services.p101s3;

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
import com.amazonaws.services.p101s3.internal.AWSS3V4Signer;
import com.amazonaws.services.p101s3.internal.BucketNameUtils;
import com.amazonaws.services.p101s3.internal.CompleteMultipartUploadRetryCondition;
import com.amazonaws.services.p101s3.internal.DigestValidationInputStream;
import com.amazonaws.services.p101s3.internal.InputSubstream;
import com.amazonaws.services.p101s3.internal.MD5DigestCalculatingInputStream;
import com.amazonaws.services.p101s3.internal.ObjectExpirationHeaderHandler;
import com.amazonaws.services.p101s3.internal.RepeatableFileInputStream;
import com.amazonaws.services.p101s3.internal.ResponseHeaderHandlerChain;
import com.amazonaws.services.p101s3.internal.S3ErrorResponseHandler;
import com.amazonaws.services.p101s3.internal.S3ExecutionContext;
import com.amazonaws.services.p101s3.internal.S3HttpUtils;
import com.amazonaws.services.p101s3.internal.S3MetadataResponseHandler;
import com.amazonaws.services.p101s3.internal.S3ObjectResponseHandler;
import com.amazonaws.services.p101s3.internal.S3RequesterChargedHeaderHandler;
import com.amazonaws.services.p101s3.internal.S3Signer;
import com.amazonaws.services.p101s3.internal.S3VersionHeaderHandler;
import com.amazonaws.services.p101s3.internal.S3XmlResponseHandler;
import com.amazonaws.services.p101s3.internal.ServerSideEncryptionHeaderHandler;
import com.amazonaws.services.p101s3.internal.ServiceUtils;
import com.amazonaws.services.p101s3.metrics.S3ServiceMetric;
import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.AccessControlList;
import com.amazonaws.services.p101s3.model.AmazonS3Exception;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p101s3.model.CreateBucketRequest;
import com.amazonaws.services.p101s3.model.GeneratePresignedUrlRequest;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.Grant;
import com.amazonaws.services.p101s3.model.Grantee;
import com.amazonaws.services.p101s3.model.HeadBucketRequest;
import com.amazonaws.services.p101s3.model.HeadBucketResult;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
import com.amazonaws.services.p101s3.model.ObjectTagging;
import com.amazonaws.services.p101s3.model.Permission;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.PutObjectResult;
import com.amazonaws.services.p101s3.model.ResponseHeaderOverrides;
import com.amazonaws.services.p101s3.model.S3AccelerateUnsupported;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.S3ObjectInputStream;
import com.amazonaws.services.p101s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.p101s3.model.SSECustomerKey;
import com.amazonaws.services.p101s3.model.Tag;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
import com.amazonaws.services.p101s3.model.transform.BucketConfigurationXmlFactory;
import com.amazonaws.services.p101s3.model.transform.HeadBucketResultHandler;
import com.amazonaws.services.p101s3.model.transform.RequestPaymentConfigurationXmlFactory;
import com.amazonaws.services.p101s3.model.transform.RequestXmlFactory;
import com.amazonaws.services.p101s3.model.transform.Unmarshallers;
import com.amazonaws.services.p101s3.model.transform.XmlResponsesSaxParser;
import com.amazonaws.services.p101s3.util.Mimetypes;
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
/* renamed from: com.amazonaws.services.s3.AmazonS3Client */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3Client.class */
public class AmazonS3Client extends AmazonWebServiceClient implements AmazonS3 {

    /* renamed from: i */
    private static Log f12291i = LogFactory.m38584a(AmazonS3Client.class);

    /* renamed from: l */
    private static final BucketConfigurationXmlFactory f12292l = new BucketConfigurationXmlFactory();

    /* renamed from: m */
    private static final RequestPaymentConfigurationXmlFactory f12293m = new RequestPaymentConfigurationXmlFactory();

    /* renamed from: p */
    private static final Map<String, String> f12294p = Collections.synchronizedMap(new LinkedHashMap<String, String>(VastError.ERROR_CODE_GENERAL_WRAPPER, 1.1f, true) { // from class: com.amazonaws.services.s3.AmazonS3Client.1
        @Override // java.util.LinkedHashMap
        protected final boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 300;
        }
    });

    /* renamed from: g */
    protected S3ClientOptions f12295g;

    /* renamed from: h */
    volatile String f12296h;

    /* renamed from: j */
    private final S3ErrorResponseHandler f12297j;

    /* renamed from: k */
    private final S3XmlResponseHandler<Void> f12298k;

    /* renamed from: n */
    private final AWSCredentialsProvider f12299n;

    /* renamed from: o */
    private int f12300o;

    /* renamed from: q */
    private final CompleteMultipartUploadRetryCondition f12301q;

    static {
        AwsSdkMetrics.addAll(Arrays.asList(S3ServiceMetric.m38300a()));
        SignerFactory.m38654a("S3SignerType", S3Signer.class);
        SignerFactory.m38654a("AWSS3V4SignerType", AWSS3V4Signer.class);
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
        this.f12297j = new S3ErrorResponseHandler();
        this.f12298k = new S3XmlResponseHandler<>(null);
        this.f12295g = new S3ClientOptions();
        this.f12300o = 1024;
        this.f12301q = new CompleteMultipartUploadRetryCondition();
        this.f12299n = aWSCredentialsProvider;
        m38457d();
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        super(clientConfiguration, new UrlHttpClient(clientConfiguration), requestMetricCollector);
        this.f12297j = new S3ErrorResponseHandler();
        this.f12298k = new S3XmlResponseHandler<>(null);
        this.f12295g = new S3ClientOptions();
        this.f12300o = 1024;
        this.f12301q = new CompleteMultipartUploadRetryCondition();
        this.f12299n = aWSCredentialsProvider;
        m38457d();
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region) {
        this(aWSCredentialsProvider, region, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, region, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.f12297j = new S3ErrorResponseHandler();
        this.f12298k = new S3XmlResponseHandler<>(null);
        this.f12295g = new S3ClientOptions();
        this.f12300o = 1024;
        this.f12301q = new CompleteMultipartUploadRetryCondition();
        this.f12299n = aWSCredentialsProvider;
        if (aWSCredentialsProvider != null) {
            if (region == null) {
                throw new IllegalArgumentException("Region cannot be null. Region is required to sign the request");
            }
            this.f11942b = clientConfiguration;
            this.f11946f = "s3";
            mo38468a("s3.amazonaws.com");
            mo38472a(region);
            HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
            this.f11944d.addAll(handlerChainFactory.m38635a("/com/amazonaws/services/s3/request.handlers", RequestHandler.class));
            this.f11944d.addAll(handlerChainFactory.m38635a("/com/amazonaws/services/s3/request.handler2s", RequestHandler2.class));
            Log log = f12291i;
            log.mo38593b("initialized with endpoint = " + this.f11941a);
            return;
        }
        throw new IllegalArgumentException("Credentials cannot be null. Credentials is required to sign the request");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* renamed from: a */
    private static long m38469a(InputStream inputStream) {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        inputStream.mark(-1);
        ?? r0 = 0;
        while (true) {
            try {
                char c = r0;
                int read = inputStream.read(bArr);
                if (read == -1) {
                    inputStream.reset();
                    return c;
                }
                r0 = c + read;
            } catch (IOException e) {
                throw new AmazonClientException("Could not calculate content length.", e);
            }
        }
    }

    /* renamed from: a */
    private <X extends AmazonWebServiceRequest> Request<X> m38466a(String str, String str2, X x, HttpMethodName httpMethodName) {
        return m38465a(str, str2, x, httpMethodName, null);
    }

    /* renamed from: a */
    private <X extends AmazonWebServiceRequest> Request<X> m38465a(String str, String str2, X x, HttpMethodName httpMethodName, URI uri) {
        DefaultRequest defaultRequest = new DefaultRequest(x, "Amazon S3");
        URI uri2 = uri;
        if (this.f12295g.f12309c) {
            uri2 = uri;
            if (!(defaultRequest.mo38720a() instanceof S3AccelerateUnsupported)) {
                uri2 = this.f12295g.f12310d ? RuntimeHttpUtils.m38233a("s3-accelerate.dualstack.amazonaws.com", this.f11942b) : RuntimeHttpUtils.m38233a("s3-accelerate.amazonaws.com", this.f11942b);
            }
        }
        defaultRequest.mo38718a(httpMethodName);
        m38477a(defaultRequest, str, str2, uri2);
        return defaultRequest;
    }

    @Deprecated
    /* renamed from: a */
    private static S3Signer m38478a(Request<?> request, String str, String str2) {
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
        return new S3Signer(request.mo38706e().toString(), sb.toString());
    }

    /* renamed from: a */
    private <X, Y extends AmazonWebServiceRequest> X m38483a(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, String str, String str2) {
        AWSS3V4Signer aWSS3V4Signer;
        AmazonWebServiceRequest mo38720a = request.mo38720a();
        ExecutionContext mo38485a = mo38485a(mo38720a);
        AWSRequestMetrics aWSRequestMetrics = mo38485a.f12056a;
        request.mo38717a(aWSRequestMetrics);
        aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.ClientExecuteTime);
        Response<?> response = null;
        Response<?> response2 = null;
        try {
            try {
                request.mo38719a(this.f11945e);
                if (!request.mo38711b().containsKey("Content-Type")) {
                    request.mo38714a("Content-Type", Mimetypes.MIMETYPE_OCTET_STREAM);
                }
                if (str != null && !(request.mo38720a() instanceof CreateBucketRequest) && m38484a((Request<?>) request)) {
                    Map<String, String> map = f12294p;
                    String str3 = map.get(str);
                    String str4 = str3;
                    if (str3 == null) {
                        if (f12291i.mo38597a()) {
                            Log log = f12291i;
                            StringBuilder sb = new StringBuilder("Bucket region cache doesn't have an entry for ");
                            sb.append(str);
                            sb.append(". Trying to get bucket region from Amazon S3.");
                            log.mo38593b(sb.toString());
                        }
                        String m38460b = m38460b(str);
                        str4 = m38460b;
                        if (m38460b != null) {
                            map.put(str, m38460b);
                            str4 = m38460b;
                        }
                    }
                    if (f12291i.mo38597a()) {
                        Log log2 = f12291i;
                        StringBuilder sb2 = new StringBuilder("Region for ");
                        sb2.append(str);
                        sb2.append(" is ");
                        sb2.append(str4);
                        log2.mo38593b(sb2.toString());
                    }
                }
                AWSCredentials mo38581a = this.f12299n.mo38581a();
                if (mo38720a.getRequestCredentials() != null) {
                    mo38581a = mo38720a.getRequestCredentials();
                }
                Signer a = m38729a(this.f12295g.f12309c ? this.f11941a : request.mo38705f());
                if (!((this.f11942b == null || this.f11942b.getSignerOverride() == null) ? false : true)) {
                    if ((a instanceof AWSS3V4Signer) && m38484a((Request<?>) request)) {
                        String str5 = this.f12296h == null ? f12294p.get(str) : this.f12296h;
                        if (str5 != null) {
                            m38477a((Request<?>) request, str, str2, RuntimeHttpUtils.m38233a(RegionUtils.m38498a(str5).m38506b("s3"), this.f11942b));
                            AWSS3V4Signer aWSS3V4Signer2 = (AWSS3V4Signer) a;
                            m38471a((AWSS3V4Signer) a, str5);
                            aWSS3V4Signer = aWSS3V4Signer2;
                        } else if (request.mo38720a() instanceof GeneratePresignedUrlRequest) {
                            aWSS3V4Signer = m38478a((Request<?>) request, str, str2);
                        }
                        mo38485a.mo38415a(aWSS3V4Signer);
                        mo38485a.f12059d = mo38581a;
                        Response<?> m38630a = this.f11943c.m38630a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) this.f12297j, mo38485a);
                        response = m38630a;
                        response2 = m38630a;
                        X x = (X) m38630a.f11966a;
                        m38732a(aWSRequestMetrics, (Request<?>) request, m38630a);
                        return x;
                    }
                    String c = m38724c() == null ? this.f12296h == null ? f12294p.get(str) : this.f12296h : m38724c();
                    if (c != null) {
                        AWSS3V4Signer aWSS3V4Signer3 = new AWSS3V4Signer();
                        m38471a(aWSS3V4Signer3, c);
                        aWSS3V4Signer = aWSS3V4Signer3;
                        mo38485a.mo38415a(aWSS3V4Signer);
                        mo38485a.f12059d = mo38581a;
                        Response<?> m38630a2 = this.f11943c.m38630a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) this.f12297j, mo38485a);
                        response = m38630a2;
                        response2 = m38630a2;
                        X x2 = (X) m38630a2.f11966a;
                        m38732a(aWSRequestMetrics, (Request<?>) request, m38630a2);
                        return x2;
                    }
                }
                aWSS3V4Signer = a;
                if (a instanceof S3Signer) {
                    aWSS3V4Signer = m38478a((Request<?>) request, str, str2);
                }
                mo38485a.mo38415a(aWSS3V4Signer);
                mo38485a.f12059d = mo38581a;
                Response<?> m38630a22 = this.f11943c.m38630a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) this.f12297j, mo38485a);
                response = m38630a22;
                response2 = m38630a22;
                X x22 = (X) m38630a22.f11966a;
                m38732a(aWSRequestMetrics, (Request<?>) request, m38630a22);
                return x22;
            } catch (AmazonS3Exception e) {
                if (e.getStatusCode() == 301) {
                    Response<?> response3 = response2;
                    if (e.getAdditionalDetails() != null) {
                        Response<?> response4 = response2;
                        String str6 = e.getAdditionalDetails().get("x-amz-bucket-region");
                        Response<?> response5 = response2;
                        f12294p.put(str, str6);
                        Response<?> response6 = response2;
                        Response<?> response7 = response2;
                        StringBuilder sb3 = new StringBuilder("The bucket is in this region: ");
                        Response<?> response8 = response2;
                        sb3.append(str6);
                        Response<?> response9 = response2;
                        sb3.append(". Please use this region to retry the request");
                        Response<?> response10 = response2;
                        e.setErrorMessage(sb3.toString());
                    }
                }
                response = response2;
                throw e;
            }
        } catch (Throwable th) {
            m38732a(aWSRequestMetrics, (Request<?>) request, response);
            throw th;
        }
    }

    /* renamed from: a */
    private static String m38470a(ObjectTagging objectTagging) {
        if (objectTagging == null || objectTagging.getTagSet() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Tag> it2 = objectTagging.getTagSet().iterator();
        while (it2.hasNext()) {
            Tag next = it2.next();
            sb.append(S3HttpUtils.m38413a(next.getKey()));
            sb.append('=');
            sb.append(S3HttpUtils.m38413a(next.getValue()));
            if (it2.hasNext()) {
                sb.append("&");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m38467a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    private static URI m38464a(URI uri, String str) {
        try {
            return new URI(uri.getScheme() + "://" + str + "." + uri.getAuthority());
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid bucket name: ".concat(String.valueOf(str)), e);
        }
    }

    /* renamed from: a */
    private static void m38482a(Request<? extends AmazonWebServiceRequest> request, AccessControlList accessControlList) {
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
                request.mo38714a(permission.getHeaderName(), sb.toString());
            }
        }
    }

    /* renamed from: a */
    private static void m38481a(Request<?> request, ObjectMetadata objectMetadata) {
        Map<String, Object> rawMetadata = objectMetadata.getRawMetadata();
        if (rawMetadata.get("x-amz-server-side-encryption-aws-kms-key-id") == null || ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION.equals(rawMetadata.get("x-amz-server-side-encryption"))) {
            if (rawMetadata != null) {
                for (Map.Entry<String, Object> entry : rawMetadata.entrySet()) {
                    request.mo38714a(entry.getKey(), entry.getValue().toString());
                }
            }
            Date httpExpiresDate = objectMetadata.getHttpExpiresDate();
            if (httpExpiresDate != null) {
                request.mo38714a("Expires", DateUtils.m38250b(httpExpiresDate));
            }
            Map<String, String> userMetadata = objectMetadata.getUserMetadata();
            if (userMetadata == null) {
                return;
            }
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
                    request.mo38714a("x-amz-meta-".concat(String.valueOf(str)), str2);
                }
            }
            return;
        }
        throw new IllegalArgumentException("If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION");
    }

    /* renamed from: a */
    private static void m38480a(Request<?> request, SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        if (sSEAwsKeyManagementParams != null) {
            m38462b(request, "x-amz-server-side-encryption", sSEAwsKeyManagementParams.getEncryption());
            m38462b(request, "x-amz-server-side-encryption-aws-kms-key-id", sSEAwsKeyManagementParams.getAwsKmsKeyId());
        }
    }

    /* renamed from: a */
    private static void m38479a(Request<?> request, SSECustomerKey sSECustomerKey) {
        if (sSECustomerKey == null) {
            return;
        }
        m38462b(request, "x-amz-server-side-encryption-customer-algorithm", sSECustomerKey.getAlgorithm());
        m38462b(request, "x-amz-server-side-encryption-customer-key", sSECustomerKey.getKey());
        m38462b(request, "x-amz-server-side-encryption-customer-key-MD5", sSECustomerKey.getMd5());
        if (sSECustomerKey.getKey() == null || sSECustomerKey.getMd5() != null) {
            return;
        }
        request.mo38714a("x-amz-server-side-encryption-customer-key-MD5", Md5Utils.m38237a(Base64.decode(sSECustomerKey.getKey())));
    }

    /* renamed from: a */
    private void m38477a(Request<?> request, String str, String str2, URI uri) {
        URI uri2 = uri;
        if (uri == null) {
            uri2 = this.f11941a;
        }
        if (m38459b(uri2, str)) {
            f12291i.mo38593b("Using virtual style addressing. Endpoint = ".concat(String.valueOf(uri2)));
            request.mo38713a(m38464a(uri2, str));
            request.mo38715a(m38458c(str2));
        } else {
            f12291i.mo38593b("Using path style addressing. Endpoint = ".concat(String.valueOf(uri2)));
            request.mo38713a(uri2);
            if (str != null) {
                request.mo38715a(m38467a(str, str2));
            }
        }
        Log log = f12291i;
        log.mo38593b("Key: " + str2 + "; Request: " + request);
    }

    /* renamed from: a */
    private static void m38476a(Request<?> request, String str, Date date) {
        if (date != null) {
            request.mo38714a(str, ServiceUtils.m38401b(date));
        }
    }

    /* renamed from: a */
    private static void m38475a(Request<?> request, String str, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        request.mo38714a(str, ServiceUtils.m38403a(list));
    }

    /* renamed from: a */
    private static void m38474a(Request<?> request, boolean z) {
        if (z) {
            request.mo38714a("x-amz-request-payer", "requester");
        }
    }

    /* renamed from: a */
    private static void m38473a(ProgressListenerCallbackExecutor progressListenerCallbackExecutor, int i) {
        if (progressListenerCallbackExecutor == null) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.setEventCode(i);
        progressListenerCallbackExecutor.m38642a(progressEvent);
    }

    /* renamed from: a */
    private void m38471a(AWSS3V4Signer aWSS3V4Signer, String str) {
        aWSS3V4Signer.mo38655a(m38727b());
        aWSS3V4Signer.mo38656b(str);
    }

    /* renamed from: a */
    private boolean m38484a(Request<?> request) {
        if (request.mo38705f().getHost().endsWith("s3.amazonaws.com")) {
            String c = m38724c();
            String str = c;
            if (c == null) {
                str = this.f12296h;
            }
            return str == null;
        }
        return false;
    }

    /* renamed from: b */
    private static ByteArrayInputStream m38461b(InputStream inputStream) {
        int i = 262144;
        byte[] bArr = new byte[262144];
        int i2 = 0;
        while (i > 0) {
            try {
                int read = inputStream.read(bArr, i2, i);
                if (read == -1) {
                    break;
                }
                i2 += read;
                i -= read;
            } catch (IOException e) {
                throw new AmazonClientException("Failed to read from inputstream", e);
            }
        }
        if (inputStream.read() == -1) {
            inputStream.close();
            return new ByteArrayInputStream(bArr, 0, i2);
        }
        throw new AmazonClientException("Input stream exceeds 256k buffer.");
    }

    /* renamed from: b */
    private String m38460b(String str) {
        String str2 = null;
        try {
            str2 = ((HeadBucketResult) m38483a(m38465a(str, null, new HeadBucketRequest(str), HttpMethodName.HEAD, new URI("https://s3-us-west-1.amazonaws.com")), new HeadBucketResultHandler(), str, (String) null)).getBucketRegion();
        } catch (AmazonS3Exception e) {
            if (e.getAdditionalDetails() != null) {
                str2 = e.getAdditionalDetails().get("x-amz-bucket-region");
            }
        } catch (URISyntaxException e2) {
            f12291i.mo38587d("Error while creating URI");
        }
        if (str2 == null && f12291i.mo38597a()) {
            f12291i.mo38593b("Not able to derive region of the " + str + " from the HEAD Bucket requests.");
        }
        return str2;
    }

    /* renamed from: b */
    private static void m38463b(Request<?> request) {
        request.mo38714a("Content-Length", "0");
    }

    /* renamed from: b */
    private static void m38462b(Request<?> request, String str, String str2) {
        if (str2 != null) {
            request.mo38714a(str, str2);
        }
    }

    /* renamed from: b */
    private boolean m38459b(URI uri, String str) {
        return !this.f12295g.f12308b && BucketNameUtils.isDNSBucketName(str) && !m38456d(uri.getHost());
    }

    /* renamed from: c */
    private static String m38458c(String str) {
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
    /* renamed from: d */
    private void m38457d() {
        mo38468a("s3.amazonaws.com");
        this.f11946f = "s3";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f11944d.addAll(handlerChainFactory.m38635a("/com/amazonaws/services/s3/request.handlers", RequestHandler.class));
        this.f11944d.addAll(handlerChainFactory.m38635a("/com/amazonaws/services/s3/request.handler2s", RequestHandler2.class));
    }

    /* renamed from: d */
    private static boolean m38456d(String str) {
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
    /* renamed from: a */
    public final ExecutionContext mo38485a(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new S3ExecutionContext(this.f11944d, m38726b(amazonWebServiceRequest) || m38734a(), this);
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public CompleteMultipartUploadResult mo38448a(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.m38213a(completeMultipartUploadRequest, "The request parameter must be specified when completing a multipart upload");
        String bucketName = completeMultipartUploadRequest.getBucketName();
        String key = completeMultipartUploadRequest.getKey();
        String uploadId = completeMultipartUploadRequest.getUploadId();
        ValidationUtils.m38213a(bucketName, "The bucket name parameter must be specified when completing a multipart upload");
        ValidationUtils.m38213a(key, "The key parameter must be specified when completing a multipart upload");
        ValidationUtils.m38213a(uploadId, "The upload ID parameter must be specified when completing a multipart upload");
        ValidationUtils.m38213a(completeMultipartUploadRequest.getPartETags(), "The part ETags parameter must be specified when completing a multipart upload");
        int i = 0;
        while (true) {
            Request m38466a = m38466a(bucketName, key, (String) completeMultipartUploadRequest, HttpMethodName.POST);
            m38466a.mo38710b("uploadId", uploadId);
            m38474a(m38466a, completeMultipartUploadRequest.isRequesterPays());
            byte[] convertToXmlByteArray = RequestXmlFactory.convertToXmlByteArray(completeMultipartUploadRequest.getPartETags());
            m38466a.mo38714a("Content-Type", Mimetypes.MIMETYPE_XML);
            m38466a.mo38714a("Content-Length", String.valueOf(convertToXmlByteArray.length));
            m38466a.mo38716a(new ByteArrayInputStream(convertToXmlByteArray));
            XmlResponsesSaxParser.CompleteMultipartUploadHandler completeMultipartUploadHandler = (XmlResponsesSaxParser.CompleteMultipartUploadHandler) m38483a(m38466a, new ResponseHeaderHandlerChain(new Unmarshallers.CompleteMultipartUploadResultUnmarshaller(), new ServerSideEncryptionHeaderHandler(), new ObjectExpirationHeaderHandler(), new S3VersionHeaderHandler(), new S3RequesterChargedHeaderHandler()), bucketName, key);
            if (completeMultipartUploadHandler.getCompleteMultipartUploadResult() != null) {
                return completeMultipartUploadHandler.getCompleteMultipartUploadResult();
            }
            AmazonS3Exception amazonS3Exception = completeMultipartUploadHandler.getAmazonS3Exception();
            RetryPolicy retryPolicy = this.f11942b.getRetryPolicy();
            if (!((retryPolicy == null || retryPolicy.f12283a == null || retryPolicy == PredefinedRetryPolicies.f12275a) ? false : this.f12301q.mo38438a(amazonS3Exception, i))) {
                throw completeMultipartUploadHandler.getAmazonS3Exception();
            }
            i++;
        }
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public InitiateMultipartUploadResult mo38446a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.m38213a(initiateMultipartUploadRequest, "The request parameter must be specified when initiating a multipart upload");
        ValidationUtils.m38213a(initiateMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when initiating a multipart upload");
        ValidationUtils.m38213a(initiateMultipartUploadRequest.getKey(), "The key parameter must be specified when initiating a multipart upload");
        Request m38466a = m38466a(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), (String) initiateMultipartUploadRequest, HttpMethodName.POST);
        m38466a.mo38710b("uploads", null);
        if (initiateMultipartUploadRequest.getStorageClass() != null) {
            m38466a.mo38714a("x-amz-storage-class", initiateMultipartUploadRequest.getStorageClass().toString());
        }
        if (initiateMultipartUploadRequest.getRedirectLocation() != null) {
            m38466a.mo38714a("x-amz-website-redirect-location", initiateMultipartUploadRequest.getRedirectLocation());
        }
        if (initiateMultipartUploadRequest.getAccessControlList() != null) {
            m38482a(m38466a, initiateMultipartUploadRequest.getAccessControlList());
        } else if (initiateMultipartUploadRequest.getCannedACL() != null) {
            m38466a.mo38714a("x-amz-acl", initiateMultipartUploadRequest.getCannedACL().toString());
        }
        if (initiateMultipartUploadRequest.objectMetadata != null) {
            m38481a(m38466a, initiateMultipartUploadRequest.objectMetadata);
        }
        m38462b(m38466a, "x-amz-tagging", m38470a(initiateMultipartUploadRequest.getTagging()));
        m38474a(m38466a, initiateMultipartUploadRequest.isRequesterPays());
        m38479a(m38466a, initiateMultipartUploadRequest.getSSECustomerKey());
        m38480a(m38466a, initiateMultipartUploadRequest.getSSEAwsKeyManagementParams());
        m38463b(m38466a);
        m38466a.mo38716a(new ByteArrayInputStream(new byte[0]));
        return (InitiateMultipartUploadResult) m38483a(m38466a, new ResponseHeaderHandlerChain(new Unmarshallers.InitiateMultipartUploadResultUnmarshaller(), new ServerSideEncryptionHeaderHandler()), initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey());
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public PutObjectResult mo38445a(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException {
        ByteArrayInputStream byteArrayInputStream;
        ValidationUtils.m38213a(putObjectRequest, "The PutObjectRequest parameter must be specified when uploading an object");
        String bucketName = putObjectRequest.getBucketName();
        String key = putObjectRequest.getKey();
        ObjectMetadata metadata = putObjectRequest.getMetadata();
        RepeatableFileInputStream inputStream = putObjectRequest.getInputStream();
        ProgressListenerCallbackExecutor m38641a = ProgressListenerCallbackExecutor.m38641a(putObjectRequest.getGeneralProgressListener());
        ObjectMetadata objectMetadata = metadata;
        if (metadata == null) {
            objectMetadata = new ObjectMetadata();
        }
        ValidationUtils.m38213a(bucketName, "The bucket name parameter must be specified when uploading an object");
        ValidationUtils.m38213a(key, "The key parameter must be specified when uploading an object");
        boolean m38407a = ServiceUtils.m38407a(putObjectRequest, this.f12295g);
        if (putObjectRequest.getFile() != null) {
            File file = putObjectRequest.getFile();
            objectMetadata.setContentLength(file.length());
            boolean z = objectMetadata.getContentMD5() == null;
            if (objectMetadata.getContentType() == null) {
                objectMetadata.setContentType(Mimetypes.getInstance().getMimetype(file));
            }
            if (z && !m38407a) {
                try {
                    objectMetadata.setContentMD5(Md5Utils.m38239a(file));
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
        Request m38466a = m38466a(bucketName, key, (String) putObjectRequest, HttpMethodName.PUT);
        if (putObjectRequest.getAccessControlList() != null) {
            m38482a(m38466a, putObjectRequest.getAccessControlList());
        } else if (putObjectRequest.getCannedAcl() != null) {
            m38466a.mo38714a("x-amz-acl", putObjectRequest.getCannedAcl().toString());
        }
        if (putObjectRequest.getStorageClass() != null) {
            m38466a.mo38714a("x-amz-storage-class", putObjectRequest.getStorageClass());
        }
        ByteArrayInputStream byteArrayInputStream2 = inputStream;
        if (putObjectRequest.getRedirectLocation() != null) {
            m38466a.mo38714a("x-amz-website-redirect-location", putObjectRequest.getRedirectLocation());
            byteArrayInputStream2 = inputStream;
            if (inputStream == null) {
                m38463b(m38466a);
                byteArrayInputStream2 = new ByteArrayInputStream(new byte[0]);
            }
        }
        m38462b(m38466a, "x-amz-tagging", m38470a(putObjectRequest.getTagging()));
        m38474a(m38466a, putObjectRequest.isRequesterPays());
        m38479a(m38466a, putObjectRequest.getSSECustomerKey());
        Long l = (Long) objectMetadata.getRawMetadataValue("Content-Length");
        if (l != null) {
            long longValue = l.longValue();
            byteArrayInputStream = byteArrayInputStream2;
            if (longValue >= 0) {
                byteArrayInputStream = new LengthCheckInputStream(byteArrayInputStream2, longValue, false);
                m38466a.mo38714a("Content-Length", l.toString());
            }
        } else if (!byteArrayInputStream2.markSupported()) {
            f12291i.mo38587d("No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors.");
            ByteArrayInputStream m38461b = m38461b(byteArrayInputStream2);
            m38466a.mo38714a("Content-Length", String.valueOf(m38461b.available()));
            m38466a.mo38698m();
            byteArrayInputStream = m38461b;
        } else {
            m38466a.mo38714a("Content-Length", String.valueOf(m38469a(byteArrayInputStream2)));
            byteArrayInputStream = byteArrayInputStream2;
        }
        ProgressReportingInputStream progressReportingInputStream = byteArrayInputStream;
        if (m38641a != null) {
            ProgressReportingInputStream progressReportingInputStream2 = new ProgressReportingInputStream(byteArrayInputStream, m38641a);
            progressReportingInputStream2.m38638a(this.f12300o);
            m38473a(m38641a, 2);
            progressReportingInputStream = progressReportingInputStream2;
        }
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream = progressReportingInputStream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream2 = null;
        if (objectMetadata.getContentMD5() == null) {
            mD5DigestCalculatingInputStream = progressReportingInputStream;
            mD5DigestCalculatingInputStream2 = null;
            if (!m38407a) {
                mD5DigestCalculatingInputStream2 = new MD5DigestCalculatingInputStream(progressReportingInputStream);
                mD5DigestCalculatingInputStream = mD5DigestCalculatingInputStream2;
            }
        }
        if (objectMetadata.getContentType() == null) {
            objectMetadata.setContentType(Mimetypes.MIMETYPE_OCTET_STREAM);
        }
        m38481a(m38466a, objectMetadata);
        m38480a(m38466a, putObjectRequest.getSSEAwsKeyManagementParams());
        m38466a.mo38716a(mD5DigestCalculatingInputStream);
        try {
            try {
                ObjectMetadata objectMetadata2 = (ObjectMetadata) m38483a(m38466a, new S3MetadataResponseHandler(), bucketName, key);
                try {
                    mD5DigestCalculatingInputStream.close();
                } catch (AbortedException e3) {
                } catch (Exception e4) {
                    f12291i.mo38595a("Unable to cleanly close input stream: " + e4.getMessage(), e4);
                }
                String contentMD5 = objectMetadata.getContentMD5();
                if (mD5DigestCalculatingInputStream2 != null) {
                    contentMD5 = BinaryUtils.m38257b(mD5DigestCalculatingInputStream2.f12333a.digest());
                }
                if (objectMetadata2 != null && contentMD5 != null && !m38407a && !Arrays.equals(BinaryUtils.m38258b(contentMD5), BinaryUtils.m38261a(objectMetadata2.getETag()))) {
                    m38473a(m38641a, 8);
                    throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
                }
                m38473a(m38641a, 4);
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
            } catch (Throwable th) {
                try {
                    mD5DigestCalculatingInputStream.close();
                } catch (AbortedException e5) {
                } catch (Exception e6) {
                    f12291i.mo38595a("Unable to cleanly close input stream: " + e6.getMessage(), e6);
                }
                throw th;
            }
        } catch (AmazonClientException e7) {
            m38473a(m38641a, 8);
            throw e7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public S3Object mo38447a(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException {
        InputStream inputStream;
        ValidationUtils.m38213a(getObjectRequest, "The GetObjectRequest parameter must be specified when requesting an object");
        ValidationUtils.m38213a(getObjectRequest.getBucketName(), "The bucket name parameter must be specified when requesting an object");
        ValidationUtils.m38213a(getObjectRequest.getKey(), "The key parameter must be specified when requesting an object");
        Request m38466a = m38466a(getObjectRequest.getBucketName(), getObjectRequest.getKey(), (String) getObjectRequest, HttpMethodName.GET);
        if (getObjectRequest.getVersionId() != null) {
            m38466a.mo38710b("versionId", getObjectRequest.getVersionId());
        }
        long[] range = getObjectRequest.getRange();
        if (range != null) {
            String str = "bytes=" + Long.toString(range[0]) + VerificationLanguage.REGION_PREFIX;
            String str2 = str;
            if (range[1] >= 0) {
                str2 = str + Long.toString(range[1]);
            }
            m38466a.mo38714a("Range", str2);
        }
        m38474a(m38466a, getObjectRequest.isRequesterPays());
        ResponseHeaderOverrides responseHeaders = getObjectRequest.getResponseHeaders();
        if (responseHeaders != null) {
            if (responseHeaders.getCacheControl() != null) {
                m38466a.mo38710b(ResponseHeaderOverrides.RESPONSE_HEADER_CACHE_CONTROL, responseHeaders.getCacheControl());
            }
            if (responseHeaders.getContentDisposition() != null) {
                m38466a.mo38710b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_DISPOSITION, responseHeaders.getContentDisposition());
            }
            if (responseHeaders.getContentEncoding() != null) {
                m38466a.mo38710b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_ENCODING, responseHeaders.getContentEncoding());
            }
            if (responseHeaders.getContentLanguage() != null) {
                m38466a.mo38710b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_LANGUAGE, responseHeaders.getContentLanguage());
            }
            if (responseHeaders.getContentType() != null) {
                m38466a.mo38710b(ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_TYPE, responseHeaders.getContentType());
            }
            if (responseHeaders.getExpires() != null) {
                m38466a.mo38710b(ResponseHeaderOverrides.RESPONSE_HEADER_EXPIRES, responseHeaders.getExpires());
            }
        }
        m38476a(m38466a, "If-Modified-Since", getObjectRequest.getModifiedSinceConstraint());
        m38476a(m38466a, "If-Unmodified-Since", getObjectRequest.getUnmodifiedSinceConstraint());
        m38475a(m38466a, "If-Match", getObjectRequest.getMatchingETagConstraints());
        m38475a(m38466a, "If-None-Match", getObjectRequest.getNonmatchingETagConstraints());
        m38479a(m38466a, getObjectRequest.getSSECustomerKey());
        ProgressListenerCallbackExecutor m38641a = ProgressListenerCallbackExecutor.m38641a(getObjectRequest.getGeneralProgressListener());
        try {
            S3Object s3Object = (S3Object) m38483a(m38466a, new S3ObjectResponseHandler(), getObjectRequest.getBucketName(), getObjectRequest.getKey());
            s3Object.setBucketName(getObjectRequest.getBucketName());
            s3Object.setKey(getObjectRequest.getKey());
            ServiceClientHolderInputStream serviceClientHolderInputStream = new ServiceClientHolderInputStream(s3Object.getObjectContent(), this);
            ServiceClientHolderInputStream serviceClientHolderInputStream2 = serviceClientHolderInputStream;
            if (m38641a != null) {
                ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(serviceClientHolderInputStream, m38641a);
                progressReportingInputStream.f12044a = true;
                progressReportingInputStream.m38638a(this.f12300o);
                m38473a(m38641a, 2);
                serviceClientHolderInputStream2 = progressReportingInputStream;
            }
            if (ServiceUtils.m38407a(getObjectRequest, this.f12295g) || ServiceUtils.m38406a(s3Object.getObjectMetadata(), this.f12295g)) {
                inputStream = new LengthCheckInputStream(serviceClientHolderInputStream2, s3Object.getObjectMetadata().getContentLength(), true);
            } else {
                String eTag = s3Object.getObjectMetadata().getETag();
                inputStream = serviceClientHolderInputStream2;
                if (eTag != null) {
                    inputStream = serviceClientHolderInputStream2;
                    if (!ServiceUtils.m38400c(eTag)) {
                        try {
                            inputStream = new DigestValidationInputStream(serviceClientHolderInputStream2, MessageDigest.getInstance("MD5"), BinaryUtils.m38261a(s3Object.getObjectMetadata().getETag()));
                        } catch (NoSuchAlgorithmException e) {
                            f12291i.mo38592b("No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity.", e);
                            inputStream = serviceClientHolderInputStream2;
                        }
                    }
                }
            }
            s3Object.setObjectContent(new S3ObjectInputStream(inputStream));
            return s3Object;
        } catch (AmazonS3Exception e2) {
            if (e2.getStatusCode() == 412 || e2.getStatusCode() == 304) {
                m38473a(m38641a, 16);
                return null;
            }
            m38473a(m38641a, 8);
            throw e2;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.amazonaws.services.p101s3.AmazonS3, com.amazonaws.services.p101s3.internal.S3DirectSpi
    /* renamed from: a */
    public UploadPartResult mo38419a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        InputSubstream inputSubstream;
        ValidationUtils.m38213a(uploadPartRequest, "The request parameter must be specified when uploading a part");
        String bucketName = uploadPartRequest.getBucketName();
        String key = uploadPartRequest.getKey();
        String uploadId = uploadPartRequest.getUploadId();
        int partNumber = uploadPartRequest.getPartNumber();
        long partSize = uploadPartRequest.getPartSize();
        ValidationUtils.m38213a(bucketName, "The bucket name parameter must be specified when uploading a part");
        ValidationUtils.m38213a(key, "The key parameter must be specified when uploading a part");
        ValidationUtils.m38213a(uploadId, "The upload ID parameter must be specified when uploading a part");
        ValidationUtils.m38213a(Integer.valueOf(partNumber), "The part number parameter must be specified when uploading a part");
        ValidationUtils.m38213a(Long.valueOf(partSize), "The part size parameter must be specified when uploading a part");
        Request m38466a = m38466a(bucketName, key, (String) uploadPartRequest, HttpMethodName.PUT);
        m38466a.mo38710b("uploadId", uploadId);
        m38466a.mo38710b("partNumber", Integer.toString(partNumber));
        ObjectMetadata objectMetadata = uploadPartRequest.getObjectMetadata();
        if (objectMetadata != null) {
            m38481a(m38466a, objectMetadata);
        }
        m38462b(m38466a, "Content-MD5", uploadPartRequest.getMd5Digest());
        m38466a.mo38714a("Content-Length", Long.toString(partSize));
        m38474a(m38466a, uploadPartRequest.isRequesterPays());
        m38479a(m38466a, uploadPartRequest.getSSECustomerKey());
        if (uploadPartRequest.getInputStream() != null) {
            inputSubstream = uploadPartRequest.getInputStream();
        } else if (uploadPartRequest.getFile() == null) {
            throw new IllegalArgumentException("A File or InputStream must be specified when uploading part");
        } else {
            try {
                inputSubstream = new InputSubstream(new RepeatableFileInputStream(uploadPartRequest.getFile()), uploadPartRequest.getFileOffset(), partSize, true);
            } catch (FileNotFoundException e) {
                throw new IllegalArgumentException("The specified file doesn't exist", e);
            }
        }
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream = inputSubstream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream2 = null;
        if (uploadPartRequest.getMd5Digest() == null) {
            mD5DigestCalculatingInputStream = inputSubstream;
            mD5DigestCalculatingInputStream2 = null;
            if (!ServiceUtils.m38407a(uploadPartRequest, this.f12295g)) {
                mD5DigestCalculatingInputStream2 = new MD5DigestCalculatingInputStream(inputSubstream);
                mD5DigestCalculatingInputStream = mD5DigestCalculatingInputStream2;
            }
        }
        ProgressListenerCallbackExecutor m38641a = ProgressListenerCallbackExecutor.m38641a(uploadPartRequest.getGeneralProgressListener());
        ProgressReportingInputStream progressReportingInputStream = mD5DigestCalculatingInputStream;
        if (m38641a != null) {
            progressReportingInputStream = new ProgressReportingInputStream(mD5DigestCalculatingInputStream, m38641a);
            progressReportingInputStream.m38638a(this.f12300o);
            m38473a(m38641a, 1024);
        }
        try {
            try {
                m38466a.mo38716a(progressReportingInputStream);
                ObjectMetadata objectMetadata2 = (ObjectMetadata) m38483a(m38466a, new S3MetadataResponseHandler(), bucketName, key);
                if (objectMetadata2 != null && mD5DigestCalculatingInputStream2 != null && !ServiceUtils.m38406a(objectMetadata2, this.f12295g) && !Arrays.equals(mD5DigestCalculatingInputStream2.f12333a.digest(), BinaryUtils.m38261a(objectMetadata2.getETag()))) {
                    throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
                }
                m38473a(m38641a, 2048);
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
                m38473a(m38641a, 4096);
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
    /* renamed from: a */
    public final void mo38472a(Region region) {
        super.mo38472a(region);
        this.f12296h = region.f12268a;
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public void mo38449a(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.m38213a(abortMultipartUploadRequest, "The request parameter must be specified when aborting a multipart upload");
        ValidationUtils.m38213a(abortMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when aborting a multipart upload");
        ValidationUtils.m38213a(abortMultipartUploadRequest.getKey(), "The key parameter must be specified when aborting a multipart upload");
        ValidationUtils.m38213a(abortMultipartUploadRequest.getUploadId(), "The upload ID parameter must be specified when aborting a multipart upload");
        String bucketName = abortMultipartUploadRequest.getBucketName();
        String key = abortMultipartUploadRequest.getKey();
        Request m38466a = m38466a(bucketName, key, (String) abortMultipartUploadRequest, HttpMethodName.DELETE);
        m38466a.mo38710b("uploadId", abortMultipartUploadRequest.getUploadId());
        m38474a(m38466a, abortMultipartUploadRequest.isRequesterPays());
        m38483a(m38466a, this.f12298k, bucketName, key);
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    /* renamed from: a */
    public final void mo38468a(String str) {
        if (!str.endsWith("s3-accelerate.amazonaws.com")) {
            super.mo38468a(str);
            if (str.endsWith("s3.amazonaws.com")) {
                return;
            }
            this.f12296h = AwsHostNameUtils.m38273a(this.f11941a.getHost(), "s3");
            return;
        }
        throw new IllegalStateException("To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());");
    }
}
