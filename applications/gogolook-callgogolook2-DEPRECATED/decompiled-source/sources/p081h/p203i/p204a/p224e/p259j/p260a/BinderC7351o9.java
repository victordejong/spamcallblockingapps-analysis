package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.o9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o9.class */
public final class BinderC7351o9 extends AbstractBinderC7375q8 {

    /* renamed from: a */
    public final NativeAppInstallAd.OnAppInstallAdLoadedListener f17420a;

    public BinderC7351o9(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.f17420a = onAppInstallAdLoadedListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7362p8
    /* renamed from: a */
    public final void mo20738a(AbstractC7250g8 g8Var) {
        this.f17420a.onAppInstallAdLoaded(new C7276i8(g8Var));
    }
}
