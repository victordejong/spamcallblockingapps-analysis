package com.amazonaws.services.kms;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.handlers.RequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.http.JsonResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.services.kms.model.DecryptRequest;
import com.amazonaws.services.kms.model.DecryptResult;
import com.amazonaws.services.kms.model.EncryptRequest;
import com.amazonaws.services.kms.model.EncryptResult;
import com.amazonaws.services.kms.model.GenerateDataKeyRequest;
import com.amazonaws.services.kms.model.GenerateDataKeyResult;
import com.amazonaws.services.kms.model.transform.AlreadyExistsExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CloudHsmClusterInUseExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CloudHsmClusterInvalidConfigurationExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CloudHsmClusterNotActiveExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CloudHsmClusterNotFoundExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CloudHsmClusterNotRelatedExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CustomKeyStoreHasCMKsExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CustomKeyStoreInvalidStateExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CustomKeyStoreNameInUseExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.CustomKeyStoreNotFoundExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.DecryptRequestMarshaller;
import com.amazonaws.services.kms.model.transform.DecryptResultJsonUnmarshaller;
import com.amazonaws.services.kms.model.transform.DependencyTimeoutExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.DisabledExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.EncryptRequestMarshaller;
import com.amazonaws.services.kms.model.transform.EncryptResultJsonUnmarshaller;
import com.amazonaws.services.kms.model.transform.ExpiredImportTokenExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.GenerateDataKeyRequestMarshaller;
import com.amazonaws.services.kms.model.transform.GenerateDataKeyResultJsonUnmarshaller;
import com.amazonaws.services.kms.model.transform.IncorrectKeyExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.IncorrectKeyMaterialExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.IncorrectTrustAnchorExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidAliasNameExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidArnExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidCiphertextExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidGrantIdExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidGrantTokenExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidImportTokenExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidKeyUsageExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.InvalidMarkerExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.KMSInternalExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.KMSInvalidSignatureExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.KMSInvalidStateExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.KeyUnavailableExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.LimitExceededExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.MalformedPolicyDocumentExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.NotFoundExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.TagExceptionUnmarshaller;
import com.amazonaws.services.kms.model.transform.UnsupportedOperationExceptionUnmarshaller;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/AWSKMSClient.class */
public class AWSKMSClient extends AmazonWebServiceClient {

    /* renamed from: g */
    protected List<JsonErrorUnmarshaller> f12289g;

    /* renamed from: h */
    private AWSCredentialsProvider f12290h;

    @Deprecated
    public AWSKMSClient() {
        this(new DefaultAWSCredentialsProviderChain(), new ClientConfiguration());
    }

    @Deprecated
    public AWSKMSClient(ClientConfiguration clientConfiguration) {
        this(new DefaultAWSCredentialsProviderChain(), clientConfiguration);
    }

    public AWSKMSClient(AWSCredentials aWSCredentials) {
        this(aWSCredentials, new ClientConfiguration());
    }

    public AWSKMSClient(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), clientConfiguration);
    }

    public AWSKMSClient(AWSCredentialsProvider aWSCredentialsProvider) {
        this(aWSCredentialsProvider, new ClientConfiguration());
    }

    public AWSKMSClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AWSKMSClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.f12290h = aWSCredentialsProvider;
        m38486d();
    }

    @Deprecated
    public AWSKMSClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        super(clientConfiguration, requestMetricCollector);
        this.f12290h = aWSCredentialsProvider;
        m38486d();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private <X, Y extends AmazonWebServiceRequest> Response<X> m38490a(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, ExecutionContext executionContext) {
        request.mo38713a(this.f11941a);
        request.mo38719a(this.f11945e);
        AWSRequestMetrics aWSRequestMetrics = executionContext.f12056a;
        aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.CredentialsRequestTime);
        try {
            AWSCredentials mo38581a = this.f12290h.mo38581a();
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.CredentialsRequestTime);
            AmazonWebServiceRequest mo38720a = request.mo38720a();
            AWSCredentials aWSCredentials = mo38581a;
            if (mo38720a != null) {
                aWSCredentials = mo38581a;
                if (mo38720a.getRequestCredentials() != null) {
                    aWSCredentials = mo38720a.getRequestCredentials();
                }
            }
            executionContext.f12059d = aWSCredentials;
            return this.f11943c.m38630a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) new JsonErrorResponseHandler(this.f12289g), executionContext);
        } catch (Throwable th) {
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.CredentialsRequestTime);
            throw th;
        }
    }

    /* renamed from: d */
    private void m38486d() {
        ArrayList arrayList = new ArrayList();
        this.f12289g = arrayList;
        arrayList.add(new AlreadyExistsExceptionUnmarshaller());
        this.f12289g.add(new CloudHsmClusterInUseExceptionUnmarshaller());
        this.f12289g.add(new CloudHsmClusterInvalidConfigurationExceptionUnmarshaller());
        this.f12289g.add(new CloudHsmClusterNotActiveExceptionUnmarshaller());
        this.f12289g.add(new CloudHsmClusterNotFoundExceptionUnmarshaller());
        this.f12289g.add(new CloudHsmClusterNotRelatedExceptionUnmarshaller());
        this.f12289g.add(new CustomKeyStoreHasCMKsExceptionUnmarshaller());
        this.f12289g.add(new CustomKeyStoreInvalidStateExceptionUnmarshaller());
        this.f12289g.add(new CustomKeyStoreNameInUseExceptionUnmarshaller());
        this.f12289g.add(new CustomKeyStoreNotFoundExceptionUnmarshaller());
        this.f12289g.add(new DependencyTimeoutExceptionUnmarshaller());
        this.f12289g.add(new DisabledExceptionUnmarshaller());
        this.f12289g.add(new ExpiredImportTokenExceptionUnmarshaller());
        this.f12289g.add(new IncorrectKeyExceptionUnmarshaller());
        this.f12289g.add(new IncorrectKeyMaterialExceptionUnmarshaller());
        this.f12289g.add(new IncorrectTrustAnchorExceptionUnmarshaller());
        this.f12289g.add(new InvalidAliasNameExceptionUnmarshaller());
        this.f12289g.add(new InvalidArnExceptionUnmarshaller());
        this.f12289g.add(new InvalidCiphertextExceptionUnmarshaller());
        this.f12289g.add(new InvalidGrantIdExceptionUnmarshaller());
        this.f12289g.add(new InvalidGrantTokenExceptionUnmarshaller());
        this.f12289g.add(new InvalidImportTokenExceptionUnmarshaller());
        this.f12289g.add(new InvalidKeyUsageExceptionUnmarshaller());
        this.f12289g.add(new InvalidMarkerExceptionUnmarshaller());
        this.f12289g.add(new KMSInternalExceptionUnmarshaller());
        this.f12289g.add(new KMSInvalidSignatureExceptionUnmarshaller());
        this.f12289g.add(new KMSInvalidStateExceptionUnmarshaller());
        this.f12289g.add(new KeyUnavailableExceptionUnmarshaller());
        this.f12289g.add(new LimitExceededExceptionUnmarshaller());
        this.f12289g.add(new MalformedPolicyDocumentExceptionUnmarshaller());
        this.f12289g.add(new NotFoundExceptionUnmarshaller());
        this.f12289g.add(new TagExceptionUnmarshaller());
        this.f12289g.add(new UnsupportedOperationExceptionUnmarshaller());
        this.f12289g.add(new JsonErrorUnmarshaller());
        mo38468a("kms.us-east-1.amazonaws.com");
        this.f11946f = "kms";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f11944d.addAll(handlerChainFactory.m38635a("/com/amazonaws/services/kms/request.handlers", RequestHandler.class));
        this.f11944d.addAll(handlerChainFactory.m38635a("/com/amazonaws/services/kms/request.handler2s", RequestHandler2.class));
    }

    /* renamed from: a */
    public final DecryptResult m38489a(DecryptRequest decryptRequest) throws AmazonServiceException, AmazonClientException {
        ExecutionContext a = mo38485a((AmazonWebServiceRequest) decryptRequest);
        AWSRequestMetrics aWSRequestMetrics = a.f12056a;
        aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.ClientExecuteTime);
        Request<DecryptRequest> request = null;
        try {
            aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.RequestMarshallTime);
            Request<DecryptRequest> marshall = new DecryptRequestMarshaller().marshall(decryptRequest);
            marshall.mo38717a(aWSRequestMetrics);
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.RequestMarshallTime);
            request = marshall;
            DecryptResult decryptResult = (DecryptResult) m38490a(marshall, new JsonResponseHandler(new DecryptResultJsonUnmarshaller()), a).f11966a;
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            m38731a(aWSRequestMetrics, (Request<?>) marshall, true);
            return decryptResult;
        } catch (Throwable th) {
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            m38731a(aWSRequestMetrics, (Request<?>) request, true);
            throw th;
        }
    }

    /* renamed from: a */
    public final EncryptResult m38488a(EncryptRequest encryptRequest) throws AmazonServiceException, AmazonClientException {
        ExecutionContext a = mo38485a((AmazonWebServiceRequest) encryptRequest);
        AWSRequestMetrics aWSRequestMetrics = a.f12056a;
        aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.ClientExecuteTime);
        Request<EncryptRequest> request = null;
        try {
            aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.RequestMarshallTime);
            Request<EncryptRequest> marshall = new EncryptRequestMarshaller().marshall(encryptRequest);
            marshall.mo38717a(aWSRequestMetrics);
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.RequestMarshallTime);
            request = marshall;
            EncryptResult encryptResult = (EncryptResult) m38490a(marshall, new JsonResponseHandler(new EncryptResultJsonUnmarshaller()), a).f11966a;
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            m38731a(aWSRequestMetrics, (Request<?>) marshall, true);
            return encryptResult;
        } catch (Throwable th) {
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            m38731a(aWSRequestMetrics, (Request<?>) request, true);
            throw th;
        }
    }

    /* renamed from: a */
    public final GenerateDataKeyResult m38487a(GenerateDataKeyRequest generateDataKeyRequest) throws AmazonServiceException, AmazonClientException {
        ExecutionContext a = mo38485a((AmazonWebServiceRequest) generateDataKeyRequest);
        AWSRequestMetrics aWSRequestMetrics = a.f12056a;
        aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.ClientExecuteTime);
        Request<GenerateDataKeyRequest> request = null;
        try {
            aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.RequestMarshallTime);
            Request<GenerateDataKeyRequest> marshall = new GenerateDataKeyRequestMarshaller().marshall(generateDataKeyRequest);
            marshall.mo38717a(aWSRequestMetrics);
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.RequestMarshallTime);
            request = marshall;
            GenerateDataKeyResult generateDataKeyResult = (GenerateDataKeyResult) m38490a(marshall, new JsonResponseHandler(new GenerateDataKeyResultJsonUnmarshaller()), a).f11966a;
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            m38731a(aWSRequestMetrics, (Request<?>) marshall, true);
            return generateDataKeyResult;
        } catch (Throwable th) {
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            m38731a(aWSRequestMetrics, (Request<?>) request, true);
            throw th;
        }
    }
}
