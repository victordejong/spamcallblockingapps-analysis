package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.qi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qi.class */
public final class BinderC12851qi extends AbstractBinderC12547fc {

    /* renamed from: a */
    private final /* synthetic */ C12849qg f49738a;

    /* JADX INFO: Access modifiers changed from: private */
    public BinderC12851qi(C12849qg c12849qg) {
        this.f49738a = c12849qg;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12542ey
    /* renamed from: a */
    public final void mo14238a(AbstractC12532eo abstractC12532eo, String str) {
        if (this.f49738a.f49735b == null) {
            return;
        }
        this.f49738a.f49735b.onCustomClick(this.f49738a.m14240a(abstractC12532eo), str);
    }
}
