package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/q.class */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    protected final int f18928a;

    /* renamed from: b  reason: collision with root package name */
    protected q f18929b;

    public q(int i) {
        this(i, null);
    }

    public q(int i, q qVar) {
        if (i == 262144 || i == 327680) {
            this.f18928a = i;
            this.f18929b = qVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public a a() {
        q qVar = this.f18929b;
        if (qVar != null) {
            return qVar.a();
        }
        return null;
    }

    public a a(int i, u uVar, String str, boolean z) {
        if (this.f18928a >= 327680) {
            q qVar = this.f18929b;
            if (qVar != null) {
                return qVar.a(i, uVar, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public a a(int i, u uVar, p[] pVarArr, p[] pVarArr2, int[] iArr, String str, boolean z) {
        if (this.f18928a >= 327680) {
            q qVar = this.f18929b;
            if (qVar != null) {
                return qVar.a(i, uVar, pVarArr, pVarArr2, iArr, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public a a(int i, String str, boolean z) {
        q qVar = this.f18929b;
        if (qVar != null) {
            return qVar.a(i, str, z);
        }
        return null;
    }

    public a a(String str, boolean z) {
        q qVar = this.f18929b;
        if (qVar != null) {
            return qVar.a(str, z);
        }
        return null;
    }

    public void a(int i) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i);
        }
    }

    public void a(int i, int i2) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, i2);
        }
    }

    public void a(int i, int i2, p pVar, p... pVarArr) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, i2, pVar, pVarArr);
        }
    }

    public void a(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, i2, objArr, i3, objArr2);
        }
    }

    public void a(int i, p pVar) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, pVar);
        }
    }

    public void a(int i, String str) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, str);
        }
    }

    public void a(int i, String str, String str2, String str3) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, str, str2, str3);
        }
    }

    public void a(int i, String str, String str2, String str3, boolean z) {
        if (this.f18928a < 327680) {
            if (z == (i == 185)) {
                b(i, str, str2, str3);
                return;
            }
            throw new IllegalArgumentException("INVOKESPECIAL/STATIC on interfaces require ASM 5");
        }
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(i, str, str2, str3, z);
        }
    }

    public void a(c cVar) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(cVar);
        }
    }

    public void a(p pVar) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(pVar);
        }
    }

    public void a(p pVar, p pVar2, p pVar3, String str) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(pVar, pVar2, pVar3, str);
        }
    }

    public void a(p pVar, int[] iArr, p[] pVarArr) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(pVar, iArr, pVarArr);
        }
    }

    public void a(Object obj) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(obj);
        }
    }

    public void a(String str, int i) {
        if (this.f18928a >= 327680) {
            q qVar = this.f18929b;
            if (qVar != null) {
                qVar.a(str, i);
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    public void a(String str, String str2, m mVar, Object... objArr) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(str, str2, mVar, objArr);
        }
    }

    public void a(String str, String str2, String str3, p pVar, p pVar2, int i) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.a(str, str2, str3, pVar, pVar2, i);
        }
    }

    public a b(int i, u uVar, String str, boolean z) {
        if (this.f18928a >= 327680) {
            q qVar = this.f18929b;
            if (qVar != null) {
                return qVar.b(i, uVar, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public void b(int i, int i2) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.b(i, i2);
        }
    }

    public void b(int i, p pVar) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.b(i, pVar);
        }
    }

    public final void b(int i, String str, String str2, String str3) {
        q qVar = this;
        while (qVar.f18928a < 327680) {
            qVar = qVar.f18929b;
            if (qVar == null) {
                return;
            }
        }
        qVar.a(i, str, str2, str3, i == 185);
    }

    public void b(String str, int i) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.b(str, i);
        }
    }

    public a c(int i, u uVar, String str, boolean z) {
        if (this.f18928a >= 327680) {
            q qVar = this.f18929b;
            if (qVar != null) {
                return qVar.c(i, uVar, str, z);
            }
            return null;
        }
        throw new RuntimeException();
    }

    public void c(int i, int i2) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.c(i, i2);
        }
    }

    public void d(int i, int i2) {
        q qVar = this.f18929b;
        if (qVar != null) {
            qVar.d(i, i2);
        }
    }
}
