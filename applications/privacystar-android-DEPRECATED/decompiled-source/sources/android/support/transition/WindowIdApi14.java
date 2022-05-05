package android.support.transition;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:android/support/transition/WindowIdApi14.class */
class WindowIdApi14 implements WindowIdImpl {
    private final IBinder mToken;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi14(IBinder iBinder) {
        this.mToken = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdApi14) && ((WindowIdApi14) obj).mToken.equals(this.mToken);
    }

    public int hashCode() {
        return this.mToken.hashCode();
    }
}
