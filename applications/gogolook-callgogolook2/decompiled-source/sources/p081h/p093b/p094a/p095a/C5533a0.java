package p081h.p093b.p094a.p095a;

import android.content.Context;
import android.content.IntentFilter;
/* renamed from: h.b.a.a.a0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/a0.class */
public final class C5533a0 {

    /* renamed from: a */
    public final Context f13803a;

    /* renamed from: b */
    public final C5536b0 f13804b;

    public C5533a0(Context context, AbstractC5550h hVar) {
        this.f13803a = context;
        this.f13804b = new C5536b0(this, hVar, null);
    }

    /* renamed from: a */
    public final void m25242a() {
        this.f13804b.m25193a(this.f13803a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: b */
    public final AbstractC5550h m25240b() {
        return C5536b0.m25192a(this.f13804b);
    }

    /* renamed from: c */
    public final void m25239c() {
        this.f13804b.m25194a(this.f13803a);
    }
}
