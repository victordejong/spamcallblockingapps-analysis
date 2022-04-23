package okhttp3;

import okio.AsyncTimeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/RealCall$1.class */
class RealCall$1 extends AsyncTimeout {
    final /* synthetic */ RealCall this$0;

    RealCall$1(RealCall realCall) {
        this.this$0 = realCall;
    }

    protected void timedOut() {
        this.this$0.cancel();
    }
}
