package org.mistergroup.shouldianswer.model;

import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: org.mistergroup.shouldianswer.model.x */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/x.class */
public final class C2464x {
    /* renamed from: a */
    public static final String m969a(NumberInfo numberInfo) {
        String str;
        if (numberInfo == null || C1694h.m3123a((Object) numberInfo.m1485a(), (Object) "-2")) {
            return "EMPTY";
        }
        if (C1694h.m3123a((Object) numberInfo.m1485a(), (Object) "-1")) {
            return "HIDDEN";
        }
        if (numberInfo.m1451o() == null) {
            return numberInfo.m1485a();
        }
        int length = numberInfo.m1485a().length() - 4;
        if (length > 0) {
            StringBuilder sb = new StringBuilder();
            String m1485a = numberInfo.m1485a();
            if (m1485a == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String substring = m1485a.substring(0, length);
            C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb.append(substring);
            sb.append("#");
            String m1485a2 = numberInfo.m1485a();
            if (m1485a2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String substring2 = m1485a2.substring(length);
            C1694h.m3122a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
            sb.append(Integer.toHexString(substring2.hashCode()));
            str = sb.toString();
        } else {
            str = numberInfo.m1485a();
        }
        return str;
    }

    /* renamed from: a */
    public static final boolean m968a(NumberInfo numberInfo, NumberInfo numberInfo2) {
        boolean z = false;
        if (numberInfo == null) {
            return false;
        }
        if (numberInfo2 != null) {
            z = C1694h.m3123a((Object) numberInfo.m1485a(), (Object) numberInfo2.m1479b());
        }
        return z;
    }

    /* renamed from: b */
    public static final boolean m967b(NumberInfo numberInfo) {
        if (numberInfo == null) {
            return true;
        }
        return C1694h.m3123a((Object) numberInfo.m1485a(), (Object) "-2");
    }

    /* renamed from: c */
    public static final boolean m966c(NumberInfo numberInfo) {
        if (numberInfo == null) {
            return false;
        }
        return !C1694h.m3123a((Object) numberInfo.m1485a(), (Object) "-2");
    }

    /* renamed from: d */
    public static final boolean m965d(NumberInfo numberInfo) {
        return !m964e(numberInfo);
    }

    /* renamed from: e */
    public static final boolean m964e(NumberInfo numberInfo) {
        boolean z = false;
        if (numberInfo == null) {
            return false;
        }
        if ((numberInfo.m1485a().length() == 0) || C1747g.m3036a(numberInfo.m1485a(), "-1", true) || C1747g.m3036a(numberInfo.m1485a(), "-2", true) || C1747g.m3036a(numberInfo.m1485a(), "UNAVAILABLE", true) || C1747g.m3036a(numberInfo.m1485a(), "ABSENT NUMBER", true) || C1747g.m3036a(numberInfo.m1485a(), "NNN", true) || C1747g.m3036a(numberInfo.m1485a(), "PRIVATE NUMBER", true) || C1747g.m3036a(numberInfo.m1485a(), "ANONYMOUS", true)) {
            z = true;
        }
        return z;
    }
}
