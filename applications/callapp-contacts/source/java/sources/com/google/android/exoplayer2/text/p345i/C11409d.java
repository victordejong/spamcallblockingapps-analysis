package com.google.android.exoplayer2.text.p345i;

import android.text.TextUtils;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.exoplayer2.text.i.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/d.class */
public final class C11409d {

    /* renamed from: f */
    int f37655f;

    /* renamed from: h */
    int f37657h;

    /* renamed from: o */
    float f37664o;

    /* renamed from: a */
    String f37650a = "";

    /* renamed from: b */
    String f37651b = "";

    /* renamed from: c */
    Set<String> f37652c = Collections.emptySet();

    /* renamed from: d */
    String f37653d = "";

    /* renamed from: e */
    String f37654e = null;

    /* renamed from: g */
    boolean f37656g = false;

    /* renamed from: i */
    boolean f37658i = false;

    /* renamed from: j */
    int f37659j = -1;

    /* renamed from: k */
    int f37660k = -1;

    /* renamed from: l */
    int f37661l = -1;

    /* renamed from: m */
    int f37662m = -1;

    /* renamed from: n */
    int f37663n = -1;

    /* renamed from: p */
    int f37665p = -1;

    /* renamed from: q */
    boolean f37666q = false;

    /* renamed from: a */
    private static int m20653a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (!str.equals(str2)) {
            return -1;
        }
        return i + i2;
    }

    /* renamed from: a */
    public final int m20654a() {
        int i = this.f37661l;
        if (i == -1 && this.f37662m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f37662m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    /* renamed from: a */
    public final int m20652a(String str, String str2, Set<String> set, String str3) {
        if (this.f37650a.isEmpty() && this.f37651b.isEmpty() && this.f37652c.isEmpty() && this.f37653d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int m20653a = m20653a(m20653a(m20653a(0, this.f37650a, str, 1073741824), this.f37651b, str2, 2), this.f37653d, str3, 4);
        if (m20653a != -1 && set.containsAll(this.f37652c)) {
            return m20653a + (this.f37652c.size() * 4);
        }
        return 0;
    }
}
