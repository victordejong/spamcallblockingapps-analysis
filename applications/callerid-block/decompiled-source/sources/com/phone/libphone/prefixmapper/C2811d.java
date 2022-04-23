package com.phone.libphone.prefixmapper;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.phone.libphone.prefixmapper.d */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/d.class */
public class C2811d {

    /* renamed from: d */
    private static final Logger f11668d = Logger.getLogger(C2811d.class.getName());

    /* renamed from: a */
    private final String f11669a;

    /* renamed from: b */
    private MappingFileProvider f11670b = new MappingFileProvider();

    /* renamed from: c */
    private Map<String, PhonePrefixMap> f11671c = new HashMap();

    public C2811d(String str) {
        this.f11669a = str;
        m1593d();
    }

    /* renamed from: a */
    private static void m1596a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f11668d.log(Level.WARNING, e.toString());
            }
        }
    }

    /* renamed from: c */
    private PhonePrefixMap m1594c(int i, String str, String str2, String str3) {
        String fileName = this.f11670b.getFileName(i, str, str2, str3);
        if (fileName.length() == 0) {
            return null;
        }
        if (!this.f11671c.containsKey(fileName)) {
            m1592e(fileName);
        }
        return this.f11671c.get(fileName);
    }

    /* renamed from: d */
    private void m1593d() {
        ObjectInputStream objectInputStream;
        Throwable th;
        ObjectInputStream objectInputStream2;
        IOException e;
        try {
            try {
                objectInputStream2 = new ObjectInputStream(new FileInputStream(new File(this.f11669a + "config")));
                objectInputStream = objectInputStream2;
                try {
                    this.f11670b.readExternal(objectInputStream2);
                } catch (IOException e2) {
                    e = e2;
                    StringBuilder sb = new StringBuilder();
                    sb.append("config: ");
                    sb.append(e.toString());
                    objectInputStream = objectInputStream2;
                    Log.e("wbb", sb.toString());
                    m1596a(objectInputStream2);
                }
            } catch (Throwable th2) {
                th = th2;
                m1596a(objectInputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            objectInputStream = null;
            m1596a(objectInputStream);
            throw th;
        }
        m1596a(objectInputStream2);
    }

    /* renamed from: e */
    private void m1592e(String str) {
        Throwable th;
        IOException e;
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f11669a);
                sb.append(str);
                objectInputStream = new ObjectInputStream(new FileInputStream(new File(sb.toString())));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            PhonePrefixMap phonePrefixMap = new PhonePrefixMap();
            phonePrefixMap.readExternal(objectInputStream);
            this.f11671c.put(str, phonePrefixMap);
            m1596a(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            objectInputStream3 = objectInputStream2;
            f11668d.log(Level.WARNING, e.toString());
            m1596a(objectInputStream2);
        } catch (Throwable th3) {
            th = th3;
            objectInputStream3 = objectInputStream;
            m1596a(objectInputStream3);
            throw th;
        }
    }

    /* renamed from: f */
    private boolean m1591f(String str) {
        return !str.equals("zh") && !str.equals("ja") && !str.equals("ko");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        if (r10.length() == 0) goto L_0x004e;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m1595b(com.phone.libphone.Phonenumber$PhoneNumber r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.getCountryCode()
            r11 = r0
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x000f
            goto L_0x001e
        L_0x000f:
            r0 = r7
            long r0 = r0.getNationalNumber()
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
            com.phone.libphone.prefixmapper.PhonePrefixMap r0 = r0.m1594c(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0037
            r0 = r9
            r1 = r7
            java.lang.String r0 = r0.lookup(r1)
            r10 = r0
            goto L_0x003a
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            java.lang.String r0 = ""
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L_0x004e
            r0 = r10
            r9 = r0
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0073
        L_0x004e:
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r8
            boolean r0 = r0.m1591f(r1)
            if (r0 == 0) goto L_0x0073
            r0 = r6
            r1 = r11
            java.lang.String r2 = "en"
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            com.phone.libphone.prefixmapper.PhonePrefixMap r0 = r0.m1594c(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x006d
            java.lang.String r0 = ""
            return r0
        L_0x006d:
            r0 = r8
            r1 = r7
            java.lang.String r0 = r0.lookup(r1)
            r9 = r0
        L_0x0073:
            r0 = r12
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007c
            r0 = r9
            r7 = r0
        L_0x007c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.phone.libphone.prefixmapper.C2811d.m1595b(com.phone.libphone.Phonenumber$PhoneNumber, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
