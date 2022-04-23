package com.amazonaws.services.p017s3;

import androidx.media2.session.MediaSessionImplBase;
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
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.regions.Region;
import com.amazonaws.services.p017s3.internal.AWSS3V4Signer;
import com.amazonaws.services.p017s3.internal.BucketNameUtils;
import com.amazonaws.services.p017s3.internal.Constants;
import com.amazonaws.services.p017s3.internal.DigestValidationInputStream;
import com.amazonaws.services.p017s3.internal.InputSubstream;
import com.amazonaws.services.p017s3.internal.MD5DigestCalculatingInputStream;
import com.amazonaws.services.p017s3.internal.ObjectExpirationHeaderHandler;
import com.amazonaws.services.p017s3.internal.RepeatableFileInputStream;
import com.amazonaws.services.p017s3.internal.ResponseHeaderHandlerChain;
import com.amazonaws.services.p017s3.internal.S3ErrorResponseHandler;
import com.amazonaws.services.p017s3.internal.S3ExecutionContext;
import com.amazonaws.services.p017s3.internal.S3MetadataResponseHandler;
import com.amazonaws.services.p017s3.internal.S3ObjectResponseHandler;
import com.amazonaws.services.p017s3.internal.S3Signer;
import com.amazonaws.services.p017s3.internal.S3XmlResponseHandler;
import com.amazonaws.services.p017s3.internal.ServerSideEncryptionHeaderHandler;
import com.amazonaws.services.p017s3.internal.ServiceUtils;
import com.amazonaws.services.p017s3.metrics.S3ServiceMetric;
import com.amazonaws.services.p017s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.AccessControlList;
import com.amazonaws.services.p017s3.model.AmazonS3Exception;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p017s3.model.GetObjectRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p017s3.model.ListPartsRequest;
import com.amazonaws.services.p017s3.model.ObjectMetadata;
import com.amazonaws.services.p017s3.model.PartListing;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.PutObjectResult;
import com.amazonaws.services.p017s3.model.ResponseHeaderOverrides;
import com.amazonaws.services.p017s3.model.S3Object;
import com.amazonaws.services.p017s3.model.S3ObjectInputStream;
import com.amazonaws.services.p017s3.model.SSECustomerKey;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.services.p017s3.model.UploadPartResult;
import com.amazonaws.services.p017s3.model.transform.BucketConfigurationXmlFactory;
import com.amazonaws.services.p017s3.model.transform.RequestPaymentConfigurationXmlFactory;
import com.amazonaws.services.p017s3.model.transform.RequestXmlFactory;
import com.amazonaws.services.p017s3.model.transform.XmlResponsesSaxParser;
import com.amazonaws.services.p017s3.util.Mimetypes;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.LengthCheckInputStream;
import com.amazonaws.util.Md5Utils;
import com.amazonaws.util.ServiceClientHolderInputStream;
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
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.AmazonS3Client */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3Client.class */
public class AmazonS3Client extends AmazonWebServiceClient implements AmazonS3 {
    public static Log log = LogFactory.getLog(AmazonS3Client.class);
    public final AWSCredentialsProvider awsCredentialsProvider;
    public S3ClientOptions clientOptions;
    public volatile String clientRegion;
    public final S3ErrorResponseHandler errorResponseHandler;
    public final S3XmlResponseHandler<Void> voidResponseHandler;

    static {
        AwsSdkMetrics.addAll(Arrays.asList(S3ServiceMetric.values()));
        SignerFactory.registerSigner("S3SignerType", S3Signer.class);
        SignerFactory.registerSigner("AWSS3V4SignerType", AWSS3V4Signer.class);
        new BucketConfigurationXmlFactory();
        new RequestPaymentConfigurationXmlFactory();
    }

    @Deprecated
    public AmazonS3Client() {
        this(new DefaultAWSCredentialsProviderChain());
    }

    public AmazonS3Client(AWSCredentials aWSCredentials) {
        this(aWSCredentials, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), clientConfiguration);
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider) {
        this(aWSCredentialsProvider, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.errorResponseHandler = new S3ErrorResponseHandler();
        this.voidResponseHandler = new S3XmlResponseHandler<>(null);
        this.clientOptions = new S3ClientOptions();
        this.awsCredentialsProvider = aWSCredentialsProvider;
        init();
    }

    public static void addAclHeaders(Request<? extends AmazonWebServiceRequest> request, AccessControlList accessControlList) {
        accessControlList.getGrants();
        throw null;
    }

    public static void addDateHeader(Request<?> request, String str, Date date) {
        if (date != null) {
            request.addHeader(str, ServiceUtils.formatRfc822Date(date));
        }
    }

    public static void addHeaderIfNotNull(Request<?> request, String str, String str2) {
        if (str2 != null) {
            request.addHeader(str, str2);
        }
    }

    public static void addResponseHeaderParameters(Request<?> request, ResponseHeaderOverrides responseHeaderOverrides) {
        if (responseHeaderOverrides != null) {
            responseHeaderOverrides.getCacheControl();
            throw null;
        }
    }

    public static void addStringListHeader(Request<?> request, String str, List<String> list) {
        if (list != null && !list.isEmpty()) {
            request.addHeader(str, ServiceUtils.join(list));
        }
    }

    public static void populateRequestMetadata(Request<?> request, ObjectMetadata objectMetadata) {
        Map<String, Object> rawMetadata = objectMetadata.getRawMetadata();
        if (rawMetadata.get("x-amz-server-side-encryption-aws-kms-key-id") == null || "aws:kms".equals(rawMetadata.get("x-amz-server-side-encryption"))) {
            if (rawMetadata != null) {
                for (Map.Entry<String, Object> entry : rawMetadata.entrySet()) {
                    request.addHeader(entry.getKey(), entry.getValue().toString());
                }
            }
            Date httpExpiresDate = objectMetadata.getHttpExpiresDate();
            if (httpExpiresDate != null) {
                request.addHeader("Expires", DateUtils.formatRFC822Date(httpExpiresDate));
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
                    request.addHeader("x-amz-meta-" + str, str2);
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION");
    }

    public static void populateSseCpkRequestParameters(Request<?> request, SSECustomerKey sSECustomerKey) {
        if (sSECustomerKey != null) {
            sSECustomerKey.getAlgorithm();
            throw null;
        }
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3
    public void abortMultipartUpload(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        assertParameterNotNull(abortMultipartUploadRequest, "The request parameter must be specified when aborting a multipart upload");
        assertParameterNotNull(abortMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when aborting a multipart upload");
        assertParameterNotNull(abortMultipartUploadRequest.getKey(), "The key parameter must be specified when aborting a multipart upload");
        assertParameterNotNull(abortMultipartUploadRequest.getUploadId(), "The upload ID parameter must be specified when aborting a multipart upload");
        String bucketName = abortMultipartUploadRequest.getBucketName();
        String key = abortMultipartUploadRequest.getKey();
        Request createRequest = createRequest(bucketName, key, abortMultipartUploadRequest, HttpMethodName.DELETE);
        createRequest.addParameter("uploadId", abortMultipartUploadRequest.getUploadId());
        invoke(createRequest, this.voidResponseHandler, bucketName, key);
    }

    public final void assertParameterNotNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public final long calculateContentLength(InputStream inputStream) {
        byte[] bArr = new byte[8192];
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

    @Override // com.amazonaws.services.p017s3.AmazonS3
    public CompleteMultipartUploadResult completeMultipartUpload(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        assertParameterNotNull(completeMultipartUploadRequest, "The request parameter must be specified when completing a multipart upload");
        String bucketName = completeMultipartUploadRequest.getBucketName();
        String key = completeMultipartUploadRequest.getKey();
        String uploadId = completeMultipartUploadRequest.getUploadId();
        assertParameterNotNull(bucketName, "The bucket name parameter must be specified when completing a multipart upload");
        assertParameterNotNull(key, "The key parameter must be specified when completing a multipart upload");
        assertParameterNotNull(uploadId, "The upload ID parameter must be specified when completing a multipart upload");
        assertParameterNotNull(completeMultipartUploadRequest.getPartETags(), "The part ETags parameter must be specified when completing a multipart upload");
        Request createRequest = createRequest(bucketName, key, completeMultipartUploadRequest, HttpMethodName.POST);
        createRequest.addParameter("uploadId", uploadId);
        byte[] convertToXmlByteArray = RequestXmlFactory.convertToXmlByteArray(completeMultipartUploadRequest.getPartETags());
        createRequest.addHeader("Content-Type", "text/plain");
        createRequest.addHeader("Content-Length", String.valueOf(convertToXmlByteArray.length));
        createRequest.setContent(new ByteArrayInputStream(convertToXmlByteArray));
        ResponseHeaderHandlerChain responseHeaderHandlerChain = new ResponseHeaderHandlerChain(new Unmarshaller<XmlResponsesSaxParser.CompleteMultipartUploadHandler, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$CompleteMultipartUploadResultUnmarshaller
            public XmlResponsesSaxParser.CompleteMultipartUploadHandler unmarshall(InputStream inputStream) throws Exception {
                return new XmlResponsesSaxParser().parseCompleteMultipartUploadResponse(inputStream);
            }
        }, new ServerSideEncryptionHeaderHandler(), new ObjectExpirationHeaderHandler());
        XmlResponsesSaxParser.CompleteMultipartUploadHandler completeMultipartUploadHandler = (XmlResponsesSaxParser.CompleteMultipartUploadHandler) invoke(createRequest, responseHeaderHandlerChain, bucketName, key);
        if (completeMultipartUploadHandler.getCompleteMultipartUploadResult() != null) {
            completeMultipartUploadHandler.getCompleteMultipartUploadResult().setVersionId(responseHeaderHandlerChain.getResponseHeaders().get("x-amz-version-id"));
            return completeMultipartUploadHandler.getCompleteMultipartUploadResult();
        }
        throw completeMultipartUploadHandler.getAmazonS3Exception();
    }

    public final void configRequest(Request<?> request, String str, String str2) {
        if (this.clientOptions.isAccelerateModeEnabled()) {
            request.getOriginalRequest();
            if (BucketNameUtils.isDNSBucketName(str)) {
                request.setEndpoint(URI.create(this.clientConfiguration.getProtocol() + "://" + str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "s3-accelerate.amazonaws.com"));
                String str3 = str2;
                if (str2 != null) {
                    str3 = str2;
                    if (str2.startsWith("/")) {
                        str3 = "/" + str2;
                    }
                }
                request.setResourcePath(str3);
                return;
            }
        }
        if (this.clientOptions.isPathStyleAccess() || !BucketNameUtils.isDNSBucketName(str) || validIP(this.endpoint.getHost())) {
            request.setEndpoint(this.endpoint);
            if (str != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("/");
                if (str2 == null) {
                    str2 = "";
                }
                sb.append(str2);
                request.setResourcePath(sb.toString());
                return;
            }
            return;
        }
        request.setEndpoint(convertToVirtualHostEndpoint(str));
        String str4 = str2;
        if (str2 != null) {
            str4 = str2;
            if (str2.startsWith("/")) {
                str4 = "/" + str2;
            }
        }
        request.setResourcePath(str4);
    }

    public final URI convertToVirtualHostEndpoint(String str) {
        try {
            return new URI(this.endpoint.getScheme() + "://" + str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + this.endpoint.getAuthority());
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid bucket name: " + str, e);
        }
    }

    public final ExecutionContext createExecutionContext(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new S3ExecutionContext(this.requestHandler2s, isRequestMetricsEnabled(amazonWebServiceRequest) || AmazonWebServiceClient.isProfilingEnabled(), this);
    }

    public <X extends AmazonWebServiceRequest> Request<X> createRequest(String str, String str2, X x, HttpMethodName httpMethodName) {
        DefaultRequest defaultRequest = new DefaultRequest(x, Constants.S3_SERVICE_NAME);
        defaultRequest.setHttpMethod(httpMethodName);
        configRequest(defaultRequest, str, str2);
        return defaultRequest;
    }

    public Signer createSigner(Request<?> request, String str, String str2) {
        String str3;
        Signer signer = getSigner();
        if (upgradeToSigV4(request) && !(signer instanceof AWSS3V4Signer)) {
            AWSS3V4Signer aWSS3V4Signer = new AWSS3V4Signer();
            aWSS3V4Signer.setServiceName(getServiceNameIntern());
            String signerRegionOverride = getSignerRegionOverride();
            String str4 = signerRegionOverride;
            if (signerRegionOverride == null) {
                str4 = this.clientRegion;
            }
            if (str4 != null) {
                aWSS3V4Signer.setRegionName(str4);
                return aWSS3V4Signer;
            }
            throw new AmazonClientException("Signature Version 4 requires knowing the region of the bucket you're trying to access. You can configure a region by calling AmazonS3Client.setRegion(Region) or AmazonS3Client.setEndpoint(String) with a region-specific endpoint such as \"s3-us-west-2.amazonaws.com\".");
        } else if (!(signer instanceof S3Signer)) {
            return signer;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("/");
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
            return new S3Signer(request.getHttpMethod().toString(), sb.toString());
        }
    }

    public final void fireProgressEvent(ProgressListenerCallbackExecutor progressListenerCallbackExecutor, int i) {
        if (progressListenerCallbackExecutor != null) {
            ProgressEvent progressEvent = new ProgressEvent(0L);
            progressEvent.setEventCode(i);
            progressListenerCallbackExecutor.progressChanged(progressEvent);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.p017s3.AmazonS3
    public S3Object getObject(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException {
        InputStream inputStream;
        assertParameterNotNull(getObjectRequest, "The GetObjectRequest parameter must be specified when requesting an object");
        assertParameterNotNull(getObjectRequest.getBucketName(), "The bucket name parameter must be specified when requesting an object");
        assertParameterNotNull(getObjectRequest.getKey(), "The key parameter must be specified when requesting an object");
        Request createRequest = createRequest(getObjectRequest.getBucketName(), getObjectRequest.getKey(), getObjectRequest, HttpMethodName.GET);
        if (getObjectRequest.getVersionId() != null) {
            createRequest.addParameter("versionId", getObjectRequest.getVersionId());
        }
        long[] range = getObjectRequest.getRange();
        if (range != null) {
            String str = "bytes=" + Long.toString(range[0]) + "-";
            String str2 = str;
            if (range[1] >= 0) {
                str2 = str + Long.toString(range[1]);
            }
            createRequest.addHeader("Range", str2);
        }
        if (getObjectRequest.isRequesterPays()) {
            createRequest.addHeader("x-amz-request-payer", "requester");
        }
        addResponseHeaderParameters(createRequest, getObjectRequest.getResponseHeaders());
        addDateHeader(createRequest, "If-Modified-Since", getObjectRequest.getModifiedSinceConstraint());
        addDateHeader(createRequest, "If-Unmodified-Since", getObjectRequest.getUnmodifiedSinceConstraint());
        addStringListHeader(createRequest, "If-Match", getObjectRequest.getMatchingETagConstraints());
        addStringListHeader(createRequest, "If-None-Match", getObjectRequest.getNonmatchingETagConstraints());
        populateSseCpkRequestParameters(createRequest, getObjectRequest.getSSECustomerKey());
        ProgressListenerCallbackExecutor wrapListener = ProgressListenerCallbackExecutor.wrapListener(getObjectRequest.getGeneralProgressListener());
        try {
            S3Object s3Object = (S3Object) invoke(createRequest, new S3ObjectResponseHandler(), getObjectRequest.getBucketName(), getObjectRequest.getKey());
            s3Object.setBucketName(getObjectRequest.getBucketName());
            s3Object.setKey(getObjectRequest.getKey());
            ServiceClientHolderInputStream serviceClientHolderInputStream = new ServiceClientHolderInputStream(s3Object.getObjectContent(), this);
            if (wrapListener != null) {
                ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(serviceClientHolderInputStream, wrapListener);
                progressReportingInputStream.setFireCompletedEvent(true);
                fireProgressEvent(wrapListener, 2);
                serviceClientHolderInputStream = progressReportingInputStream;
            }
            if (ServiceUtils.skipMd5CheckPerRequest(getObjectRequest) || ServiceUtils.skipMd5CheckPerResponse(s3Object.getObjectMetadata())) {
                inputStream = new LengthCheckInputStream(serviceClientHolderInputStream, s3Object.getObjectMetadata().getContentLength(), true);
            } else {
                String eTag = s3Object.getObjectMetadata().getETag();
                inputStream = serviceClientHolderInputStream;
                if (eTag != null) {
                    inputStream = serviceClientHolderInputStream;
                    if (!ServiceUtils.isMultipartUploadETag(eTag)) {
                        try {
                            inputStream = new DigestValidationInputStream(serviceClientHolderInputStream, MessageDigest.getInstance("MD5"), BinaryUtils.fromHex(s3Object.getObjectMetadata().getETag()));
                        } catch (NoSuchAlgorithmException e) {
                            log.warn("No MD5 digest algorithm available.  Unable to calculate checksum and verify data integrity.", e);
                            inputStream = serviceClientHolderInputStream;
                        }
                    }
                }
            }
            s3Object.setObjectContent(new S3ObjectInputStream(inputStream));
            return s3Object;
        } catch (AmazonS3Exception e2) {
            if (e2.getStatusCode() == 412 || e2.getStatusCode() == 304) {
                fireProgressEvent(wrapListener, 16);
                return null;
            }
            fireProgressEvent(wrapListener, 8);
            throw e2;
        }
    }

    public final void init() {
        setEndpoint(Constants.S3_HOSTNAME);
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.requestHandler2s.addAll(handlerChainFactory.newRequestHandlerChain("/com/amazonaws/services/s3/request.handlers"));
        this.requestHandler2s.addAll(handlerChainFactory.newRequestHandler2Chain("/com/amazonaws/services/s3/request.handler2s"));
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3
    public InitiateMultipartUploadResult initiateMultipartUpload(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        assertParameterNotNull(initiateMultipartUploadRequest, "The request parameter must be specified when initiating a multipart upload");
        assertParameterNotNull(initiateMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when initiating a multipart upload");
        assertParameterNotNull(initiateMultipartUploadRequest.getKey(), "The key parameter must be specified when initiating a multipart upload");
        Request<?> createRequest = createRequest(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), initiateMultipartUploadRequest, HttpMethodName.POST);
        createRequest.addParameter("uploads", null);
        if (initiateMultipartUploadRequest.getStorageClass() != null) {
            createRequest.addHeader("x-amz-storage-class", initiateMultipartUploadRequest.getStorageClass().toString());
        }
        if (initiateMultipartUploadRequest.getRedirectLocation() != null) {
            createRequest.addHeader("x-amz-website-redirect-location", initiateMultipartUploadRequest.getRedirectLocation());
        }
        if (initiateMultipartUploadRequest.getAccessControlList() == null) {
            if (initiateMultipartUploadRequest.getCannedACL() != null) {
                createRequest.addHeader("x-amz-acl", initiateMultipartUploadRequest.getCannedACL().toString());
            }
            ObjectMetadata objectMetadata = initiateMultipartUploadRequest.objectMetadata;
            if (objectMetadata != null) {
                populateRequestMetadata(createRequest, objectMetadata);
            }
            populateSseCpkRequestParameters(createRequest, initiateMultipartUploadRequest.getSSECustomerKey());
            setZeroContentLength(createRequest);
            createRequest.setContent(new ByteArrayInputStream(new byte[0]));
            return (InitiateMultipartUploadResult) invoke(createRequest, new ResponseHeaderHandlerChain(new Unmarshaller<InitiateMultipartUploadResult, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$InitiateMultipartUploadResultUnmarshaller
                public InitiateMultipartUploadResult unmarshall(InputStream inputStream) throws Exception {
                    return new XmlResponsesSaxParser().parseInitiateMultipartUploadResponse(inputStream).getInitiateMultipartUploadResult();
                }
            }, new ServerSideEncryptionHeaderHandler()), initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey());
        }
        addAclHeaders(createRequest, initiateMultipartUploadRequest.getAccessControlList());
        throw null;
    }

    public final <X, Y extends AmazonWebServiceRequest> X invoke(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, String str, String str2) {
        AmazonWebServiceRequest originalRequest = request.getOriginalRequest();
        ExecutionContext createExecutionContext = createExecutionContext(originalRequest);
        AWSRequestMetrics awsRequestMetrics = createExecutionContext.getAwsRequestMetrics();
        request.setAWSRequestMetrics(awsRequestMetrics);
        awsRequestMetrics.startEvent(AWSRequestMetrics.Field.ClientExecuteTime);
        Response<?> response = null;
        try {
            request.setTimeOffset(this.timeOffset);
            if (!request.getHeaders().containsKey("Content-Type")) {
                request.addHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
            }
            AWSCredentials credentials = this.awsCredentialsProvider.getCredentials();
            if (originalRequest.getRequestCredentials() != null) {
                credentials = originalRequest.getRequestCredentials();
            }
            createExecutionContext.setSigner(createSigner(request, str, str2));
            createExecutionContext.setCredentials(credentials);
            Response<?> execute = this.client.execute(request, httpResponseHandler, this.errorResponseHandler, createExecutionContext);
            response = execute;
            return (X) execute.getAwsResponse();
        } finally {
            endClientExecution(awsRequestMetrics, request, response);
        }
    }

    public final <X, Y extends AmazonWebServiceRequest> X invoke(Request<Y> request, Unmarshaller<X, InputStream> unmarshaller, String str, String str2) {
        return (X) invoke(request, new S3XmlResponseHandler(unmarshaller), str, str2);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3
    public PartListing listParts(ListPartsRequest listPartsRequest) throws AmazonClientException, AmazonServiceException {
        assertParameterNotNull(listPartsRequest, "The request parameter must be specified when listing parts");
        assertParameterNotNull(listPartsRequest.getBucketName(), "The bucket name parameter must be specified when listing parts");
        assertParameterNotNull(listPartsRequest.getKey(), "The key parameter must be specified when listing parts");
        assertParameterNotNull(listPartsRequest.getUploadId(), "The upload ID parameter must be specified when listing parts");
        Request createRequest = createRequest(listPartsRequest.getBucketName(), listPartsRequest.getKey(), listPartsRequest, HttpMethodName.GET);
        createRequest.addParameter("uploadId", listPartsRequest.getUploadId());
        if (listPartsRequest.getMaxParts() != null) {
            createRequest.addParameter("max-parts", listPartsRequest.getMaxParts().toString());
        }
        if (listPartsRequest.getPartNumberMarker() != null) {
            createRequest.addParameter("part-number-marker", listPartsRequest.getPartNumberMarker().toString());
        }
        if (listPartsRequest.getEncodingType() != null) {
            createRequest.addParameter("encoding-type", listPartsRequest.getEncodingType());
        }
        return (PartListing) invoke(createRequest, new Unmarshaller<PartListing, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$ListPartsResultUnmarshaller
            public PartListing unmarshall(InputStream inputStream) throws Exception {
                return new XmlResponsesSaxParser().parseListPartsResponse(inputStream).getListPartsResult();
            }
        }, listPartsRequest.getBucketName(), listPartsRequest.getKey());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.p017s3.AmazonS3
    public PutObjectResult putObject(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException {
        ByteArrayInputStream byteArrayInputStream;
        InputStream inputStream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream;
        assertParameterNotNull(putObjectRequest, "The PutObjectRequest parameter must be specified when uploading an object");
        String bucketName = putObjectRequest.getBucketName();
        String key = putObjectRequest.getKey();
        ObjectMetadata metadata = putObjectRequest.getMetadata();
        InputStream inputStream2 = putObjectRequest.getInputStream();
        ProgressListenerCallbackExecutor wrapListener = ProgressListenerCallbackExecutor.wrapListener(putObjectRequest.getGeneralProgressListener());
        ObjectMetadata objectMetadata = metadata;
        if (metadata == null) {
            objectMetadata = new ObjectMetadata();
        }
        assertParameterNotNull(bucketName, "The bucket name parameter must be specified when uploading an object");
        assertParameterNotNull(key, "The key parameter must be specified when uploading an object");
        boolean skipMd5CheckPerRequest = ServiceUtils.skipMd5CheckPerRequest(putObjectRequest);
        if (putObjectRequest.getFile() != null) {
            File file = putObjectRequest.getFile();
            objectMetadata.setContentLength(file.length());
            boolean z = objectMetadata.getContentMD5() == null;
            if (objectMetadata.getContentType() == null) {
                objectMetadata.setContentType(Mimetypes.getInstance().getMimetype(file));
            }
            if (z && !skipMd5CheckPerRequest) {
                try {
                    objectMetadata.setContentMD5(Md5Utils.md5AsBase64(file));
                } catch (Exception e) {
                    throw new AmazonClientException("Unable to calculate MD5 hash: " + e.getMessage(), e);
                }
            }
            try {
                inputStream2 = new RepeatableFileInputStream(file);
            } catch (FileNotFoundException e2) {
                throw new AmazonClientException("Unable to find file to upload", e2);
            }
        }
        Request createRequest = createRequest(bucketName, key, putObjectRequest, HttpMethodName.PUT);
        if (putObjectRequest.getAccessControlList() == null) {
            if (putObjectRequest.getCannedAcl() != null) {
                createRequest.addHeader("x-amz-acl", putObjectRequest.getCannedAcl().toString());
            }
            if (putObjectRequest.getStorageClass() != null) {
                createRequest.addHeader("x-amz-storage-class", putObjectRequest.getStorageClass());
            }
            InputStream inputStream3 = inputStream2;
            if (putObjectRequest.getRedirectLocation() != null) {
                createRequest.addHeader("x-amz-website-redirect-location", putObjectRequest.getRedirectLocation());
                inputStream3 = inputStream2;
                if (inputStream2 == null) {
                    setZeroContentLength(createRequest);
                    inputStream3 = new ByteArrayInputStream(new byte[0]);
                }
            }
            populateSseCpkRequestParameters(createRequest, putObjectRequest.getSSECustomerKey());
            Long l = (Long) objectMetadata.getRawMetadataValue("Content-Length");
            if (l != null) {
                long longValue = l.longValue();
                byteArrayInputStream = inputStream3;
                if (longValue >= 0) {
                    LengthCheckInputStream lengthCheckInputStream = new LengthCheckInputStream(inputStream3, longValue, false);
                    createRequest.addHeader("Content-Length", l.toString());
                    byteArrayInputStream = lengthCheckInputStream;
                }
            } else if (!inputStream3.markSupported()) {
                log.warn("No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors.");
                ByteArrayInputStream byteArray = toByteArray(inputStream3);
                createRequest.addHeader("Content-Length", String.valueOf(byteArray.available()));
                byteArrayInputStream = byteArray;
            } else {
                createRequest.addHeader("Content-Length", String.valueOf(calculateContentLength(inputStream3)));
                byteArrayInputStream = inputStream3;
            }
            ProgressReportingInputStream progressReportingInputStream = byteArrayInputStream;
            if (wrapListener != null) {
                ProgressReportingInputStream progressReportingInputStream2 = new ProgressReportingInputStream(byteArrayInputStream, wrapListener);
                fireProgressEvent(wrapListener, 2);
                progressReportingInputStream = progressReportingInputStream2;
            }
            if (objectMetadata.getContentMD5() != null || skipMd5CheckPerRequest) {
                mD5DigestCalculatingInputStream = null;
                inputStream = progressReportingInputStream;
            } else {
                inputStream = new MD5DigestCalculatingInputStream(progressReportingInputStream);
                mD5DigestCalculatingInputStream = inputStream;
            }
            if (objectMetadata.getContentType() == null) {
                objectMetadata.setContentType("application/octet-stream");
            }
            populateRequestMetadata(createRequest, objectMetadata);
            createRequest.setContent(inputStream);
            createRequest.addHeader("Expect", "100-continue");
            try {
                try {
                    ObjectMetadata objectMetadata2 = (ObjectMetadata) invoke(createRequest, new S3MetadataResponseHandler(), bucketName, key);
                    try {
                        inputStream.close();
                    } catch (AbortedException e3) {
                    } catch (Exception e4) {
                        Log log2 = log;
                        log2.debug("Unable to cleanly close input stream: " + e4.getMessage(), e4);
                    }
                    String contentMD5 = objectMetadata.getContentMD5();
                    if (mD5DigestCalculatingInputStream != null) {
                        contentMD5 = BinaryUtils.toBase64(mD5DigestCalculatingInputStream.getMd5Digest());
                    }
                    if (objectMetadata2 == null || contentMD5 == null || skipMd5CheckPerRequest || Arrays.equals(BinaryUtils.fromBase64(contentMD5), BinaryUtils.fromHex(objectMetadata2.getETag()))) {
                        fireProgressEvent(wrapListener, 4);
                        PutObjectResult putObjectResult = new PutObjectResult();
                        putObjectResult.setETag(objectMetadata2.getETag());
                        putObjectResult.setVersionId(objectMetadata2.getVersionId());
                        putObjectResult.setSSEAlgorithm(objectMetadata2.getSSEAlgorithm());
                        putObjectResult.setSSEKMSKeyId(objectMetadata2.getSSEKMSKeyId());
                        putObjectResult.setSSECustomerAlgorithm(objectMetadata2.getSSECustomerAlgorithm());
                        putObjectResult.setSSECustomerKeyMd5(objectMetadata2.getSSECustomerKeyMd5());
                        putObjectResult.setExpirationTime(objectMetadata2.getExpirationTime());
                        putObjectResult.setExpirationTimeRuleId(objectMetadata2.getExpirationTimeRuleId());
                        putObjectResult.setContentMd5(contentMD5);
                        return putObjectResult;
                    }
                    fireProgressEvent(wrapListener, 8);
                    throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
                } catch (AmazonClientException e5) {
                    fireProgressEvent(wrapListener, 8);
                    throw e5;
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (AbortedException e6) {
                } catch (Exception e7) {
                    Log log3 = log;
                    log3.debug("Unable to cleanly close input stream: " + e7.getMessage(), e7);
                }
                throw th;
            }
        } else {
            addAclHeaders(createRequest, putObjectRequest.getAccessControlList());
            throw null;
        }
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    public void setEndpoint(String str) {
        if (!str.endsWith("s3-accelerate.amazonaws.com")) {
            super.setEndpoint(str);
            if (!str.endsWith(Constants.S3_HOSTNAME)) {
                this.clientRegion = AwsHostNameUtils.parseRegionName(this.endpoint.getHost(), "s3");
                return;
            }
            return;
        }
        throw new IllegalStateException("To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());");
    }

    @Override // com.amazonaws.AmazonWebServiceClient, com.amazonaws.services.p017s3.AmazonS3
    public void setRegion(Region region) {
        super.setRegion(region);
        this.clientRegion = region.getName();
    }

    public final void setZeroContentLength(Request<?> request) {
        request.addHeader("Content-Length", String.valueOf(0));
    }

    public final ByteArrayInputStream toByteArray(InputStream inputStream) {
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

    public final boolean upgradeToSigV4(Request<?> request) {
        return System.getProperty("com.amazonaws.services.s3.enforceV4") != null || !this.endpoint.getHost().endsWith(Constants.S3_HOSTNAME);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3
    public UploadPartResult uploadPart(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        InputStream inputStream;
        assertParameterNotNull(uploadPartRequest, "The request parameter must be specified when uploading a part");
        String bucketName = uploadPartRequest.getBucketName();
        String key = uploadPartRequest.getKey();
        String uploadId = uploadPartRequest.getUploadId();
        int partNumber = uploadPartRequest.getPartNumber();
        long partSize = uploadPartRequest.getPartSize();
        assertParameterNotNull(bucketName, "The bucket name parameter must be specified when uploading a part");
        assertParameterNotNull(key, "The key parameter must be specified when uploading a part");
        assertParameterNotNull(uploadId, "The upload ID parameter must be specified when uploading a part");
        assertParameterNotNull(Integer.valueOf(partNumber), "The part number parameter must be specified when uploading a part");
        assertParameterNotNull(Long.valueOf(partSize), "The part size parameter must be specified when uploading a part");
        Request createRequest = createRequest(bucketName, key, uploadPartRequest, HttpMethodName.PUT);
        createRequest.addParameter("uploadId", uploadId);
        createRequest.addParameter("partNumber", Integer.toString(partNumber));
        addHeaderIfNotNull(createRequest, "Content-MD5", uploadPartRequest.getMd5Digest());
        createRequest.addHeader("Content-Length", Long.toString(partSize));
        createRequest.addHeader("Expect", "100-continue");
        populateSseCpkRequestParameters(createRequest, uploadPartRequest.getSSECustomerKey());
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
            if (!ServiceUtils.skipMd5CheckPerRequest(uploadPartRequest)) {
                mD5DigestCalculatingInputStream2 = new MD5DigestCalculatingInputStream(inputStream);
                mD5DigestCalculatingInputStream = mD5DigestCalculatingInputStream2;
            }
        }
        ProgressListenerCallbackExecutor wrapListener = ProgressListenerCallbackExecutor.wrapListener(uploadPartRequest.getGeneralProgressListener());
        InputStream inputStream2 = mD5DigestCalculatingInputStream;
        if (wrapListener != null) {
            inputStream2 = new ProgressReportingInputStream(mD5DigestCalculatingInputStream, wrapListener);
            fireProgressEvent(wrapListener, 1024);
        }
        try {
            try {
                createRequest.setContent(inputStream2);
                ObjectMetadata objectMetadata = (ObjectMetadata) invoke(createRequest, new S3MetadataResponseHandler(), bucketName, key);
                if (objectMetadata != null && mD5DigestCalculatingInputStream2 != null && !ServiceUtils.skipMd5CheckPerResponse(objectMetadata) && !Arrays.equals(mD5DigestCalculatingInputStream2.getMd5Digest(), BinaryUtils.fromHex(objectMetadata.getETag()))) {
                    throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
                }
                fireProgressEvent(wrapListener, 2048);
                UploadPartResult uploadPartResult = new UploadPartResult();
                uploadPartResult.setETag(objectMetadata.getETag());
                uploadPartResult.setPartNumber(partNumber);
                uploadPartResult.setSSEAlgorithm(objectMetadata.getSSEAlgorithm());
                uploadPartResult.setSSEKMSKeyId(objectMetadata.getSSEKMSKeyId());
                uploadPartResult.setSSECustomerAlgorithm(objectMetadata.getSSECustomerAlgorithm());
                uploadPartResult.setSSECustomerKeyMd5(objectMetadata.getSSECustomerKeyMd5());
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e2) {
                    }
                }
                return uploadPartResult;
            } catch (Throwable th) {
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e3) {
                    }
                }
                throw th;
            }
        } catch (AmazonClientException e4) {
            fireProgressEvent(wrapListener, 4096);
            throw e4;
        }
    }

    public final boolean validIP(String str) {
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
}
