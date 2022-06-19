package com.klinker.android.send_message;

import android.graphics.Bitmap;
import e.d.a.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.klinker.android.send_message.c */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/c.class */
public class C2705c {

    /* renamed from: a */
    private String f11282a;

    /* renamed from: b */
    private String f11283b;

    /* renamed from: c */
    private String[] f11284c;

    /* renamed from: d */
    private Bitmap[] f11285d;

    /* renamed from: e */
    private String[] f11286e;

    /* renamed from: f */
    private List<C2706a> f11287f;

    /* renamed from: g */
    private boolean f11288g;

    /* renamed from: h */
    private int f11289h;

    /* renamed from: com.klinker.android.send_message.c$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/c$a.class */
    public static final class C2706a {

        /* renamed from: a */
        private byte[] f11290a;

        /* renamed from: b */
        private String f11291b;

        /* renamed from: c */
        private String f11292c;

        public C2706a(byte[] bArr, String str, String str2) {
            this.f11290a = bArr;
            this.f11291b = str;
            this.f11292c = str2;
        }

        /* renamed from: a */
        public String m2093a() {
            return this.f11291b;
        }

        /* renamed from: b */
        public byte[] m2092b() {
            return this.f11290a;
        }

        /* renamed from: c */
        public String m2091c() {
            return this.f11292c;
        }
    }

    public C2705c(String str, String str2) {
        this(str, str2.trim().split(" "));
    }

    public C2705c(String str, String[] strArr) {
        this.f11287f = new ArrayList();
        this.f11282a = str;
        this.f11284c = strArr;
        this.f11285d = new Bitmap[0];
        this.f11283b = null;
        this.f11288g = true;
        this.f11289h = 0;
    }

    /* renamed from: d */
    public static byte[] m2103d(Bitmap bitmap) {
        if (bitmap == null) {
            a.k("Message", "image is null, returning byte array of size 0");
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } finally {
            try {
                byteArrayOutputStream.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public void m2106a(byte[] bArr, String str, String str2) {
        this.f11287f.add(new C2706a(bArr, str, str2));
    }

    /* renamed from: b */
    public void m2105b(byte[] bArr) {
        m2104c(bArr, null);
    }

    /* renamed from: c */
    public void m2104c(byte[] bArr, String str) {
        m2106a(bArr, "video/3gpp", str);
    }

    /* renamed from: e */
    public String[] m2102e() {
        return this.f11284c;
    }

    /* renamed from: f */
    public int m2101f() {
        return this.f11289h;
    }

    /* renamed from: g */
    public String[] m2100g() {
        return this.f11286e;
    }

    /* renamed from: h */
    public Bitmap[] m2099h() {
        return this.f11285d;
    }

    /* renamed from: i */
    public List<C2706a> m2098i() {
        return this.f11287f;
    }

    /* renamed from: j */
    public boolean m2097j() {
        return this.f11288g;
    }

    /* renamed from: k */
    public String m2096k() {
        return this.f11283b;
    }

    /* renamed from: l */
    public String m2095l() {
        return this.f11282a;
    }

    /* renamed from: m */
    public void m2094m(Bitmap bitmap) {
        this.f11285d = r0;
        Bitmap[] bitmapArr = {bitmap};
    }
}
