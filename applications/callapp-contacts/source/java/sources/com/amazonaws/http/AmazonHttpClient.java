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

    /* renamed from: b */
    final HttpClient f12052b;

    /* renamed from: c */
    final ClientConfiguration f12053c;

    /* renamed from: d */
    public final RequestMetricCollector f12054d;

    /* renamed from: f */
    private final HttpRequestFactory f12055f;

    /* renamed from: e */
    private static final Log f12051e = LogFactory.m38583a("com.amazonaws.request");

    /* renamed from: a */
    static final Log f12050a = LogFactory.m38584a(AmazonHttpClient.class);

    public AmazonHttpClient(ClientConfiguration clientConfiguration) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f12055f = new HttpRequestFactory();
        this.f12053c = clientConfiguration;
        this.f12052b = httpClient;
        this.f12054d = null;
    }

    @Deprecated
    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient, RequestMetricCollector requestMetricCollector) {
        this.f12055f = new HttpRequestFactory();
        this.f12053c = clientConfiguration;
        this.f12052b = httpClient;
        this.f12054d = requestMetricCollector;
    }

    @Deprecated
    public AmazonHttpClient(ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration), requestMetricCollector);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.Date] */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.util.Date] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.Date] */
    /* renamed from: a */
    private static int m38626a(HttpResponse httpResponse, AmazonServiceException amazonServiceException) {
        RuntimeException e;
        Date date = new Date();
        String str = httpResponse.f12069d.get("Date");
        try {
            if (str != null) {
                try {
                    if (!str.isEmpty()) {
                        httpResponse = DateUtils.m38251b(str);
                        return (int) ((date.getTime() - httpResponse.getTime()) / 1000);
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                    httpResponse = null;
                    f12050a.mo38592b("Unable to parse clock skew offset from response: ".concat(String.valueOf(httpResponse)), e);
                    return 0;
                }
            }
            String message = amazonServiceException.getMessage();
            httpResponse = DateUtils.m38249c(message.substring(message.indexOf("(") + 1, message.contains(" + 15") ? message.indexOf(" + 15") : message.indexOf(" - 15")));
            return (int) ((date.getTime() - httpResponse.getTime()) / 1000);
        } catch (RuntimeException e3) {
            e = e3;
        }
    }

    /* renamed from: a */
    private static long m38632a(int i, RetryPolicy retryPolicy) {
        int i2 = (i - 1) - 1;
        long mo38494a = retryPolicy.f12284b.mo38494a(i2);
        Log log = f12050a;
        if (log.mo38597a()) {
            log.mo38593b("Retriable error detected, will retry in " + mo38494a + "ms, attempt number: " + i2);
        }
        try {
            Thread.sleep(mo38494a);
            return mo38494a;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e.getMessage(), e);
        }
    }

    /* renamed from: a */
    private static AmazonServiceException m38631a(Request<?> request, HttpResponseHandler<AmazonServiceException> httpResponseHandler, HttpResponse httpResponse) throws IOException {
        AmazonServiceException amazonServiceException;
        int i = httpResponse.f12067b;
        try {
            amazonServiceException = httpResponseHandler.handle(httpResponse);
            Log log = f12051e;
            log.mo38593b("Received error response: " + amazonServiceException.toString());
        } catch (Exception e) {
            if (i == 413) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.setServiceName(request.mo38704g());
                amazonServiceException.setStatusCode(413);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Client);
                amazonServiceException.setErrorCode("Request entity too large");
            } else if (i != 503 || !"Service Unavailable".equalsIgnoreCase(httpResponse.f12066a)) {
                if (e instanceof IOException) {
                    throw ((IOException) e);
                }
                throw new AmazonClientException("Unable to unmarshall error response (" + e.getMessage() + "). Response Code: " + i + ", Response Text: " + httpResponse.f12066a + ", Response Headers: " + httpResponse.f12069d, e);
            } else {
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.setServiceName(request.mo38704g());
                amazonServiceException.setStatusCode(503);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Service);
                amazonServiceException.setErrorCode("Service unavailable");
            }
        }
        amazonServiceException.setStatusCode(i);
        amazonServiceException.setServiceName(request.mo38704g());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    /* renamed from: a */
    private static <T> T m38625a(HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) throws IOException {
        try {
            AWSRequestMetrics aWSRequestMetrics = executionContext.f12056a;
            aWSRequestMetrics.mo38281a(AWSRequestMetrics.Field.ResponseProcessingTime);
            try {
                AmazonWebServiceResponse<T> handle = httpResponseHandler.handle(httpResponse);
                if (handle == null) {
                    throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.f12067b + ", Response Text: " + httpResponse.f12066a);
                }
                Log log = f12051e;
                if (log.mo38597a()) {
                    log.mo38593b("Received successful response: " + httpResponse.f12067b + ", AWS Request ID: " + handle.m38721a());
                }
                aWSRequestMetrics.mo38279a(AWSRequestMetrics.Field.AWSRequestID, handle.m38721a());
                return handle.f11951a;
            } finally {
                aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ResponseProcessingTime);
            }
        } catch (CRC32MismatchException e) {
            throw e;
        } catch (IOException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new AmazonClientException("Unable to unmarshall response (" + e3.getMessage() + "). Response Code: " + httpResponse.f12067b + ", Response Text: " + httpResponse.f12066a, e3);
        }
    }

    /* renamed from: a */
    private static String m38623a(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + StringUtils.SPACE + str2.trim();
    }

    /* renamed from: a */
    private static <T extends Throwable> T m38622a(T t, AWSRequestMetrics aWSRequestMetrics) {
        aWSRequestMetrics.mo38275c(AWSRequestMetrics.Field.Exception);
        aWSRequestMetrics.mo38279a(AWSRequestMetrics.Field.Exception, t);
        return t;
    }

    /* renamed from: a */
    private static List<RequestHandler2> m38627a(ExecutionContext executionContext) {
        List<RequestHandler2> list = executionContext.f12057b;
        if (list == null) {
            return Collections.emptyList();
        }
        for (RequestHandler2 requestHandler2 : list) {
            if (requestHandler2 instanceof CredentialsRequestHandler) {
                ((CredentialsRequestHandler) requestHandler2).m38636a(executionContext.f12059d);
            }
        }
        return list;
    }

    /* renamed from: a */
    private static void m38629a(Request<?> request, Exception exc) {
        if (request.mo38703h() == null) {
            return;
        }
        if (!request.mo38703h().markSupported()) {
            throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
        }
        try {
            request.mo38703h().reset();
        } catch (IOException e) {
            throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
        }
    }

    /* renamed from: a */
    private static <T> void m38628a(Request<?> request, List<RequestHandler2> list, Response<T> response) {
        for (RequestHandler2 requestHandler2 : list) {
            requestHandler2.mo38633a(request, response);
        }
    }

    /* renamed from: a */
    private static void m38621a(List<RequestHandler2> list) {
        Iterator<RequestHandler2> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    private boolean m38624a(InputStream inputStream, AmazonClientException amazonClientException, int i, RetryPolicy retryPolicy) {
        int i2 = i - 1;
        int maxErrorRetry = this.f12053c.getMaxErrorRetry();
        if (maxErrorRetry < 0 || !retryPolicy.f12286d) {
            maxErrorRetry = retryPolicy.f12285c;
        }
        if (i2 >= maxErrorRetry) {
            return false;
        }
        if (inputStream == null || inputStream.markSupported()) {
            return retryPolicy.f12283a.mo38438a(amazonClientException, i2);
        }
        Log log = f12050a;
        if (!log.mo38597a()) {
            return false;
        }
        log.mo38593b("Content not repeatable");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:356:0x0be9  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0ce4  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0d62 A[Catch: IOException -> 0x0d6d, TRY_LEAVE, TryCatch #5 {IOException -> 0x0d6d, blocks: (B:407:0x0d5a, B:409:0x0d62), top: B:422:0x0d5a }] */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0d44 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v626, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> com.amazonaws.Response<T> m38620b(com.amazonaws.Request<?> r7, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonWebServiceResponse<T>> r8, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonServiceException> r9, com.amazonaws.http.ExecutionContext r10) {
        /*
            Method dump skipped, instructions count: 3452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.m38620b(com.amazonaws.Request, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.ExecutionContext):com.amazonaws.Response");
    }

    /* renamed from: a */
    public final <T> Response<T> m38630a(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponseHandler<AmazonServiceException> httpResponseHandler2, ExecutionContext executionContext) {
        URI mo38705f;
        if (request.mo38702i() != null) {
            try {
                String str = request.mo38702i() + mo38705f.getHost();
                URIBuilder m38214a = URIBuilder.m38214a(request.mo38705f());
                m38214a.f12522c = str;
                request.mo38713a(new URI(m38214a.f12520a, m38214a.f12521b, m38214a.f12522c, m38214a.f12523d, m38214a.f12524e, m38214a.f12525f, m38214a.f12526g));
            } catch (URISyntaxException e) {
                Log log = f12050a;
                if (log.mo38597a()) {
                    log.mo38595a("Failed to prepend host prefix: " + e.getMessage(), e);
                }
            }
        }
        if (executionContext != null) {
            List<RequestHandler2> m38627a = m38627a(executionContext);
            AWSRequestMetrics aWSRequestMetrics = executionContext.f12056a;
            try {
                Response<T> m38620b = m38620b(request, httpResponseHandler, httpResponseHandler2, executionContext);
                aWSRequestMetrics.m38282a().mo38215d();
                m38628a(request, m38627a, m38620b);
                return m38620b;
            } catch (AmazonClientException e2) {
                m38621a(m38627a);
                throw e2;
            }
        }
        throw new AmazonClientException("Internal SDK Error: No execution context parameter specified.");
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }
}
