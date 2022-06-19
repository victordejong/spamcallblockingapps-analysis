package org.mistergroup.shouldianswer.utils;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/f.class */
public final class C3099f {

    /* renamed from: a */
    public static final C3099f f9116a = new C3099f();

    /* renamed from: b */
    private static final String f9117b = null;

    /* renamed from: c */
    private static String f9118c;

    private C3099f() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
        if (r8 != null) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0187  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m177a() {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3099f.m177a():java.lang.String");
    }

    /* renamed from: a */
    public final String m176a(String str) {
        C1694h.m3117b(str, "country");
        return String.valueOf(PhoneNumberUtil.getInstance().getCountryCodeForRegion(str));
    }
}
