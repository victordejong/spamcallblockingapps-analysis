package p081h.p203i.p204a.p224e.p235d.p240n;

import android.util.Log;
/* renamed from: h.i.a.e.d.n.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/k.class */
public final class C6999k {

    /* renamed from: a */
    public final String f17138a;

    /* renamed from: b */
    public final String f17139b;

    public C6999k(String str) {
        this(str, null);
    }

    public C6999k(String str, String str2) {
        C7021t.m21289a(str, (Object) "log tag cannot be null");
        C7021t.m21284a(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f17138a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f17139b = null;
        } else {
            this.f17139b = str2;
        }
    }

    /* renamed from: a */
    public final String m21340a(String str) {
        String str2 = this.f17139b;
        return str2 == null ? str : str2.concat(str);
    }

    /* renamed from: a */
    public final void m21339a(String str, String str2) {
        if (m21341a(3)) {
            m21340a(str2);
        }
    }

    /* renamed from: a */
    public final void m21338a(String str, String str2, Throwable th) {
        if (m21341a(6)) {
            Log.e(str, m21340a(str2), th);
        }
    }

    /* renamed from: a */
    public final boolean m21341a(int i) {
        return Log.isLoggable(this.f17138a, i);
    }

    /* renamed from: b */
    public final void m21337b(String str, String str2) {
        if (m21341a(6)) {
            Log.e(str, m21340a(str2));
        }
    }

    /* renamed from: b */
    public final void m21336b(String str, String str2, Throwable th) {
        if (m21341a(5)) {
            m21340a(str2);
        }
    }

    /* renamed from: c */
    public final void m21335c(String str, String str2) {
        if (m21341a(4)) {
            m21340a(str2);
        }
    }

    /* renamed from: d */
    public final void m21334d(String str, String str2) {
        if (m21341a(2)) {
            m21340a(str2);
        }
    }

    /* renamed from: e */
    public final void m21333e(String str, String str2) {
        if (m21341a(5)) {
            m21340a(str2);
        }
    }
}
