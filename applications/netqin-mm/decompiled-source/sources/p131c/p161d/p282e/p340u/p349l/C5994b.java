package p131c.p161d.p282e.p340u.p349l;

import android.os.Bundle;
import p131c.p161d.p282e.p340u.p345h.C5969a;
/* renamed from: c.d.e.u.l.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/l/b.class */
public final class C5994b {

    /* renamed from: b */
    public static final C5969a f19472b = C5969a.m22496a();

    /* renamed from: a */
    public final Bundle f19473a;

    public C5994b() {
        this(new Bundle());
    }

    public C5994b(Bundle bundle) {
        this.f19473a = (Bundle) bundle.clone();
    }

    /* renamed from: a */
    public boolean m22372a(String str) {
        return str != null && this.f19473a.containsKey(str);
    }

    /* renamed from: b */
    public C5995c<Boolean> m22371b(String str) {
        if (!m22372a(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22364b((Boolean) this.f19473a.get(str));
        } catch (ClassCastException e) {
            f19472b.m22495a(String.format("Metadata key %s contains type other than boolean: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }

    /* renamed from: c */
    public C5995c<Float> m22370c(String str) {
        if (!m22372a(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22364b((Float) this.f19473a.get(str));
        } catch (ClassCastException e) {
            f19472b.m22495a(String.format("Metadata key %s contains type other than float: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }

    /* renamed from: d */
    public final C5995c<Integer> m22369d(String str) {
        if (!m22372a(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22364b((Integer) this.f19473a.get(str));
        } catch (ClassCastException e) {
            f19472b.m22495a(String.format("Metadata key %s contains type other than int: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }

    /* renamed from: e */
    public C5995c<Long> m22368e(String str) {
        C5995c<Integer> d = m22369d(str);
        return d.m22365b() ? C5995c.m22366a(Long.valueOf(d.m22367a().intValue())) : C5995c.m22363c();
    }
}
