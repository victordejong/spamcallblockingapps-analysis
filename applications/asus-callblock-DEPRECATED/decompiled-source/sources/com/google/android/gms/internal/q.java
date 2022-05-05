package com.google.android.gms.internal;

import com.google.android.gms.internal.p;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/q.class */
public final class q<M extends p<M>, T> {

    /* renamed from: b  reason: collision with root package name */
    protected final Class<T> f4219b;

    /* renamed from: a  reason: collision with root package name */
    protected final int f4218a = 11;
    public final int c = 810;
    protected final boolean d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Class<T> cls) {
        this.f4219b = cls;
    }

    private Object a(n nVar) {
        v vVar;
        Class componentType = this.d ? this.f4219b.getComponentType() : this.f4219b;
        try {
            switch (this.f4218a) {
                case 10:
                    v vVar2 = (v) componentType.newInstance();
                    int b2 = y.b(this.c);
                    if (nVar.c < nVar.d) {
                        nVar.c++;
                        vVar2.a(nVar);
                        nVar.a(y.a(b2, 4));
                        nVar.c--;
                        vVar = vVar2;
                        break;
                    } else {
                        throw u.g();
                    }
                case 11:
                    v vVar3 = (v) componentType.newInstance();
                    nVar.a(vVar3);
                    vVar = vVar3;
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.f4218a).toString());
            }
            return vVar;
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        } catch (IllegalAccessException e2) {
            String valueOf = String.valueOf(componentType);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("Error creating instance of class ").append(valueOf).toString(), e2);
        } catch (InstantiationException e3) {
            String valueOf2 = String.valueOf(componentType);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 33).append("Error creating instance of class ").append(valueOf2).toString(), e3);
        }
    }

    private int b(Object obj) {
        int b2;
        int b3 = y.b(this.c);
        switch (this.f4218a) {
            case 10:
                b2 = (o.b(b3) * 2) + ((v) obj).e();
                break;
            case 11:
                b2 = o.b(b3, (v) obj);
                break;
            default:
                throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.f4218a).toString());
        }
        return b2;
    }

    private void b(Object obj, o oVar) {
        try {
            oVar.c(this.c);
            switch (this.f4218a) {
                case 10:
                    int b2 = y.b(this.c);
                    ((v) obj).a(oVar);
                    oVar.c(b2, 4);
                    return;
                case 11:
                    oVar.a((v) obj);
                    return;
                default:
                    throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.f4218a).toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(Object obj) {
        int i;
        if (this.d) {
            int length = Array.getLength(obj);
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= length) {
                    break;
                }
                i3 = i3;
                if (Array.get(obj, i2) != null) {
                    i3 += b(Array.get(obj, i2));
                }
                i2++;
            }
        } else {
            i = b(obj);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final T a(List<x> list) {
        T cast;
        int i = 0;
        if (list == null) {
            cast = null;
        } else if (this.d) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                x xVar = list.get(i2);
                if (xVar.f4227b.length != 0) {
                    byte[] bArr = xVar.f4227b;
                    arrayList.add(a(n.a(bArr, bArr.length)));
                }
            }
            int size = arrayList.size();
            if (size != 0) {
                T cast2 = this.f4219b.cast(Array.newInstance(this.f4219b.getComponentType(), size));
                while (true) {
                    cast = cast2;
                    if (i >= size) {
                        break;
                    }
                    Array.set(cast2, i, arrayList.get(i));
                    i++;
                }
            } else {
                cast = null;
            }
        } else if (list.isEmpty()) {
            cast = null;
        } else {
            x xVar2 = list.get(list.size() - 1);
            Class<T> cls = this.f4219b;
            byte[] bArr2 = xVar2.f4227b;
            cast = cls.cast(a(n.a(bArr2, bArr2.length)));
        }
        return cast;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Object obj, o oVar) {
        if (this.d) {
            int length = Array.getLength(obj);
            for (int i = 0; i < length; i++) {
                Object obj2 = Array.get(obj, i);
                if (obj2 != null) {
                    b(obj2, oVar);
                }
            }
            return;
        }
        b(obj, oVar);
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof q)) {
                z = false;
            } else {
                q qVar = (q) obj;
                if (!(this.f4218a == qVar.f4218a && this.f4219b == qVar.f4219b && this.c == qVar.c && this.d == qVar.d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = this.f4218a;
        int hashCode = this.f4219b.hashCode();
        return (this.d ? 1 : 0) + ((((((i + 1147) * 31) + hashCode) * 31) + this.c) * 31);
    }
}
