package org.mistergroup.shouldianswer.utils;

import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.w */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/w.class */
public final class C3133w {

    /* renamed from: a */
    public static final C3133w f9268a = new C3133w();

    private C3133w() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if ((r3.length() == 0) != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m30a(java.lang.String r3) {
        /*
            r2 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L1d
            r0 = r3
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            if (r0 != 0) goto L17
            r0 = 1
            r5 = r0
            goto L19
        L17:
            r0 = 0
            r5 = r0
        L19:
            r0 = r5
            if (r0 == 0) goto L1f
        L1d:
            r0 = 1
            r4 = r0
        L1f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3133w.m30a(java.lang.String):boolean");
    }

    /* renamed from: a */
    public final boolean m29a(String str, String str2) {
        return (str == null || str2 == null || !C1694h.m3123a((Object) str, (Object) str2)) ? false : true;
    }

    /* renamed from: b */
    public final int m28b(String str) {
        C1694h.m3117b(str, "str");
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            C3104j.f9124a.m163a(e);
            return 0;
        }
    }
}
