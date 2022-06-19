package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: com.flurry.sdk.ky */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ky.class */
public class C0482ky<ObjectType> {

    /* renamed from: a */
    private static final String f3510a = "ky";

    /* renamed from: b */
    private static final byte[] f3511b = {113, -92, -8, 125, 121, 107, -65, -61, -74, -114, -32, 0, -57, -87, -35, -56, -6, -52, 51, 126, -104, 49, 79, -52, 118, -84, 99, -52, -14, -126, -27, -64};

    /* renamed from: c */
    private String f3512c;

    /* renamed from: d */
    private AbstractC0494lo<ObjectType> f3513d;

    public C0482ky(String str, AbstractC0494lo<ObjectType> abstractC0494lo) {
        this.f3512c = str;
        this.f3513d = abstractC0494lo;
    }

    /* renamed from: a */
    public static int m4577a(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        C0468km c0468km = new C0468km();
        c0468km.update(bArr);
        return c0468km.m4624b();
    }

    /* renamed from: c */
    private static void m4575c(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int length = bArr.length;
        int length2 = f3511b.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) ((bArr[i] ^ f3511b[i % length2]) ^ ((i * 31) % 251));
        }
    }

    /* renamed from: a */
    public final byte[] m4578a(ObjectType objecttype) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f3513d.m4522a(byteArrayOutputStream, objecttype);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        String str = f3510a;
        C0478ku.m4596a(3, str, "Encoding " + this.f3512c + ": " + new String(byteArray));
        lm lmVar = new lm(new lk());
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        lmVar.m4522a(byteArrayOutputStream2, byteArray);
        byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
        m4575c(byteArray2);
        return byteArray2;
    }

    /* renamed from: b */
    public final ObjectType m4576b(byte[] bArr) {
        if (bArr == null) {
            throw new IOException("Decoding: " + this.f3512c + ": Nothing to decode");
        }
        m4575c(bArr);
        byte[] bArr2 = (byte[]) new lm(new lk()).m4523a(new ByteArrayInputStream(bArr));
        String str = f3510a;
        C0478ku.m4596a(3, str, "Decoding: " + this.f3512c + ": " + new String(bArr2));
        return this.f3513d.m4523a(new ByteArrayInputStream(bArr2));
    }
}
