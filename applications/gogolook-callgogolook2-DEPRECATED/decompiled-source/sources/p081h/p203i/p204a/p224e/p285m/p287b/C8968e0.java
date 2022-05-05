package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/e0.class */
public final class C8968e0 {

    /* renamed from: a */
    public final String f20341a;

    /* renamed from: b */
    public final String f20342b;

    /* renamed from: c */
    public final String f20343c;

    /* renamed from: d */
    public final long f20344d;

    /* renamed from: e */
    public final /* synthetic */ C8943a0 f20345e;

    public C8968e0(C8943a0 a0Var, String str, long j) {
        this.f20345e = a0Var;
        C7021t.m21283b(str);
        C7021t.m21286a(j > 0);
        this.f20341a = String.valueOf(str).concat(":start");
        this.f20342b = String.valueOf(str).concat(":count");
        this.f20343c = String.valueOf(str).concat(":value");
        this.f20344d = j;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16667a() {
        SharedPreferences s;
        this.f20345e.mo16328d();
        long currentTimeMillis = this.f20345e.mo16174e().currentTimeMillis();
        s = this.f20345e.m16753s();
        SharedPreferences.Editor edit = s.edit();
        edit.remove(this.f20342b);
        edit.remove(this.f20343c);
        edit.putLong(this.f20341a, currentTimeMillis);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16666a(String str, long j) {
        SharedPreferences s;
        SharedPreferences s2;
        SharedPreferences s3;
        this.f20345e.mo16328d();
        if (m16664c() == 0) {
            m16667a();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        s = this.f20345e.m16753s();
        long j2 = s.getLong(this.f20342b, 0L);
        if (j2 <= 0) {
            s3 = this.f20345e.m16753s();
            SharedPreferences.Editor edit = s3.edit();
            edit.putString(this.f20343c, str2);
            edit.putLong(this.f20342b, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.f20345e.m16351j().m16700t().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        s2 = this.f20345e.m16753s();
        SharedPreferences.Editor edit2 = s2.edit();
        if (z) {
            edit2.putString(this.f20343c, str2);
        }
        edit2.putLong(this.f20342b, j3);
        edit2.apply();
    }

    @WorkerThread
    /* renamed from: b */
    public final Pair<String, Long> m16665b() {
        long j;
        SharedPreferences s;
        SharedPreferences s2;
        this.f20345e.mo16328d();
        this.f20345e.mo16328d();
        long c = m16664c();
        if (c == 0) {
            m16667a();
            j = 0;
        } else {
            j = Math.abs(c - this.f20345e.mo16174e().currentTimeMillis());
        }
        long j2 = this.f20344d;
        if (j < j2) {
            return null;
        }
        if (j > (j2 << 1)) {
            m16667a();
            return null;
        }
        s = this.f20345e.m16753s();
        String string = s.getString(this.f20343c, null);
        s2 = this.f20345e.m16753s();
        long j3 = s2.getLong(this.f20342b, 0L);
        m16667a();
        return (string == null || j3 <= 0) ? C8943a0.f20197w : new Pair<>(string, Long.valueOf(j3));
    }

    @WorkerThread
    /* renamed from: c */
    public final long m16664c() {
        SharedPreferences s;
        s = this.f20345e.m16753s();
        return s.getLong(this.f20341a, 0L);
    }
}
