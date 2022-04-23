package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p224d.p252g.p253a.ea0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekb.class */
public final class zzekb {

    /* renamed from: a */
    public static final Charset f28088a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: b */
    public static final byte[] f28089b;

    static {
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        byte[] bArr = new byte[0];
        f28089b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f28089b;
        zzeja.m12528a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m12375a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: a */
    public static int m12374a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m12369a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m12368a(byte[] bArr) {
        int length = bArr.length;
        int a = m12375a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m12372a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public static Object m12371a(Object obj, Object obj2) {
        return ((zzelj) obj).mo12348e().mo12341a((zzelj) obj2).mo12343F();
    }

    /* renamed from: a */
    public static <T> T m12370a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m12373a(zzelj zzeljVar) {
        if (!(zzeljVar instanceof zzeih)) {
            return false;
        }
        zzeih zzeihVar = (zzeih) zzeljVar;
        return false;
    }

    /* renamed from: b */
    public static boolean m12367b(byte[] bArr) {
        return ea0.m27041a(bArr);
    }

    /* renamed from: c */
    public static String m12366c(byte[] bArr) {
        return new String(bArr, f28088a);
    }
}
