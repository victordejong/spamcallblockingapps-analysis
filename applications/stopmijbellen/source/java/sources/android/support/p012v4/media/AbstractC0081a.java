package android.support.p012v4.media;

import android.graphics.Path;
import android.graphics.Typeface;
import android.view.View;
import java.util.Set;
import p008a7.C0034a;
import p008a7.C0035b;
import p008a7.C0042i;
import p008a7.EnumC0038e;
import p068d2.C2387q;
import p068d2.C2402s;
import p275w5.AbstractC4739b;
import p291y.C4951d;
import p305z4.AbstractC5080d;
/* renamed from: android.support.v4.media.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/a.class */
public abstract class AbstractC0081a implements AbstractC5080d {
    /* renamed from: m */
    public static AbstractC0081a m8763m(C0034a c0034a, C0035b c0035b) {
        if (C4951d.f15111i.f11925a) {
            return new C0042i(c0034a, c0035b);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: A */
    public abstract void mo58A(int i);

    /* renamed from: B */
    public abstract void mo57B(Typeface typeface, boolean z);

    /* renamed from: C */
    public void mo1955C(C2387q c2387q, String str, int i) {
    }

    /* renamed from: D */
    public void mo1954D(C2387q c2387q) {
    }

    /* renamed from: E */
    public void mo1953E(C2387q c2387q) {
    }

    /* renamed from: F */
    public abstract void mo1952F(C2387q c2387q);

    /* renamed from: G */
    public abstract void mo1951G(C2402s c2402s);

    /* renamed from: H */
    public abstract void mo4830H(String str);

    /* renamed from: I */
    public abstract void mo2200I(Runnable runnable);

    /* renamed from: J */
    public abstract void mo8769J(View view);

    /* renamed from: K */
    public abstract void mo8768K(View view);

    /* renamed from: L */
    public abstract void mo8767L();

    @Override // p305z4.AbstractC5080d
    /* renamed from: a */
    public Object mo40a(Class cls) {
        AbstractC4739b mo38c = mo38c(cls);
        if (mo38c == null) {
            return null;
        }
        return mo38c.get();
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: b */
    public Set mo39b(Class cls) {
        return (Set) mo37d(cls).get();
    }

    /* renamed from: f */
    public abstract void mo8766f(View view, EnumC0038e enumC0038e, String str);

    /* renamed from: g */
    public abstract void mo7274g(int i, long j);

    /* renamed from: h */
    public abstract void mo7273h(int i);

    /* renamed from: i */
    public void m8765i(int i, Number number) {
        if (number != null) {
            mo7274g(i, number.longValue());
        } else {
            mo7273h(i);
        }
    }

    /* renamed from: j */
    public abstract void mo7272j(int i, String str);

    /* renamed from: k */
    public void m8764k(int i, String str) {
        if (str != null) {
            mo7272j(i, str);
        } else {
            mo7273h(i);
        }
    }

    /* renamed from: l */
    public abstract void mo7271l();

    /* renamed from: n */
    public abstract long mo7270n();

    /* renamed from: o */
    public abstract void mo2198o(Runnable runnable);

    /* renamed from: p */
    public abstract long mo7269p();

    /* renamed from: q */
    public abstract void mo8762q();

    /* renamed from: r */
    public String mo3398r() {
        return null;
    }

    /* renamed from: s */
    public String mo3399s() {
        return null;
    }

    /* renamed from: t */
    public abstract Path mo2270t(float f, float f2, float f3, float f4);

    /* renamed from: u */
    public String mo3397u() {
        return null;
    }

    /* renamed from: v */
    public abstract boolean mo2197v();

    /* renamed from: w */
    public void mo1948w(C2387q c2387q) {
    }

    /* renamed from: x */
    public void mo1947x(C2387q c2387q) {
    }

    /* renamed from: y */
    public void mo1946y(C2387q c2387q) {
    }

    /* renamed from: z */
    public abstract void mo4829z();
}
