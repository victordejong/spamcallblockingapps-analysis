package p131c.p161d.p282e.p289l.p290d.p299m;

import com.android.volley.Request;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
/* renamed from: c.d.e.l.d.m.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/m/a.class */
public final class C5406a {

    /* renamed from: c */
    public static final C5406a f18333c = new C5406a(new byte[0]);

    /* renamed from: a */
    public final byte[] f18334a;

    /* renamed from: b */
    public volatile int f18335b = 0;

    public C5406a(byte[] bArr) {
        this.f18334a = bArr;
    }

    /* renamed from: a */
    public static C5406a m23873a(String str) {
        try {
            return new C5406a(str.getBytes(Request.DEFAULT_PARAMS_ENCODING));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.", e);
        }
    }

    /* renamed from: a */
    public static C5406a m23872a(byte[] bArr) {
        return m23871a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static C5406a m23871a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C5406a(bArr2);
    }

    /* renamed from: a */
    public InputStream m23874a() {
        return new ByteArrayInputStream(this.f18334a);
    }

    /* renamed from: a */
    public void m23870a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f18334a, i, bArr, i2, i3);
    }

    /* renamed from: b */
    public int m23869b() {
        return this.f18334a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5406a)) {
            return false;
        }
        byte[] bArr = this.f18334a;
        int length = bArr.length;
        byte[] bArr2 = ((C5406a) obj).f18334a;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f18335b;
        int i2 = i;
        if (i == 0) {
            byte[] bArr = this.f18334a;
            i2 = bArr.length;
            for (byte b : bArr) {
                i2 = (i2 * 31) + b;
            }
            if (i2 == 0) {
                i2 = 1;
            }
            this.f18335b = i2;
        }
        return i2;
    }
}
