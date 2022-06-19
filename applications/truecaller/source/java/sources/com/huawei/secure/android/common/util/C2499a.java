package com.huawei.secure.android.common.util;
/* renamed from: com.huawei.secure.android.common.util.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/a.class */
public class C2499a {

    /* renamed from: a */
    private String f8153a;

    /* renamed from: b */
    private Character f8154b;

    /* renamed from: c */
    private Character f8155c;

    /* renamed from: d */
    private int f8156d = 0;

    /* renamed from: e */
    private int f8157e = 0;

    public C2499a(String str) {
        this.f8153a = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
        if (r0 <= 'F') goto L17;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m36879b(java.lang.Character r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r3
            char r0 = r0.charValue()
            r5 = r0
            r0 = r5
            r1 = 48
            if (r0 < r1) goto L19
            r0 = r5
            r1 = 57
            if (r0 <= r1) goto L35
        L19:
            r0 = r5
            r1 = 97
            if (r0 < r1) goto L25
            r0 = r5
            r1 = 102(0x66, float:1.43E-43)
            if (r0 <= r1) goto L35
        L25:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 65
            if (r0 < r1) goto L37
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 70
            if (r0 > r1) goto L37
        L35:
            r0 = 1
            r6 = r0
        L37:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.util.C2499a.m36879b(java.lang.Character):boolean");
    }

    /* renamed from: c */
    public static boolean m36877c(Character ch) {
        if (ch == null) {
            return false;
        }
        char charValue = ch.charValue();
        boolean z = false;
        if (charValue >= '0') {
            z = false;
            if (charValue <= '7') {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m36881a(Character ch) {
        this.f8154b = ch;
    }

    /* renamed from: a */
    public boolean m36883a() {
        if (this.f8154b != null) {
            return true;
        }
        String str = this.f8153a;
        return (str == null || str.length() == 0 || this.f8156d >= this.f8153a.length()) ? false : true;
    }

    /* renamed from: a */
    public boolean m36882a(char c) {
        Character ch = this.f8154b;
        boolean z = true;
        if (ch == null || ch.charValue() != c) {
            String str = this.f8153a;
            if (str == null || str.length() == 0 || this.f8156d >= this.f8153a.length()) {
                return false;
            }
            if (this.f8153a.charAt(this.f8156d) != c) {
                z = false;
            }
            return z;
        }
        return true;
    }

    /* renamed from: b */
    public int m36880b() {
        return this.f8156d;
    }

    /* renamed from: c */
    public void m36878c() {
        this.f8155c = this.f8154b;
        this.f8157e = this.f8156d;
    }

    /* renamed from: d */
    public Character m36876d() {
        Character ch = this.f8154b;
        if (ch != null) {
            this.f8154b = null;
            return ch;
        }
        String str = this.f8153a;
        if (str == null || str.length() == 0 || this.f8156d >= this.f8153a.length()) {
            return null;
        }
        String str2 = this.f8153a;
        int i = this.f8156d;
        this.f8156d = i + 1;
        return Character.valueOf(str2.charAt(i));
    }

    /* renamed from: e */
    public Character m36875e() {
        Character m36876d = m36876d();
        if (m36876d != null && m36879b(m36876d)) {
            return m36876d;
        }
        return null;
    }

    /* renamed from: f */
    public Character m36874f() {
        Character m36876d = m36876d();
        if (m36876d != null && m36877c(m36876d)) {
            return m36876d;
        }
        return null;
    }

    /* renamed from: g */
    public Character m36873g() {
        Character ch = this.f8154b;
        if (ch != null) {
            return ch;
        }
        String str = this.f8153a;
        if (str != null && str.length() != 0 && this.f8156d < this.f8153a.length()) {
            return Character.valueOf(this.f8153a.charAt(this.f8156d));
        }
        return null;
    }

    /* renamed from: h */
    public String m36872h() {
        String substring = this.f8153a.substring(this.f8156d);
        String str = substring;
        if (this.f8154b != null) {
            str = this.f8154b + substring;
        }
        return str;
    }

    /* renamed from: i */
    public void m36871i() {
        this.f8154b = this.f8155c;
        this.f8156d = this.f8157e;
    }
}
