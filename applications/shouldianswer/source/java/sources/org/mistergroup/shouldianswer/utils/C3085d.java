package org.mistergroup.shouldianswer.utils;

import android.os.Bundle;
import kotlin.p073a.C1594a;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/d.class */
public final class C3085d {
    /* renamed from: a */
    public static final String m191a(Bundle bundle, String str) {
        C1694h.m3117b(bundle, "$this$toLogString");
        C1694h.m3117b(str, "parentKey");
        StringBuilder sb = new StringBuilder();
        if (bundle.keySet().isEmpty()) {
            sb.append(str + " is empty;");
            C1694h.m3122a((Object) sb, "builder.append(\"$parentKey is empty;\")");
        } else {
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj instanceof Bundle) {
                    StringBuilder sb2 = new StringBuilder();
                    C1694h.m3122a((Object) str2, "key");
                    sb2.append(m191a((Bundle) obj, str2));
                    sb2.append(";");
                    sb.append(sb2.toString());
                } else if (obj instanceof Object[]) {
                    sb.append(str + '.' + str2 + " : " + C1594a.m3210a((Object[]) obj, null, null, null, 0, null, null, 63, null) + ';');
                } else {
                    sb.append(str + '.' + str2 + " : " + obj + ';');
                }
            }
        }
        String sb3 = sb.toString();
        C1694h.m3122a((Object) sb3, "builder.toString()");
        return sb3;
    }

    /* renamed from: a */
    public static /* synthetic */ String m190a(Bundle bundle, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return m191a(bundle, str);
    }
}
