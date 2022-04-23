package p131c.p132a.p133a.p134a;

import android.text.TextUtils;
/* renamed from: c.a.a.a.d0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/d0.class */
public final class C1988d0 {

    /* renamed from: a */
    public String f7823a;

    public /* synthetic */ C1988d0(C1986c0 c0Var) {
    }

    /* renamed from: a */
    public final C1988d0 m31315a(String str) {
        this.f7823a = str;
        return this;
    }

    /* renamed from: a */
    public final C1990e0 m31316a() {
        if (!TextUtils.isEmpty(this.f7823a)) {
            return new C1990e0(this.f7823a, null, null);
        }
        throw new IllegalArgumentException("SKU must be set.");
    }
}
