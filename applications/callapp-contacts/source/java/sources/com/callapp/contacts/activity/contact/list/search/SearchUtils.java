package com.callapp.contacts.activity.contact.list.search;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\f\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b¨\u0006\r"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;", "", "()V", "isLegalPhoneChar", "", "ch", "", "index", "", "isPhoneValidSearch", "searchTerm", "", "isT9ValidSearch", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchUtils.class */
public final class SearchUtils {

    /* renamed from: a */
    public static final SearchUtils f22881a = new SearchUtils();

    private SearchUtils() {
    }

    /* renamed from: a */
    public static boolean m30364a(String searchTerm) {
        C18524p.m3840d(searchTerm, "searchTerm");
        String str = searchTerm;
        return C18425p.m3949a((CharSequence) str, '0', 0, false, 6) != 0 && C18425p.m3949a((CharSequence) str, '1', 0, false, 6) == -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r5 != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002e, code lost:
        if ('9' < r0) goto L9;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m30363b(java.lang.String r3) {
        /*
            r0 = r3
            java.lang.String r1 = "searchTerm"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r3
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            r4 = r0
            r0 = 0
            r5 = r0
        L12:
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 >= r1) goto L84
            r0 = r3
            r1 = r5
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = 48
            r1 = r7
            if (r0 > r1) goto L31
            r0 = r6
            r8 = r0
            r0 = 57
            r1 = r7
            if (r0 >= r1) goto L77
        L31:
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 42
            if (r0 == r1) goto L77
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 35
            if (r0 == r1) goto L77
            r0 = r7
            r1 = 43
            if (r0 != r1) goto L53
            r0 = r6
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L77
        L53:
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 44
            if (r0 == r1) goto L77
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = 59
            if (r0 == r1) goto L77
            r0 = r7
            r1 = 78
            if (r0 != r1) goto L74
            r0 = r6
            r8 = r0
            goto L77
        L74:
            r0 = 0
            r8 = r0
        L77:
            r0 = r8
            if (r0 != 0) goto L7e
            r0 = 0
            return r0
        L7e:
            int r5 = r5 + 1
            goto L12
        L84:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.search.SearchUtils.m30363b(java.lang.String):boolean");
    }
}
