package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.q9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q9.class */
public final class BinderC7376q9 extends AbstractBinderC7447w8 {

    /* renamed from: a */
    public final NativeCustomTemplateAd.OnCustomClickListener f17431a;

    public BinderC7376q9(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.f17431a = onCustomClickListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7435v8
    /* renamed from: a */
    public final void mo20631a(AbstractC7326m8 m8Var, String str) {
        this.f17431a.onCustomClick(C7350o8.m20739a(m8Var), str);
    }
}
