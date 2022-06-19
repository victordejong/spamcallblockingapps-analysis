package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/U_$B$.class */
public final class U_$B$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ boolean f9427a;

    /* renamed from: b */
    private /* synthetic */ RzpAssist f9428b;

    public U_$B$(RzpAssist rzpAssist, boolean z) {
        this.f9428b = rzpAssist;
        this.f9427a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RzpAssist.access$000(this.f9428b).getSettings().setUseWideViewPort(this.f9427a);
    }
}
