package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.internal.ads.zzafa;
import com.google.android.gms.internal.ads.zzafo;
import com.google.android.gms.internal.ads.zzagk;
/* renamed from: c.d.b.d.g.a.w */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w.class */
public final class BinderC4160w extends zzafo {

    /* renamed from: a */
    public final /* synthetic */ zzagk f15892a;

    public BinderC4160w(zzagk zzagkVar) {
        this.f15892a = zzagkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafl
    /* renamed from: a */
    public final void mo16802a(zzafa zzafaVar) {
        NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener;
        NativeCustomTemplateAd a;
        onCustomTemplateAdLoadedListener = this.f15892a.f24081a;
        a = this.f15892a.m16778a(zzafaVar);
        onCustomTemplateAdLoadedListener.mo18040a(a);
    }
}
