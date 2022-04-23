package com.lidroid.xutils.http.client;

import android.os.SystemClock;
import com.lidroid.xutils.util.LogUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/RetryHandler.class */
public class RetryHandler implements HttpRequestRetryHandler {
    private static final int RETRY_SLEEP_INTERVAL = 500;
    private final int maxRetries;
    private static HashSet<Class<?>> exceptionWhiteList = new HashSet<>();
    private static HashSet<Class<?>> exceptionBlackList = new HashSet<>();

    static {
        exceptionWhiteList.add(NoHttpResponseException.class);
        exceptionWhiteList.add(UnknownHostException.class);
        exceptionWhiteList.add(SocketException.class);
        exceptionBlackList.add(InterruptedIOException.class);
        exceptionBlackList.add(SSLHandshakeException.class);
    }

    public RetryHandler(int i) {
        this.maxRetries = i;
    }

    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        String method;
        boolean z = false;
        if (iOException != null) {
            if (httpContext == null) {
                z = false;
            } else {
                Object attribute = httpContext.getAttribute("http.request_sent");
                if (attribute != null) {
                    ((Boolean) attribute).booleanValue();
                }
                boolean z2 = true;
                if (i <= this.maxRetries && !exceptionBlackList.contains(iOException.getClass())) {
                    exceptionWhiteList.contains(iOException.getClass());
                } else {
                    z2 = false;
                }
                if (z2) {
                    try {
                        Object attribute2 = httpContext.getAttribute("http.request");
                        if (attribute2 != null) {
                            if (attribute2 instanceof HttpRequestBase) {
                                method = ((HttpRequestBase) attribute2).getMethod();
                            } else if (attribute2 instanceof RequestWrapper) {
                                method = ((RequestWrapper) attribute2).getMethod();
                            }
                            z2 = "GET".equals(method);
                        } else {
                            LogUtils.m2009e("retry error, curr request is null");
                            z2 = false;
                        }
                    } catch (Throwable th) {
                        LogUtils.m2008e("retry error", th);
                        z2 = false;
                    }
                }
                z = z2;
                if (z2) {
                    SystemClock.sleep(500L);
                    z = z2;
                }
            }
        }
        return z;
    }
}
