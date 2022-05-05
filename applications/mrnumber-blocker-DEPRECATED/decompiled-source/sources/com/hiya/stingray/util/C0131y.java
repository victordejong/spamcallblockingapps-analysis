package com.hiya.stingray.util;

import android.telephony.PhoneNumberUtils;
import com.google.common.base.r;
import com.google.common.collect.q;
import com.hiya.common.phone.java.PhoneNormalizer;
import com.hiya.common.phone.parser.PhoneParser;
import com.hiya.stingray.p.b.x;
import com.hiya.stingray.s.u0;
import g.g.a.a.i.f;
import g.g.a.a.i.h;
import g.g.c.a.a.a.c;
import g.g.c.a.a.a.i;
import g.g.c.a.a.a.j;
import g.g.c.a.c.a.b;
import java.util.Collection;
import java.util.Set;
/* renamed from: com.hiya.stingray.util.y */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/y.class */
public final class C0131y {
    /* renamed from: a */
    public static u0 m897a(String str, String... strArr) {
        boolean b = r.b(str);
        String str2 = "";
        if (b) {
            return new u0("", "", (String) null, false);
        }
        for (String str3 : strArr) {
            PhoneParser.b k = m887k(str, str3);
            if (k.g) {
                return new u0(k.f.b(), k.i.d() ? ((c) k.i.c()).f : str3, k.f.g, true);
            }
        }
        String normalizeNumber = PhoneNumberUtils.normalizeNumber(str);
        if (strArr.length != 0) {
            str2 = strArr[0];
        }
        return new u0(normalizeNumber, str2, (String) null, false);
    }

    /* renamed from: b */
    public static String m896b(String str) {
        if (r.b(str) || C0122p.m938w(str)) {
            return "";
        }
        if (str.matches(".*[a-zA-Z].*")) {
            return str;
        }
        PhoneParser.a f = PhoneParser.c.a().f(new j(str, new i[0]));
        com.google.common.base.j jVar = f.f.i;
        return (!jVar.d() || !((c) jVar.c()).f.equalsIgnoreCase(C0122p.m947n())) ? f.h : f.g;
    }

    /* renamed from: c */
    public static String m895c(String str, String... strArr) {
        return m897a(str, strArr).b();
    }

    /* renamed from: d */
    public static Set<String> m894d(Collection<String> collection, String str) {
        return q.d(collection).c(c.a).j(new d(str)).i();
    }

    /* renamed from: e */
    public static b m893e(String str, String str2, x xVar) {
        return PhoneNormalizer.j(PhoneParser.c.a()).e(new j(str, new i[0]), new c(str2));
    }

    /* renamed from: f */
    public static boolean m892f(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return PhoneParser.c.a().h(new j(str, new i[]{new i.e(str2)})).g;
    }

    /* renamed from: g */
    public static boolean m891g(String str) {
        return !r.b(str) && str.length() >= 4 && str.length() <= 15;
    }

    /* renamed from: h */
    static /* synthetic */ boolean m890h(String str) {
        return !r.b(str);
    }

    /* renamed from: j */
    public static h m888j(b bVar) {
        return new h(bVar.f.f, f.newBuilder().withAreaCode((String) bVar.g.j.g()).withCountryCode(bVar.g.i.d() ? ((c) bVar.g.i.c()).f : null).withIsShortCode(bVar.g.h).withIsValid(bVar.g.g).withParserVersion(bVar.g.f).withRawPhone((String) bVar.g.l.g()).build());
    }

    /* renamed from: k */
    private static PhoneParser.b m887k(String str, String str2) throws PhoneParser.Failure {
        PhoneParser a = PhoneParser.c.a();
        PhoneParser.b h = a.h(new j(str, new i[]{new i.e(str2)}));
        PhoneParser.b bVar = h;
        if (!h.g) {
            bVar = h;
            if (!str.contains("+")) {
                PhoneParser.b h2 = a.h(new j("+" + str, new i[]{new i.e(str2)}));
                bVar = h;
                if (h2.g) {
                    bVar = h2;
                }
            }
        }
        return bVar;
    }
}
