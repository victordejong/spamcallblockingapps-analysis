package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/f.class */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    protected final int f18893a;

    /* renamed from: b  reason: collision with root package name */
    protected f f18894b;

    public f(int i) {
        this(i, null);
    }

    public f(int i, f fVar) {
        if (i == 262144 || i == 327680) {
            this.f18893a = i;
            this.f18894b = fVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public a a(int i, u uVar, String str, boolean z) {
        if (this.f18893a >= 327680) {
            f fVar = this.f18894b;
            if (fVar != null) {
                return fVar.a(i, uVar, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public a a(String str, boolean z) {
        f fVar = this.f18894b;
        if (fVar != null) {
            return fVar.a(str, z);
        }
        return null;
    }

    public j a(int i, String str, String str2, String str3, Object obj) {
        f fVar = this.f18894b;
        if (fVar != null) {
            return fVar.a(i, str, str2, str3, obj);
        }
        return null;
    }

    public q a(int i, String str, String str2, String str3, String[] strArr) {
        f fVar = this.f18894b;
        if (fVar != null) {
            return fVar.a(i, str, str2, str3, strArr);
        }
        return null;
    }

    public void a(int i, int i2, String str, String str2, String str3, String[] strArr) {
        f fVar = this.f18894b;
        if (fVar != null) {
            fVar.a(i, i2, str, str2, str3, strArr);
        }
    }

    public void a(c cVar) {
        f fVar = this.f18894b;
        if (fVar != null) {
            fVar.a(cVar);
        }
    }

    public void a(String str, String str2) {
        f fVar = this.f18894b;
        if (fVar != null) {
            fVar.a(str, str2);
        }
    }

    public void a(String str, String str2, String str3) {
        f fVar = this.f18894b;
        if (fVar != null) {
            fVar.a(str, str2, str3);
        }
    }

    public void a(String str, String str2, String str3, int i) {
        f fVar = this.f18894b;
        if (fVar != null) {
            fVar.a(str, str2, str3, i);
        }
    }
}
