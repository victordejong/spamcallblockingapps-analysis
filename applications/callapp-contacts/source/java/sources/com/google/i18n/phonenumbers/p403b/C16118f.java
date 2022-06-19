package com.google.i18n.phonenumbers.p403b;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.i18n.phonenumbers.b.f */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/f.class */
public class C16118f {

    /* renamed from: a */
    private static final Logger f56908a = Logger.getLogger(C16118f.class.getName());

    /* renamed from: b */
    private final String f56909b;

    /* renamed from: c */
    private C16115c f56910c = new C16115c();

    /* renamed from: d */
    private Map<String, C16116d> f56911d = new HashMap();

    public C16118f(String str) {
        ObjectInputStream objectInputStream;
        Throwable th;
        IOException e;
        this.f56909b = str;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(C16118f.class.getResourceAsStream(str + "config"));
            } catch (IOException e2) {
                e = e2;
                objectInputStream = null;
            }
        } catch (Throwable th2) {
            objectInputStream = objectInputStream2;
            th = th2;
        }
        try {
            this.f56910c.readExternal(objectInputStream);
            m7824a(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            f56908a.log(Level.WARNING, e.toString());
            m7824a(objectInputStream);
        } catch (Throwable th3) {
            th = th3;
            m7824a(objectInputStream);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d6, code lost:
        if (r0.contains(r6) != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014e, code lost:
        if (r0.contains(r6) != false) goto L43;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.i18n.phonenumbers.p403b.C16116d m7826a(int r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.p403b.C16118f.m7826a(int, java.lang.String, java.lang.String, java.lang.String):com.google.i18n.phonenumbers.b.d");
    }

    /* renamed from: a */
    private static void m7824a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f56908a.log(Level.WARNING, e.toString());
            }
        }
    }

    /* renamed from: a */
    private static boolean m7823a(String str) {
        return !str.equals("zh") && !str.equals("ja") && !str.equals("ko");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        if (r9.length() == 0) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m7825a(com.google.i18n.phonenumbers.C16136k.C16137a r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.f57029a
            r11 = r0
            r0 = r11
            r1 = 1
            if (r0 == r1) goto Lf
            goto L1e
        Lf:
            r0 = r7
            long r0 = r0.f57030b
            r1 = 10000000(0x989680, double:4.9406565E-317)
            long r0 = r0 / r1
            int r0 = (int) r0
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            r11 = r0
        L1e:
            r0 = r6
            r1 = r11
            r2 = r8
            r3 = r9
            r4 = r10
            com.google.i18n.phonenumbers.b.d r0 = r0.m7826a(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L36
            r0 = r9
            r1 = r7
            java.lang.String r0 = r0.m7833a(r1)
            r9 = r0
            goto L38
        L36:
            r0 = 0
            r9 = r0
        L38:
            r0 = r9
            if (r0 == 0) goto L46
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length()
            if (r0 != 0) goto L6b
        L46:
            r0 = r9
            r10 = r0
            r0 = r8
            boolean r0 = m7823a(r0)
            if (r0 == 0) goto L6b
            r0 = r6
            r1 = r11
            java.lang.String r2 = "en"
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            com.google.i18n.phonenumbers.b.d r0 = r0.m7826a(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L64
            java.lang.String r0 = ""
            return r0
        L64:
            r0 = r8
            r1 = r7
            java.lang.String r0 = r0.m7833a(r1)
            r10 = r0
        L6b:
            r0 = r10
            if (r0 == 0) goto L73
            r0 = r10
            return r0
        L73:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.p403b.C16118f.m7825a(com.google.i18n.phonenumbers.k$a, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
