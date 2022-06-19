package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p129b.AbstractC4122m;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4121l;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4134s;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.bytedance.sdk.a.b.a.c.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/e.class */
public final class C4024e {

    /* renamed from: a */
    private static final Pattern f14600a = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    /* renamed from: a */
    public static int m36878a(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static int m36877a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m36882a(C4098aa c4098aa) {
        return m36880a(c4098aa.m36606g());
    }

    /* renamed from: a */
    public static long m36880a(C4132r c4132r) {
        return m36879a(c4132r.m36469a("Content-Length"));
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: a */
    private static long m36879a(String str) {
        char c = 65535;
        if (str == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return c;
    }

    /* renamed from: a */
    public static void m36881a(AbstractC4122m abstractC4122m, C4134s c4134s, C4132r c4132r) {
        if (abstractC4122m == AbstractC4122m.f15097a) {
            return;
        }
        List<C4121l> m36516a = C4121l.m36516a(c4134s, c4132r);
        if (m36516a.isEmpty()) {
            return;
        }
        abstractC4122m.mo36506a(c4134s, m36516a);
    }

    /* renamed from: b */
    public static int m36875b(String str, int i) {
        long parseLong;
        try {
            parseLong = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        if (parseLong > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (parseLong < 0) {
            return 0;
        }
        i = (int) parseLong;
        return i;
    }

    /* renamed from: b */
    public static boolean m36876b(C4098aa c4098aa) {
        if (c4098aa.m36614a().m36339b().equals("HEAD")) {
            return false;
        }
        int m36610c = c4098aa.m36610c();
        return (((m36610c >= 100 && m36610c < 200) || m36610c == 204 || m36610c == 304) && m36882a(c4098aa) == -1 && !"chunked".equalsIgnoreCase(c4098aa.m36613a("Transfer-Encoding"))) ? false : true;
    }
}
