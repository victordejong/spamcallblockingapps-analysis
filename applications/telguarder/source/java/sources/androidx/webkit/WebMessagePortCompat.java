package androidx.webkit;

import android.os.Handler;
import android.webkit.WebMessagePort;
import java.lang.reflect.InvocationHandler;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebMessagePortCompat.class */
public abstract class WebMessagePortCompat {

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat.class */
    public static abstract class WebMessageCallbackCompat {
        public void onMessage(WebMessagePortCompat webMessagePortCompat, WebMessageCompat webMessageCompat) {
        }
    }

    public abstract void close();

    public abstract WebMessagePort getFrameworkPort();

    public abstract InvocationHandler getInvocationHandler();

    public abstract void postMessage(WebMessageCompat webMessageCompat);

    public abstract void setWebMessageCallback(Handler handler, WebMessageCallbackCompat webMessageCallbackCompat);

    public abstract void setWebMessageCallback(WebMessageCallbackCompat webMessageCallbackCompat);
}
