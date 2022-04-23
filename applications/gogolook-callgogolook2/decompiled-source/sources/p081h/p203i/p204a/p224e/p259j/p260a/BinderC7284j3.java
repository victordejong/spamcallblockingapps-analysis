package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.doubleclick.AppEventListener;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.j3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/j3.class */
public final class BinderC7284j3 extends AbstractBinderC7431v4 {

    /* renamed from: a */
    public final AppEventListener f17355a;

    public BinderC7284j3(AppEventListener appEventListener) {
        this.f17355a = appEventListener;
    }

    /* renamed from: G0 */
    public final AppEventListener m20883G0() {
        return this.f17355a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7419u4
    public final void onAppEvent(String str, String str2) {
        this.f17355a.onAppEvent(str, str2);
    }
}
