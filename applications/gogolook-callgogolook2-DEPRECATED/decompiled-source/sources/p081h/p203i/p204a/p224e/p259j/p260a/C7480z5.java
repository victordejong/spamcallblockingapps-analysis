package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.VideoController;
/* renamed from: h.i.a.e.j.a.z5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/z5.class */
public final class C7480z5 extends C7454x3 {

    /* renamed from: c */
    public final /* synthetic */ C7468y5 f17577c;

    public C7480z5(C7468y5 y5Var) {
        this.f17577c = y5Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.C7454x3, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        VideoController videoController;
        videoController = this.f17577c.f17553c;
        videoController.zza(this.f17577c.m20474o());
        super.onAdFailedToLoad(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.C7454x3, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        videoController = this.f17577c.f17553c;
        videoController.zza(this.f17577c.m20474o());
        super.onAdLoaded();
    }
}
