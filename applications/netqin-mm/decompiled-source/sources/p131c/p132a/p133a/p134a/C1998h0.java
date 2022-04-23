package p131c.p132a.p133a.p134a;

import android.content.Context;
import android.content.IntentFilter;
/* renamed from: c.a.a.a.h0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/h0.class */
public final class C1998h0 {

    /* renamed from: a */
    public final Context f7847a;

    /* renamed from: b */
    public final C1996g0 f7848b;

    public C1998h0(Context context, AbstractC2002j jVar) {
        this.f7847a = context;
        this.f7848b = new C1996g0(this, jVar, null);
    }

    /* renamed from: a */
    public final void m31282a() {
        this.f7848b.m31285a(this.f7847a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: b */
    public final AbstractC2002j m31280b() {
        return C1996g0.m31284a(this.f7848b);
    }

    /* renamed from: c */
    public final void m31279c() {
        this.f7848b.m31286a(this.f7847a);
    }
}
