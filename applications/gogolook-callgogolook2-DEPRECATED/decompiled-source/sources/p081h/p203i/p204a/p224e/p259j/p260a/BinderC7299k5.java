package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.MuteThisAdListener;
/* renamed from: h.i.a.e.j.a.k5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k5.class */
public final class BinderC7299k5 extends AbstractBinderC7286j5 {

    /* renamed from: a */
    public final MuteThisAdListener f17366a;

    public BinderC7299k5(MuteThisAdListener muteThisAdListener) {
        this.f17366a = muteThisAdListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7273i5
    public final void onAdMuted() {
        this.f17366a.onAdMuted();
    }
}
