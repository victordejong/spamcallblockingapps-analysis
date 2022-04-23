package com.callapp.contacts.activity.contact.list.search;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\f\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b¨\u0006\r"}, d2 = {"Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;", "", "()V", "isLegalPhoneChar", "", "ch", "", "index", "", "isPhoneValidSearch", "searchTerm", "", "isT9ValidSearch", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchUtils.class */
public final class SearchUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final SearchUtils f12802a = new SearchUtils();

    private SearchUtils() {
    }

    public static boolean a(String searchTerm) {
        p.d(searchTerm, "searchTerm");
        String str = searchTerm;
        return kotlin.h.p.a((CharSequence) str, '0', 0, false, 6) != 0 && kotlin.h.p.a((CharSequence) str, '1', 0, false, 6) == -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r5 != 0) goto L_0x0053;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002e, code lost:
        if ('9' < r0) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(java.lang.String r3) {
        /*
            r0 = r3
            java.lang.String r1 = "searchTerm"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r3
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            r4 = r0
            r0 = 0
            r5 = r0
        L_0x0012:
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 >= r1) goto L_0x0084
            r0 = r3
            r1 = r5
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = 48
            r1 = r7
            if (r0 > r1) goto L_0x0031
            r0 = r6
            r8 = r0
            r0 = 57
            r1 = r7
            if (r0 >= r1) goto L_0x0077
        L_0x0031:
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 42
            if (r0 == r1) goto L_0x0077
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 35
            if (r0 == r1) goto L_0x0077
            r0 = r7
            r1 = 43
            if (r0 != r1) goto L_0x0053
            r0 = r6
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0077
        L_0x0053:
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 44
            if (r0 == r1) goto L_0x0077
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 59
            if (r0 == r1) goto L_0x0077
            r0 = r7
            r1 = 78
            if (r0 != r1) goto L_0x0074
            r0 = r6
            r8 = r0
            goto L_0x0077
        L_0x0074:
            r0 = 0
            r8 = r0
        L_0x0077:
            r0 = r8
            if (r0 != 0) goto L_0x007e
            r0 = 0
            return r0
        L_0x007e:
            int r5 = r5 + 1
            goto L_0x0012
        L_0x0084:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.search.SearchUtils.b(java.lang.String):boolean");
    }
}
