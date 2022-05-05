package com.google.android.gms.internal;

import com.google.android.gms.internal.p;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/p.class */
public abstract class p<M extends p<M>> extends v {
    protected r r;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.v
    public int a() {
        int i;
        if (this.r != null) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= this.r.b()) {
                    break;
                }
                i2++;
                i3 = this.r.b(i2).a() + i3;
            }
        } else {
            i = 0;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T a(q<M, T> qVar) {
        s a2;
        T t = null;
        if (!(this.r == null || (a2 = this.r.a(y.b(qVar.c))) == null)) {
            if (a2.f4223b == null) {
                a2.f4222a = qVar;
                a2.f4223b = qVar.a(a2.c);
                a2.c = null;
            } else if (!a2.f4222a.equals(qVar)) {
                throw new IllegalStateException("Tried to getExtension with a different Extension.");
            }
            t = (T) a2.f4223b;
        }
        return t;
    }

    @Override // com.google.android.gms.internal.v
    public void a(o oVar) {
        if (this.r != null) {
            for (int i = 0; i < this.r.b(); i++) {
                this.r.b(i).a(oVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(n nVar, int i) {
        byte[] bArr;
        boolean z;
        int i2 = nVar.i();
        if (!nVar.b(i)) {
            z = false;
        } else {
            int b2 = y.b(i);
            int i3 = nVar.i() - i2;
            if (i3 == 0) {
                bArr = y.h;
            } else {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(nVar.f4215a, i2 + nVar.f4216b, bArr2, 0, i3);
                bArr = bArr2;
            }
            x xVar = new x(i, bArr);
            s sVar = null;
            if (this.r == null) {
                this.r = new r();
            } else {
                sVar = this.r.a(b2);
            }
            s sVar2 = sVar;
            if (sVar == null) {
                sVar2 = new s();
                r rVar = this.r;
                int d = rVar.d(b2);
                if (d >= 0) {
                    rVar.d[d] = sVar2;
                } else {
                    int i4 = d ^ (-1);
                    if (i4 >= rVar.e || rVar.d[i4] != r.f4220a) {
                        int i5 = i4;
                        if (rVar.f4221b) {
                            i5 = i4;
                            if (rVar.e >= rVar.c.length) {
                                rVar.a();
                                i5 = rVar.d(b2) ^ (-1);
                            }
                        }
                        if (rVar.e >= rVar.c.length) {
                            int c = r.c(rVar.e + 1);
                            int[] iArr = new int[c];
                            s[] sVarArr = new s[c];
                            System.arraycopy(rVar.c, 0, iArr, 0, rVar.c.length);
                            System.arraycopy(rVar.d, 0, sVarArr, 0, rVar.d.length);
                            rVar.c = iArr;
                            rVar.d = sVarArr;
                        }
                        if (rVar.e - i5 != 0) {
                            System.arraycopy(rVar.c, i5, rVar.c, i5 + 1, rVar.e - i5);
                            System.arraycopy(rVar.d, i5, rVar.d, i5 + 1, rVar.e - i5);
                        }
                        rVar.c[i5] = b2;
                        rVar.d[i5] = sVar2;
                        rVar.e++;
                    } else {
                        rVar.c[i4] = b2;
                        rVar.d[i4] = sVar2;
                    }
                }
            }
            sVar2.c.add(xVar);
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.v
    public final /* synthetic */ v c() {
        return (p) clone();
    }

    @Override // com.google.android.gms.internal.v
    public /* synthetic */ Object clone() {
        p pVar = (p) super.clone();
        t.a(this, pVar);
        return pVar;
    }
}
