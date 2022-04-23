package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.l;
import com.bytedance.sdk.a.b.m;
import com.bytedance.sdk.a.b.r;
import com.bytedance.sdk.a.b.s;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f7890a = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    public static int a(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    public static int a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static long a(aa aaVar) {
        return a(aaVar.g());
    }

    public static long a(r rVar) {
        return a(rVar.a("Content-Length"));
    }

    private static long a(String str) {
        long j = -1;
        if (str == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    public static void a(m mVar, s sVar, r rVar) {
        if (mVar != m.f8119a) {
            List<l> a2 = l.a(sVar, rVar);
            if (!a2.isEmpty()) {
                mVar.a(sVar, a2);
            }
        }
    }

    public static int b(String str, int i) {
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

    public static boolean b(aa aaVar) {
        if (aaVar.a().b().equals("HEAD")) {
            return false;
        }
        int c2 = aaVar.c();
        return (((c2 >= 100 && c2 < 200) || c2 == 204 || c2 == 304) && a(aaVar) == -1 && !"chunked".equalsIgnoreCase(aaVar.a("Transfer-Encoding"))) ? false : true;
    }
}
