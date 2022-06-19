package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbw.class */
public final class dbw extends OutputStream {

    /* renamed from: a */
    private static final byte[] f13945a = new byte[0];

    /* renamed from: d */
    private int f13948d;

    /* renamed from: f */
    private int f13950f;

    /* renamed from: b */
    private final int f13946b = 128;

    /* renamed from: c */
    private final ArrayList<dbi> f13947c = new ArrayList<>();

    /* renamed from: e */
    private byte[] f13949e = new byte[128];

    public dbw(int i) {
    }

    /* renamed from: a */
    private final void m10200a(int i) {
        this.f13947c.add(new dbt(this.f13949e));
        this.f13948d += this.f13949e.length;
        this.f13949e = new byte[Math.max(this.f13946b, Math.max(i, this.f13948d >>> 1))];
        this.f13950f = 0;
    }

    /* renamed from: b */
    private final int m10199b() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f13948d;
            i2 = this.f13950f;
        }
        return i + i2;
    }

    /* renamed from: a */
    public final dbi m10201a() {
        dbi m10222a;
        synchronized (this) {
            if (this.f13950f >= this.f13949e.length) {
                this.f13947c.add(new dbt(this.f13949e));
                this.f13949e = f13945a;
            } else if (this.f13950f > 0) {
                byte[] bArr = this.f13949e;
                int i = this.f13950f;
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                this.f13947c.add(new dbt(bArr2));
            }
            this.f13948d += this.f13950f;
            this.f13950f = 0;
            m10222a = dbi.m10222a(this.f13947c);
        }
        return m10222a;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m10199b()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.f13950f == this.f13949e.length) {
                m10200a(1);
            }
            byte[] bArr = this.f13949e;
            int i2 = this.f13950f;
            this.f13950f = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            if (i2 <= this.f13949e.length - this.f13950f) {
                System.arraycopy(bArr, i, this.f13949e, this.f13950f, i2);
                this.f13950f += i2;
            } else {
                int length = this.f13949e.length - this.f13950f;
                System.arraycopy(bArr, i, this.f13949e, this.f13950f, length);
                int i3 = i2 - length;
                m10200a(i3);
                System.arraycopy(bArr, i + length, this.f13949e, 0, i3);
                this.f13950f = i3;
            }
        }
    }
}
