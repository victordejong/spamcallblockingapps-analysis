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
public class C9416d {

    /* renamed from: a */
    private static final Logger f40275a = Logger.getLogger(C9416d.class.getName());

    /* renamed from: b */
    private final String f40276b;

    /* renamed from: c */
    private MappingFileProvider f40277c = new MappingFileProvider();

    /* renamed from: d */
    private Map<String, PhonePrefixMap> f40278d = new HashMap();

    public C9416d(String str) {
        this.f40276b = str;
        m607d();
    }

    /* renamed from: a */
    private static void m610a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f40275a.log(Level.WARNING, e.toString());
            }
        }
    }

    /* renamed from: c */
    private PhonePrefixMap m608c(int i, String str, String str2, String str3) {
        String fileName = this.f40277c.getFileName(i, str, str2, str3);
        if (fileName.length() == 0) {
            return null;
        }
        if (!this.f40278d.containsKey(fileName)) {
            m606e(fileName);
        }
        return this.f40278d.get(fileName);
    }

    /* renamed from: d */
    private void m607d() {
        ObjectInputStream objectInputStream;
        Throwable th;
        ObjectInputStream objectInputStream2;
        IOException e;
        try {
            try {
                objectInputStream2 = new ObjectInputStream(new FileInputStream(new File(this.f40276b + "config")));
                objectInputStream = objectInputStream2;
                try {
                    this.f40277c.readExternal(objectInputStream2);
                } catch (IOException e2) {
                    e = e2;
                    ObjectInputStream objectInputStream3 = objectInputStream2;
                    StringBuilder sb = new StringBuilder();
                    ObjectInputStream objectInputStream4 = objectInputStream2;
                    sb.append("config: ");
                    ObjectInputStream objectInputStream5 = objectInputStream2;
                    sb.append(e.toString());
                    objectInputStream = objectInputStream2;
                    Log.e("wbb", sb.toString());
                    m610a(objectInputStream2);
                }
            } catch (Throwable th2) {
                th = th2;
                m610a(objectInputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            objectInputStream = null;
            m610a(objectInputStream);
            throw th;
        }
        m610a(objectInputStream2);
    }

    /* renamed from: e */
    private void m606e(String str) {
        Throwable th;
        IOException e;
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f40276b);
                sb.append(str);
                objectInputStream2 = new ObjectInputStream(new FileInputStream(new File(sb.toString())));
            } catch (IOException e2) {
                e = e2;
                objectInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            PhonePrefixMap phonePrefixMap = new PhonePrefixMap();
            phonePrefixMap.readExternal(objectInputStream2);
            this.f40278d.put(str, phonePrefixMap);
            m610a(objectInputStream2);
        } catch (IOException e3) {
            objectInputStream = objectInputStream2;
            e = e3;
            objectInputStream3 = objectInputStream;
            f40275a.log(Level.WARNING, e.toString());
            m610a(objectInputStream);
        } catch (Throwable th3) {
            th = th3;
            objectInputStream3 = objectInputStream2;
            m610a(objectInputStream3);
            throw th;
        }
    }

    /* renamed from: f */
    private boolean m605f(String str) {
        return !str.equals("zh") && !str.equals("ja") && !str.equals("ko");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        if (r10.length() == 0) goto L13;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m609b(com.phone.libphone.Phonenumber$PhoneNumber r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.getCountryCode()
            r11 = r0
            r0 = r11
            r1 = 1
            if (r0 == r1) goto Lf
            goto L1e
        Lf:
            r0 = r7
            long r0 = r0.getNationalNumber()
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
            com.phone.libphone.prefixmapper.PhonePrefixMap r0 = r0.m608c(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L37
            r0 = r9
            r1 = r7
            java.lang.String r0 = r0.lookup(r1)
            r10 = r0
            goto L3a
        L37:
            r0 = 0
            r10 = r0
        L3a:
            java.lang.String r0 = ""
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L4e
            r0 = r10
            r9 = r0
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L73
        L4e:
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r8
            boolean r0 = r0.m605f(r1)
            if (r0 != 0) goto L73
            r0 = r6
            r1 = r11
            java.lang.String r2 = "en"
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            com.phone.libphone.prefixmapper.PhonePrefixMap r0 = r0.m608c(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L6d
            java.lang.String r0 = ""
            return r0
        L6d:
            r0 = r8
            r1 = r7
            java.lang.String r0 = r0.lookup(r1)
            r9 = r0
        L73:
            r0 = r12
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L7c
            r0 = r9
            r7 = r0
        L7c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.phone.libphone.prefixmapper.C9416d.m609b(com.phone.libphone.Phonenumber$PhoneNumber, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
