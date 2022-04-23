package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/d0.class */
public final class C8961d0 {

    /* renamed from: a */
    public final String f20262a;

    /* renamed from: b */
    public final long f20263b;

    /* renamed from: c */
    public boolean f20264c;

    /* renamed from: d */
    public long f20265d;

    /* renamed from: e */
    public final /* synthetic */ C8943a0 f20266e;

    public C8961d0(C8943a0 a0Var, String str, long j) {
        this.f20266e = a0Var;
        C7021t.m21283b(str);
        this.f20262a = str;
        this.f20263b = j;
    }

    @WorkerThread
    /* renamed from: a */
    public final long m16696a() {
        SharedPreferences s;
        if (!this.f20264c) {
            this.f20264c = true;
            s = this.f20266e.m16753s();
            this.f20265d = s.getLong(this.f20262a, this.f20263b);
        }
        return this.f20265d;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16695a(long j) {
        SharedPreferences s;
        s = this.f20266e.m16753s();
        SharedPreferences.Editor edit = s.edit();
        edit.putLong(this.f20262a, j);
        edit.apply();
        this.f20265d = j;
    }
}
