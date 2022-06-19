package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gb.class */
public final class BinderC12573gb extends AbstractBinderC12547fc {

    /* renamed from: a */
    private final /* synthetic */ C12570fz f49294a;

    /* JADX INFO: Access modifiers changed from: private */
    public BinderC12573gb(C12570fz c12570fz) {
        this.f49294a = c12570fz;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12542ey
    /* renamed from: a */
    public final void mo14238a(AbstractC12532eo abstractC12532eo, String str) {
        if (this.f49294a.f49291b == null) {
            return;
        }
        this.f49294a.f49291b.onCustomClick(this.f49294a.m14644a(abstractC12532eo), str);
    }
}
