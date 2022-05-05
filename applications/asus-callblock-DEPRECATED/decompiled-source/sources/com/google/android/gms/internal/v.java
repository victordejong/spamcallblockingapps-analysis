package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/v.class */
public abstract class v {
    protected volatile int s = -1;

    public static <T extends v> T a(T t, byte[] bArr, int i) {
        try {
            n a2 = n.a(bArr, i);
            t.a(a2);
            a2.a(0);
            return t;
        } catch (u e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] a(v vVar) {
        byte[] bArr = new byte[vVar.e()];
        try {
            o a2 = o.a(bArr, bArr.length);
            vVar.a(a2);
            if (a2.f4217a.remaining() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    protected int a() {
        return 0;
    }

    public abstract v a(n nVar);

    public void a(o oVar) {
    }

    /* renamed from: c */
    public v clone() {
        return (v) super.clone();
    }

    public final int d() {
        if (this.s < 0) {
            e();
        }
        return this.s;
    }

    public final int e() {
        int a2 = a();
        this.s = a2;
        return a2;
    }

    public String toString() {
        return w.a(this);
    }
}
