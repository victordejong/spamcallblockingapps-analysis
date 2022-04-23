package okhttp3;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:okhttp3/Call.class */
public interface Call extends Cloneable {

    /* loaded from: classes3-dex2jar.jar:okhttp3/Call$Factory.class */
    public interface Factory {
        Call newCall(Request request);
    }

    void cancel();

    void enqueue(Callback callback);

    Response execute() throws IOException;

    boolean isCanceled();

    Request request();
}
