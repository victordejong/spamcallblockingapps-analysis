package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/f0.class */
public final class C8974f0 {

    /* renamed from: a */
    public final String f20356a;

    /* renamed from: b */
    public boolean f20357b;

    /* renamed from: c */
    public String f20358c;

    /* renamed from: d */
    public final /* synthetic */ C8943a0 f20359d;

    public C8974f0(C8943a0 a0Var, String str, String str2) {
        this.f20359d = a0Var;
        C7021t.m21283b(str);
        this.f20356a = str;
    }

    @WorkerThread
    /* renamed from: a */
    public final String m16663a() {
        SharedPreferences s;
        if (!this.f20357b) {
            this.f20357b = true;
            s = this.f20359d.m16753s();
            this.f20358c = s.getString(this.f20356a, null);
        }
        return this.f20358c;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16662a(String str) {
        SharedPreferences s;
        if (!C8959c4.m16705e(str, this.f20358c)) {
            s = this.f20359d.m16753s();
            SharedPreferences.Editor edit = s.edit();
            edit.putString(this.f20356a, str);
            edit.apply();
            this.f20358c = str;
        }
    }
}
