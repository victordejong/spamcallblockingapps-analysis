package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.URIBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/AmazonHttpClient.class */
public class AmazonHttpClient {

    /* renamed from: b  reason: collision with root package name */
    final HttpClient f6608b;

    /* renamed from: c  reason: collision with root package name */
    final ClientConfiguration f6609c;

    /* renamed from: d  reason: collision with root package name */
    public final RequestMetricCollector f6610d;
    private final HttpRequestFactory f;
    private static final Log e = LogFactory.a("com.amazonaws.request");

    /* renamed from: a  reason: collision with root package name */
    static final Log f6607a = LogFactory.a(AmazonHttpClient.class);

    public AmazonHttpClient(ClientConfiguration clientConfiguration) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f = new HttpRequestFactory();
        this.f6609c = clientConfiguration;
        this.f6608b = httpClient;
        this.f6610d = null;
    }

    @Deprecated
    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient, RequestMetricCollector requestMetricCollector) {
        this.f = new HttpRequestFactory();
        this.f6609c = clientConfiguration;
        this.f6608b = httpClient;
        this.f6610d = requestMetricCollector;
    }

    @Deprecated
    public AmazonHttpClient(ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration), requestMetricCollector);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.amazonaws.http.HttpResponse] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.Date] */
    private static int a(HttpResponse httpResponse, AmazonServiceException amazonServiceException) {
        RuntimeException e2;
        Date date = new Date();
        String str = httpResponse.f6622d.get("Date");
        try {
            if (str != null) {
                try {
                    if (!str.isEmpty()) {
                        httpResponse = DateUtils.b(str);
                        return (int) ((date.getTime() - httpResponse.getTime()) / 1000);
                    }
                } catch (RuntimeException e3) {
                    e2 = e3;
                    httpResponse = 0;
                    f6607a.b("Unable to parse clock skew offset from response: ".concat(String.valueOf((Object) httpResponse)), e2);
                    return 0;
                }
            }
            String message = amazonServiceException.getMessage();
            httpResponse = DateUtils.c(message.substring(message.indexOf("(") + 1, message.contains(" + 15") ? message.indexOf(" + 15") : message.indexOf(" - 15")));
            return (int) ((date.getTime() - httpResponse.getTime()) / 1000);
        } catch (RuntimeException e4) {
            e2 = e4;
        }
    }

    private static long a(int i, RetryPolicy retryPolicy) {
        int i2 = (i - 1) - 1;
        long a2 = retryPolicy.f6771b.a(i2);
        Log log = f6607a;
        if (log.a()) {
            log.b("Retriable error detected, will retry in " + a2 + "ms, attempt number: " + i2);
        }
        try {
            Thread.sleep(a2);
            return a2;
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e2.getMessage(), e2);
        }
    }

    private static AmazonServiceException a(Request<?> request, HttpResponseHandler<AmazonServiceException> httpResponseHandler, HttpResponse httpResponse) throws IOException {
        AmazonServiceException amazonServiceException;
        int i = httpResponse.f6620b;
        try {
            amazonServiceException = httpResponseHandler.handle(httpResponse);
            Log log = e;
            log.b("Received error response: " + amazonServiceException.toString());
        } catch (Exception e2) {
            if (i == 413) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.setServiceName(request.g());
                amazonServiceException.setStatusCode(413);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Client);
                amazonServiceException.setErrorCode("Request entity too large");
            } else if (i == 503 && "Service Unavailable".equalsIgnoreCase(httpResponse.f6619a)) {
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.setServiceName(request.g());
                amazonServiceException.setStatusCode(503);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Service);
                amazonServiceException.setErrorCode("Service unavailable");
            } else if (e2 instanceof IOException) {
                throw ((IOException) e2);
            } else {
                throw new AmazonClientException("Unable to unmarshall error response (" + e2.getMessage() + "). Response Code: " + i + ", Response Text: " + httpResponse.f6619a + ", Response Headers: " + httpResponse.f6622d, e2);
            }
        }
        amazonServiceException.setStatusCode(i);
        amazonServiceException.setServiceName(request.g());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    private static <T> T a(HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) throws IOException {
        try {
            AWSRequestMetrics aWSRequestMetrics = executionContext.f6611a;
            aWSRequestMetrics.a(AWSRequestMetrics.Field.ResponseProcessingTime);
            try {
                AmazonWebServiceResponse<T> handle = httpResponseHandler.handle(httpResponse);
                if (handle != null) {
                    Log log = e;
                    if (log.a()) {
                        log.b("Received successful response: " + httpResponse.f6620b + ", AWS Request ID: " + handle.a());
                    }
                    aWSRequestMetrics.a(AWSRequestMetrics.Field.AWSRequestID, handle.a());
                    return handle.f6536a;
                }
                throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.f6620b + ", Response Text: " + httpResponse.f6619a);
            } finally {
                aWSRequestMetrics.b(AWSRequestMetrics.Field.ResponseProcessingTime);
            }
        } catch (CRC32MismatchException e2) {
            throw e2;
        } catch (IOException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new AmazonClientException("Unable to unmarshall response (" + e4.getMessage() + "). Response Code: " + httpResponse.f6620b + ", Response Text: " + httpResponse.f6619a, e4);
        }
    }

    private static String a(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + StringUtils.SPACE + str2.trim();
    }

    private static <T extends Throwable> T a(T t, AWSRequestMetrics aWSRequestMetrics) {
        aWSRequestMetrics.c(AWSRequestMetrics.Field.Exception);
        aWSRequestMetrics.a(AWSRequestMetrics.Field.Exception, t);
        return t;
    }

    private static List<RequestHandler2> a(ExecutionContext executionContext) {
        List<RequestHandler2> list = executionContext.f6612b;
        if (list == null) {
            return Collections.emptyList();
        }
        for (RequestHandler2 requestHandler2 : list) {
            if (requestHandler2 instanceof CredentialsRequestHandler) {
                ((CredentialsRequestHandler) requestHandler2).a(executionContext.f6614d);
            }
        }
        return list;
    }

    private static void a(Request<?> request, Exception exc) {
        if (request.h() != null) {
            if (request.h().markSupported()) {
                try {
                    request.h().reset();
                } catch (IOException e2) {
                    throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
                }
            } else {
                throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
            }
        }
    }

    private static <T> void a(Request<?> request, List<RequestHandler2> list, Response<T> response) {
        for (RequestHandler2 requestHandler2 : list) {
            requestHandler2.a(request, response);
        }
    }

    private static void a(List<RequestHandler2> list) {
        Iterator<RequestHandler2> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    private boolean a(InputStream inputStream, AmazonClientException amazonClientException, int i, RetryPolicy retryPolicy) {
        int i2 = i - 1;
        int maxErrorRetry = this.f6609c.getMaxErrorRetry();
        if (maxErrorRetry < 0 || !retryPolicy.f6773d) {
            maxErrorRetry = retryPolicy.f6772c;
        }
        if (i2 >= maxErrorRetry) {
            return false;
        }
        if (inputStream == null || inputStream.markSupported()) {
            return retryPolicy.f6770a.a(amazonClientException, i2);
        }
        Log log = f6607a;
        if (!log.a()) {
            return false;
        }
        log.b("Content not repeatable");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0be9  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0ce4  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0d62 A[Catch: IOException -> 0x0d6d, TRY_LEAVE, TryCatch #5 {IOException -> 0x0d6d, blocks: (B:407:0x0d5a, B:409:0x0d62), top: B:422:0x0d5a }] */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0d44 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v626, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v21 */
    /* JADX WARN: Type inference failed for: r17v22 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.amazonaws.http.AmazonHttpClient] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> com.amazonaws.Response<T> b(com.amazonaws.Request<?> r7, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonWebServiceResponse<T>> r8, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonServiceException> r9, com.amazonaws.http.ExecutionContext r10) {
        /*
            Method dump skipped, instructions count: 3452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.b(com.amazonaws.Request, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.ExecutionContext):com.amazonaws.Response");
    }

    public final <T> Response<T> a(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponseHandler<AmazonServiceException> httpResponseHandler2, ExecutionContext executionContext) {
        URI f;
        if (request.i() != null) {
            try {
                String str = request.i() + f.getHost();
                URIBuilder a2 = URIBuilder.a(request.f());
                a2.f6928c = str;
                request.a(new URI(a2.f6926a, a2.f6927b, a2.f6928c, a2.f6929d, a2.e, a2.f, a2.g));
            } catch (URISyntaxException e2) {
                Log log = f6607a;
                if (log.a()) {
                    log.a("Failed to prepend host prefix: " + e2.getMessage(), e2);
                }
            }
        }
        if (executionContext != null) {
            List<RequestHandler2> a3 = a(executionContext);
            AWSRequestMetrics aWSRequestMetrics = executionContext.f6611a;
            try {
                Response<T> b2 = b(request, httpResponseHandler, httpResponseHandler2, executionContext);
                aWSRequestMetrics.a().d();
                a(request, a3, b2);
                return b2;
            } catch (AmazonClientException e3) {
                a(a3);
                throw e3;
            }
        } else {
            throw new AmazonClientException("Internal SDK Error: No execution context parameter specified.");
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }
}
