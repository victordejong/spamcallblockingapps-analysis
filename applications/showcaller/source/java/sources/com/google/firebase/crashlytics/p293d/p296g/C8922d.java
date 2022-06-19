package com.google.firebase.crashlytics.p293d.p296g;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p296g.C8917c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.crashlytics.d.g.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/d.class */
public class C8922d implements AbstractC8912a {

    /* renamed from: a */
    private static final Charset f38903a = Charset.forName("UTF-8");

    /* renamed from: b */
    private final File f38904b;

    /* renamed from: c */
    private final int f38905c;

    /* renamed from: d */
    private C8917c f38906d;

    /* renamed from: com.google.firebase.crashlytics.d.g.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/d$a.class */
    public class C8923a implements C8917c.AbstractC8921d {

        /* renamed from: a */
        final /* synthetic */ byte[] f38907a;

        /* renamed from: b */
        final /* synthetic */ int[] f38908b;

        C8923a(byte[] bArr, int[] iArr) {
            C8922d.this = r4;
            this.f38907a = bArr;
            this.f38908b = iArr;
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.C8917c.AbstractC8921d
        /* renamed from: a */
        public void mo2331a(InputStream inputStream, int i) {
            try {
                inputStream.read(this.f38907a, this.f38908b[0], i);
                int[] iArr = this.f38908b;
                iArr[0] = iArr[0] + i;
            } finally {
                inputStream.close();
            }
        }
    }

    /* renamed from: com.google.firebase.crashlytics.d.g.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/d$b.class */
    public static class C8924b {

        /* renamed from: a */
        public final byte[] f38910a;

        /* renamed from: b */
        public final int f38911b;

        C8924b(byte[] bArr, int i) {
            this.f38910a = bArr;
            this.f38911b = i;
        }
    }

    public C8922d(File file, int i) {
        this.f38904b = file;
        this.f38905c = i;
    }

    /* renamed from: f */
    private void m2334f(long j, String str) {
        int i;
        if (this.f38906d == null) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "null";
        }
        try {
            String str3 = str2;
            if (str2.length() > this.f38905c / 4) {
                str3 = "..." + str2.substring(str2.length() - i);
            }
            this.f38906d.m2345k(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f38903a));
            while (!this.f38906d.m2365A() && this.f38906d.m2354W() > this.f38905c) {
                this.f38906d.m2358P();
            }
        } catch (IOException e) {
            C8898b.m2397f().m2398e("There was a problem writing to the Crashlytics log.", e);
        }
    }

    /* renamed from: g */
    private C8924b m2333g() {
        if (!this.f38904b.exists()) {
            return null;
        }
        m2332h();
        C8917c c8917c = this.f38906d;
        if (c8917c == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[c8917c.m2354W()];
        try {
            this.f38906d.m2341y(new C8923a(bArr, iArr));
        } catch (IOException e) {
            C8898b.m2397f().m2398e("A problem occurred while reading the Crashlytics log file.", e);
        }
        return new C8924b(bArr, iArr[0]);
    }

    /* renamed from: h */
    private void m2332h() {
        if (this.f38906d == null) {
            try {
                this.f38906d = new C8917c(this.f38904b);
            } catch (IOException e) {
                C8898b m2397f = C8898b.m2397f();
                m2397f.m2398e("Could not open log file: " + this.f38904b, e);
            }
        }
    }

    @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
    /* renamed from: a */
    public void mo2339a() {
        CommonUtils.m1970e(this.f38906d, "There was a problem closing the Crashlytics log file.");
        this.f38906d = null;
    }

    @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
    /* renamed from: b */
    public String mo2338b() {
        byte[] mo2337c = mo2337c();
        return mo2337c != null ? new String(mo2337c, f38903a) : null;
    }

    @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
    /* renamed from: c */
    public byte[] mo2337c() {
        C8924b m2333g = m2333g();
        if (m2333g == null) {
            return null;
        }
        int i = m2333g.f38911b;
        byte[] bArr = new byte[i];
        System.arraycopy(m2333g.f38910a, 0, bArr, 0, i);
        return bArr;
    }

    @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
    /* renamed from: d */
    public void mo2336d() {
        mo2339a();
        this.f38904b.delete();
    }

    @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
    /* renamed from: e */
    public void mo2335e(long j, String str) {
        m2332h();
        m2334f(j, str);
    }
}
