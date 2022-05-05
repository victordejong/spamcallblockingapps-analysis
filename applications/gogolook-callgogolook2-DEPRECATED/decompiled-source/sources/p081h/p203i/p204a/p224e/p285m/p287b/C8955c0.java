package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/c0.class */
public final class C8955c0 {

    /* renamed from: a */
    public final String f20241a;

    /* renamed from: b */
    public final boolean f20242b = true;

    /* renamed from: c */
    public boolean f20243c;

    /* renamed from: d */
    public boolean f20244d;

    /* renamed from: e */
    public final /* synthetic */ C8943a0 f20245e;

    public C8955c0(C8943a0 a0Var, String str, boolean z) {
        this.f20245e = a0Var;
        C7021t.m21283b(str);
        this.f20241a = str;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16744a(boolean z) {
        SharedPreferences s;
        s = this.f20245e.m16753s();
        SharedPreferences.Editor edit = s.edit();
        edit.putBoolean(this.f20241a, z);
        edit.apply();
        this.f20244d = z;
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16745a() {
        SharedPreferences s;
        if (!this.f20243c) {
            this.f20243c = true;
            s = this.f20245e.m16753s();
            this.f20244d = s.getBoolean(this.f20241a, this.f20242b);
        }
        return this.f20244d;
    }
}
