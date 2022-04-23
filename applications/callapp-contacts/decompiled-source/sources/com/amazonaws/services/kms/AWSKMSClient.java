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
    protected List<JsonErrorUnmarshaller> g;
    private AWSCredentialsProvider h;

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
        this.h = aWSCredentialsProvider;
        d();
    }

    @Deprecated
    public AWSKMSClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        super(clientConfiguration, requestMetricCollector);
        this.h = aWSCredentialsProvider;
        d();
    }

    /* JADX WARN: Finally extract failed */
    private <X, Y extends AmazonWebServiceRequest> Response<X> a(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, ExecutionContext executionContext) {
        request.a(this.f6532a);
        request.a(this.e);
        AWSRequestMetrics aWSRequestMetrics = executionContext.f6611a;
        aWSRequestMetrics.a(AWSRequestMetrics.Field.CredentialsRequestTime);
        try {
            AWSCredentials a2 = this.h.a();
            aWSRequestMetrics.b(AWSRequestMetrics.Field.CredentialsRequestTime);
            AmazonWebServiceRequest a3 = request.a();
            AWSCredentials aWSCredentials = a2;
            if (a3 != null) {
                aWSCredentials = a2;
                if (a3.getRequestCredentials() != null) {
                    aWSCredentials = a3.getRequestCredentials();
                }
            }
            executionContext.f6614d = aWSCredentials;
            return this.f6534c.a((Request<?>) request, (HttpResponseHandler) httpResponseHandler, (HttpResponseHandler<AmazonServiceException>) new JsonErrorResponseHandler(this.g), executionContext);
        } catch (Throwable th) {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.CredentialsRequestTime);
            throw th;
        }
    }

    private void d() {
        ArrayList arrayList = new ArrayList();
        this.g = arrayList;
        arrayList.add(new AlreadyExistsExceptionUnmarshaller());
        this.g.add(new CloudHsmClusterInUseExceptionUnmarshaller());
        this.g.add(new CloudHsmClusterInvalidConfigurationExceptionUnmarshaller());
        this.g.add(new CloudHsmClusterNotActiveExceptionUnmarshaller());
        this.g.add(new CloudHsmClusterNotFoundExceptionUnmarshaller());
        this.g.add(new CloudHsmClusterNotRelatedExceptionUnmarshaller());
        this.g.add(new CustomKeyStoreHasCMKsExceptionUnmarshaller());
        this.g.add(new CustomKeyStoreInvalidStateExceptionUnmarshaller());
        this.g.add(new CustomKeyStoreNameInUseExceptionUnmarshaller());
        this.g.add(new CustomKeyStoreNotFoundExceptionUnmarshaller());
        this.g.add(new DependencyTimeoutExceptionUnmarshaller());
        this.g.add(new DisabledExceptionUnmarshaller());
        this.g.add(new ExpiredImportTokenExceptionUnmarshaller());
        this.g.add(new IncorrectKeyExceptionUnmarshaller());
        this.g.add(new IncorrectKeyMaterialExceptionUnmarshaller());
        this.g.add(new IncorrectTrustAnchorExceptionUnmarshaller());
        this.g.add(new InvalidAliasNameExceptionUnmarshaller());
        this.g.add(new InvalidArnExceptionUnmarshaller());
        this.g.add(new InvalidCiphertextExceptionUnmarshaller());
        this.g.add(new InvalidGrantIdExceptionUnmarshaller());
        this.g.add(new InvalidGrantTokenExceptionUnmarshaller());
        this.g.add(new InvalidImportTokenExceptionUnmarshaller());
        this.g.add(new InvalidKeyUsageExceptionUnmarshaller());
        this.g.add(new InvalidMarkerExceptionUnmarshaller());
        this.g.add(new KMSInternalExceptionUnmarshaller());
        this.g.add(new KMSInvalidSignatureExceptionUnmarshaller());
        this.g.add(new KMSInvalidStateExceptionUnmarshaller());
        this.g.add(new KeyUnavailableExceptionUnmarshaller());
        this.g.add(new LimitExceededExceptionUnmarshaller());
        this.g.add(new MalformedPolicyDocumentExceptionUnmarshaller());
        this.g.add(new NotFoundExceptionUnmarshaller());
        this.g.add(new TagExceptionUnmarshaller());
        this.g.add(new UnsupportedOperationExceptionUnmarshaller());
        this.g.add(new JsonErrorUnmarshaller());
        a("kms.us-east-1.amazonaws.com");
        this.f = "kms";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f6535d.addAll(handlerChainFactory.a("/com/amazonaws/services/kms/request.handlers", RequestHandler.class));
        this.f6535d.addAll(handlerChainFactory.a("/com/amazonaws/services/kms/request.handler2s", RequestHandler2.class));
    }

    public final DecryptResult a(DecryptRequest decryptRequest) throws AmazonServiceException, AmazonClientException {
        ExecutionContext a2 = a((AmazonWebServiceRequest) decryptRequest);
        AWSRequestMetrics aWSRequestMetrics = a2.f6611a;
        aWSRequestMetrics.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Request<DecryptRequest> request = null;
        try {
            aWSRequestMetrics.a(AWSRequestMetrics.Field.RequestMarshallTime);
            request = new DecryptRequestMarshaller().marshall(decryptRequest);
            request.a(aWSRequestMetrics);
            aWSRequestMetrics.b(AWSRequestMetrics.Field.RequestMarshallTime);
            request = request;
            return (DecryptResult) a(request, new JsonResponseHandler(new DecryptResultJsonUnmarshaller()), a2).f6543a;
        } finally {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetrics, (Request<?>) request, true);
        }
    }

    public final EncryptResult a(EncryptRequest encryptRequest) throws AmazonServiceException, AmazonClientException {
        ExecutionContext a2 = a((AmazonWebServiceRequest) encryptRequest);
        AWSRequestMetrics aWSRequestMetrics = a2.f6611a;
        aWSRequestMetrics.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Request<EncryptRequest> request = null;
        try {
            aWSRequestMetrics.a(AWSRequestMetrics.Field.RequestMarshallTime);
            request = new EncryptRequestMarshaller().marshall(encryptRequest);
            request.a(aWSRequestMetrics);
            aWSRequestMetrics.b(AWSRequestMetrics.Field.RequestMarshallTime);
            request = request;
            return (EncryptResult) a(request, new JsonResponseHandler(new EncryptResultJsonUnmarshaller()), a2).f6543a;
        } finally {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetrics, (Request<?>) request, true);
        }
    }

    public final GenerateDataKeyResult a(GenerateDataKeyRequest generateDataKeyRequest) throws AmazonServiceException, AmazonClientException {
        ExecutionContext a2 = a((AmazonWebServiceRequest) generateDataKeyRequest);
        AWSRequestMetrics aWSRequestMetrics = a2.f6611a;
        aWSRequestMetrics.a(AWSRequestMetrics.Field.ClientExecuteTime);
        Request<GenerateDataKeyRequest> request = null;
        try {
            aWSRequestMetrics.a(AWSRequestMetrics.Field.RequestMarshallTime);
            request = new GenerateDataKeyRequestMarshaller().marshall(generateDataKeyRequest);
            request.a(aWSRequestMetrics);
            aWSRequestMetrics.b(AWSRequestMetrics.Field.RequestMarshallTime);
            request = request;
            return (GenerateDataKeyResult) a(request, new JsonResponseHandler(new GenerateDataKeyResultJsonUnmarshaller()), a2).f6543a;
        } finally {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            a(aWSRequestMetrics, (Request<?>) request, true);
        }
    }
}
