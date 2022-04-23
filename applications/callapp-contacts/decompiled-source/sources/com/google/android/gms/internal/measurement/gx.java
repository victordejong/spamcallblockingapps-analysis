package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gx.class */
public class gx {

    /* renamed from: b  reason: collision with root package name */
    private static final fy f29069b = fy.a();

    /* renamed from: a  reason: collision with root package name */
    protected volatile ho f29070a;

    /* renamed from: c  reason: collision with root package name */
    private volatile fm f29071c;

    private void a(ho hoVar) {
        if (this.f29070a == null) {
            synchronized (this) {
                if (this.f29070a == null) {
                    try {
                        this.f29070a = hoVar;
                        this.f29071c = fm.f29017b;
                    } catch (zzib e) {
                        this.f29070a = hoVar;
                        this.f29071c = fm.f29017b;
                    }
                }
            }
        }
    }

    private fm b() {
        if (this.f29071c != null) {
            return this.f29071c;
        }
        synchronized (this) {
            if (this.f29071c != null) {
                return this.f29071c;
            }
            if (this.f29070a == null) {
                this.f29071c = fm.f29017b;
            } else {
                this.f29071c = this.f29070a.i();
            }
            return this.f29071c;
        }
    }

    public final int a() {
        if (this.f29071c != null) {
            return ((fk) this.f29071c).f29016a.length;
        }
        if (this.f29070a != null) {
            return this.f29070a.n();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gx)) {
            return false;
        }
        gx gxVar = (gx) obj;
        ho hoVar = this.f29070a;
        ho hoVar2 = gxVar.f29070a;
        if (hoVar == null && hoVar2 == null) {
            return b().equals(gxVar.b());
        }
        if (hoVar != null && hoVar2 != null) {
            return hoVar.equals(hoVar2);
        }
        if (hoVar != null) {
            gxVar.a(hoVar.C());
            return hoVar.equals(gxVar.f29070a);
        }
        a(hoVar2.C());
        return this.f29070a.equals(hoVar2);
    }

    public int hashCode() {
        return 1;
    }
}
