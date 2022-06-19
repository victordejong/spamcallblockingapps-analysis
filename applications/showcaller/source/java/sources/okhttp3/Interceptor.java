package okhttp3;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:okhttp3/Interceptor.class */
public interface Interceptor {

    /* loaded from: classes2-dex2jar.jar:okhttp3/Interceptor$Chain.class */
    public interface Chain {
        Call call();

        int connectTimeoutMillis();

        Connection connection();

        Response proceed(Request request);

        int readTimeoutMillis();

        Request request();

        Chain withConnectTimeout(int i, TimeUnit timeUnit);

        Chain withReadTimeout(int i, TimeUnit timeUnit);

        Chain withWriteTimeout(int i, TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    Response intercept(Chain chain);
}
