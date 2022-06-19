package okhttp3;
/* loaded from: classes2-dex2jar.jar:okhttp3/Call.class */
public interface Call extends Cloneable {

    /* loaded from: classes2-dex2jar.jar:okhttp3/Call$Factory.class */
    public interface Factory {
        Call newCall(Request request);
    }

    void cancel();

    Call clone();

    void enqueue(Callback callback);

    Response execute();

    boolean isCanceled();

    boolean isExecuted();

    Request request();
}
