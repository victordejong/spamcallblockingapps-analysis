package com.lidroid.xutils.http;

import android.os.SystemClock;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.FileDownloadHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.callback.StringDownloadHandler;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/HttpHandler.class */
public class HttpHandler<T> extends PriorityAsyncTask<Object, Object, Void> implements RequestCallBackHandler {
    private static final int UPDATE_FAILURE = 3;
    private static final int UPDATE_LOADING = 2;
    private static final int UPDATE_START = 1;
    private static final int UPDATE_SUCCESS = 4;
    private static final NotUseApacheRedirectHandler notUseApacheRedirectHandler = new NotUseApacheRedirectHandler();
    private RequestCallBack<T> callback;
    private String charset;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private HttpRedirectHandler httpRedirectHandler;
    private long lastUpdateTime;
    private HttpRequestBase request;
    private String requestMethod;
    private String requestUrl;
    private boolean isUploading = true;
    private int retriedCount = 0;
    private String fileSavePath = null;
    private boolean isDownloadingFile = false;
    private boolean autoResume = false;
    private boolean autoRename = false;
    private State state = State.WAITING;
    private long expiry = HttpCache.getDefaultExpiryTime();

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler.class */
    private static final class NotUseApacheRedirectHandler implements RedirectHandler {
        private NotUseApacheRedirectHandler() {
        }

        public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) {
            return null;
        }

        public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/HttpHandler$State.class */
    public enum State {
        WAITING(0),
        STARTED(1),
        LOADING(2),
        FAILURE(3),
        CANCELLED(4),
        SUCCESS(5);
        
        private int value;

        State(int i) {
            this.value = 0;
            this.value = i;
        }

        public static State valueOf(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? FAILURE : SUCCESS : CANCELLED : FAILURE : LOADING : STARTED : WAITING;
        }

        public int value() {
            return this.value;
        }
    }

    public HttpHandler(AbstractHttpClient abstractHttpClient, HttpContext httpContext, String str, RequestCallBack<T> requestCallBack) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.callback = requestCallBack;
        this.charset = str;
        abstractHttpClient.setRedirectHandler(notUseApacheRedirectHandler);
    }

    private ResponseInfo<T> handleResponse(HttpResponse httpResponse) {
        if (httpResponse != null) {
            File file = null;
            String str = null;
            if (isCancelled()) {
                return null;
            }
            StatusLine statusLine = httpResponse.getStatusLine();
            int statusCode = statusLine.getStatusCode();
            if (statusCode < 300) {
                HttpEntity entity = httpResponse.getEntity();
                if (entity != null) {
                    this.isUploading = false;
                    if (this.isDownloadingFile) {
                        this.autoResume = this.autoResume && OtherUtils.isSupportRange(httpResponse);
                        if (this.autoRename) {
                            str = OtherUtils.getFileNameFromHttpResponse(httpResponse);
                        }
                        file = new FileDownloadHandler().handleEntity(entity, this, this.fileSavePath, this.autoResume, str);
                    } else {
                        String handleEntity = new StringDownloadHandler().handleEntity(entity, this, this.charset);
                        HttpCache httpCache = HttpUtils.sHttpCache;
                        file = handleEntity;
                        if (httpCache.isEnabled(this.requestMethod)) {
                            httpCache.put(this.requestUrl, handleEntity, this.expiry);
                            file = handleEntity;
                        }
                    }
                }
                return new ResponseInfo<>(httpResponse, file, false);
            } else if (statusCode == 301 || statusCode == 302) {
                if (this.httpRedirectHandler == null) {
                    this.httpRedirectHandler = new DefaultHttpRedirectHandler();
                }
                HttpRequestBase directRequest = this.httpRedirectHandler.getDirectRequest(httpResponse);
                if (directRequest != null) {
                    return sendRequest(directRequest);
                }
                return null;
            } else if (statusCode == 416) {
                throw new HttpException(statusCode, "maybe the file has downloaded completely");
            } else {
                throw new HttpException(statusCode, statusLine.getReasonPhrase());
            }
        } else {
            throw new HttpException("response is null");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0133 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.lidroid.xutils.http.ResponseInfo<T> sendRequest(org.apache.http.client.methods.HttpRequestBase r7) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.HttpHandler.sendRequest(org.apache.http.client.methods.HttpRequestBase):com.lidroid.xutils.http.ResponseInfo");
    }

    @Override // com.lidroid.xutils.task.PriorityAsyncTask, com.lidroid.xutils.task.TaskHandler
    public void cancel() {
        this.state = State.CANCELLED;
        HttpRequestBase httpRequestBase = this.request;
        if (httpRequestBase != null && !httpRequestBase.isAborted()) {
            try {
                this.request.abort();
            } catch (Throwable th) {
            }
        }
        if (!isCancelled()) {
            try {
                cancel(true);
            } catch (Throwable th2) {
            }
        }
        RequestCallBack<T> requestCallBack = this.callback;
        if (requestCallBack != null) {
            requestCallBack.onCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.lidroid.xutils.task.PriorityAsyncTask
    public Void doInBackground(Object... objArr) {
        State state = this.state;
        State state2 = State.CANCELLED;
        if (state == state2 || objArr == null || objArr.length == 0) {
            return null;
        }
        if (objArr.length > 3) {
            String valueOf = String.valueOf(objArr[1]);
            this.fileSavePath = valueOf;
            this.isDownloadingFile = valueOf != null;
            this.autoResume = ((Boolean) objArr[2]).booleanValue();
            this.autoRename = ((Boolean) objArr[3]).booleanValue();
        }
        try {
            if (this.state == state2) {
                return null;
            }
            HttpRequestBase httpRequestBase = (HttpRequestBase) objArr[0];
            this.request = httpRequestBase;
            String uri = httpRequestBase.getURI().toString();
            this.requestUrl = uri;
            RequestCallBack<T> requestCallBack = this.callback;
            if (requestCallBack != null) {
                requestCallBack.setRequestUrl(uri);
            }
            publishProgress(1);
            this.lastUpdateTime = SystemClock.uptimeMillis();
            ResponseInfo<T> sendRequest = sendRequest(this.request);
            if (sendRequest == null) {
                return null;
            }
            publishProgress(4, sendRequest);
            return null;
        } catch (HttpException e) {
            publishProgress(3, e, e.getMessage());
            return null;
        }
    }

    public RequestCallBack<T> getRequestCallBack() {
        return this.callback;
    }

    public State getState() {
        return this.state;
    }

    @Override // com.lidroid.xutils.task.PriorityAsyncTask
    protected void onProgressUpdate(Object... objArr) {
        if (this.state != State.CANCELLED && objArr != null && objArr.length != 0 && this.callback != null) {
            int intValue = ((Integer) objArr[0]).intValue();
            if (intValue == 1) {
                this.state = State.STARTED;
                this.callback.onStart();
            } else if (intValue != 2) {
                if (intValue != 3) {
                    if (intValue == 4 && objArr.length == 2) {
                        this.state = State.SUCCESS;
                        this.callback.onSuccess((ResponseInfo) objArr[1]);
                    }
                } else if (objArr.length == 3) {
                    this.state = State.FAILURE;
                    this.callback.onFailure((HttpException) objArr[1], (String) objArr[2]);
                }
            } else if (objArr.length == 3) {
                this.state = State.LOADING;
                this.callback.onLoading(Long.valueOf(String.valueOf(objArr[1])).longValue(), Long.valueOf(String.valueOf(objArr[2])).longValue(), this.isUploading);
            }
        }
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setHttpRedirectHandler(HttpRedirectHandler httpRedirectHandler) {
        if (httpRedirectHandler != null) {
            this.httpRedirectHandler = httpRedirectHandler;
        }
    }

    public void setRequestCallBack(RequestCallBack<T> requestCallBack) {
        this.callback = requestCallBack;
    }

    @Override // com.lidroid.xutils.http.callback.RequestCallBackHandler
    public boolean updateProgress(long j, long j2, boolean z) {
        boolean z2 = true;
        if (!(this.callback == null || this.state == State.CANCELLED)) {
            if (z) {
                publishProgress(2, Long.valueOf(j), Long.valueOf(j2));
            } else {
                long uptimeMillis = SystemClock.uptimeMillis();
                if (uptimeMillis - this.lastUpdateTime >= this.callback.getRate()) {
                    this.lastUpdateTime = uptimeMillis;
                    publishProgress(2, Long.valueOf(j), Long.valueOf(j2));
                }
            }
        }
        if (this.state == State.CANCELLED) {
            z2 = false;
        }
        return z2;
    }
}
