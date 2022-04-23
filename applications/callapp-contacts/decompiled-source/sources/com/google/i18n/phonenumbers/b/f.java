package com.google.i18n.phonenumbers.b;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f32851a = Logger.getLogger(f.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final String f32852b;

    /* renamed from: c  reason: collision with root package name */
    private c f32853c = new c();

    /* renamed from: d  reason: collision with root package name */
    private Map<String, d> f32854d = new HashMap();

    public f(String str) {
        Throwable th;
        IOException e;
        this.f32852b = str;
        r6 = null;
        ObjectInputStream objectInputStream = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(f.class.getResourceAsStream(str + "config"));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f32853c.readExternal(objectInputStream);
            a(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream = objectInputStream;
            f32851a.log(Level.WARNING, e.toString());
            a(objectInputStream);
        } catch (Throwable th3) {
            th = th3;
            a(objectInputStream);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d6, code lost:
        if (r0.contains(r6) != false) goto L_0x0157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014e, code lost:
        if (r0.contains(r6) != false) goto L_0x0157;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.i18n.phonenumbers.b.d a(int r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.b.f.a(int, java.lang.String, java.lang.String, java.lang.String):com.google.i18n.phonenumbers.b.d");
    }

    private static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f32851a.log(Level.WARNING, e.toString());
            }
        }
    }

    private static boolean a(String str) {
        return !str.equals("zh") && !str.equals("ja") && !str.equals("ko");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        if (r9.length() == 0) goto L_0x0046;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(com.google.i18n.phonenumbers.k.a r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.f32890a
            r11 = r0
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x000f
            goto L_0x001e
        L_0x000f:
            r0 = r7
            long r0 = r0.f32891b
            r1 = 10000000(0x989680, double:4.9406565E-317)
            long r0 = r0 / r1
            int r0 = (int) r0
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            r11 = r0
        L_0x001e:
            r0 = r6
            r1 = r11
            r2 = r8
            r3 = r9
            r4 = r10
            com.google.i18n.phonenumbers.b.d r0 = r0.a(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0036
            r0 = r9
            r1 = r7
            java.lang.String r0 = r0.a(r1)
            r9 = r0
            goto L_0x0038
        L_0x0036:
            r0 = 0
            r9 = r0
        L_0x0038:
            r0 = r9
            if (r0 == 0) goto L_0x0046
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length()
            if (r0 != 0) goto L_0x006b
        L_0x0046:
            r0 = r9
            r10 = r0
            r0 = r8
            boolean r0 = a(r0)
            if (r0 == 0) goto L_0x006b
            r0 = r6
            r1 = r11
            java.lang.String r2 = "en"
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            com.google.i18n.phonenumbers.b.d r0 = r0.a(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0064
            java.lang.String r0 = ""
            return r0
        L_0x0064:
            r0 = r8
            r1 = r7
            java.lang.String r0 = r0.a(r1)
            r10 = r0
        L_0x006b:
            r0 = r10
            if (r0 == 0) goto L_0x0073
            r0 = r10
            return r0
        L_0x0073:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.b.f.a(com.google.i18n.phonenumbers.k$a, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
