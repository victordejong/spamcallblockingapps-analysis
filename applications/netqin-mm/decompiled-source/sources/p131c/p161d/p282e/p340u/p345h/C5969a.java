package p131c.p161d.p282e.p340u.p345h;

import java.util.Locale;
/* renamed from: c.d.e.u.h.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/h/a.class */
public class C5969a {

    /* renamed from: c */
    public static volatile C5969a f19381c;

    /* renamed from: a */
    public final C5970b f19382a;

    /* renamed from: b */
    public boolean f19383b;

    public C5969a() {
        this(null);
    }

    public C5969a(C5970b bVar) {
        this.f19383b = false;
        this.f19382a = bVar == null ? C5970b.m22490a() : bVar;
    }

    /* renamed from: a */
    public static C5969a m22496a() {
        if (f19381c == null) {
            synchronized (C5969a.class) {
                try {
                    if (f19381c == null) {
                        f19381c = new C5969a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19381c;
    }

    /* renamed from: a */
    public void m22495a(String str, Object... objArr) {
        if (this.f19383b) {
            this.f19382a.m22489a(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    /* renamed from: a */
    public void m22494a(boolean z) {
        this.f19383b = z;
    }

    /* renamed from: b */
    public void m22493b(String str, Object... objArr) {
        if (this.f19383b) {
            this.f19382a.m22488b(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    /* renamed from: c */
    public void m22492c(String str, Object... objArr) {
        if (this.f19383b) {
            this.f19382a.m22487c(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    /* renamed from: d */
    public void m22491d(String str, Object... objArr) {
        if (this.f19383b) {
            this.f19382a.m22486d(String.format(Locale.ENGLISH, str, objArr));
        }
    }
}
