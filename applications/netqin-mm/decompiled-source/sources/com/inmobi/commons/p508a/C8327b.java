package com.inmobi.commons.p508a;

import android.content.Context;
import com.inmobi.commons.core.p512d.C8364c;
/* renamed from: com.inmobi.commons.a.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/a/b.class */
public final class C8327b {
    /* renamed from: a */
    public static String m5881a() {
        String str = "";
        for (char c : "7.3.0".toCharArray()) {
            str = c == '.' ? str + "T" : str + ((char) ((c - '0') + 65));
        }
        return "pr-SAND-" + str + "-20190725";
    }

    /* renamed from: a */
    public static String m5880a(Context context) {
        return C8364c.m5805a(context, "sdk_version_store").m5796c("sdk_version");
    }

    /* renamed from: a */
    public static void m5879a(Context context, boolean z) {
        C8364c.m5805a(context, "sdk_version_store").m5800a("db_deletion_failed", z);
    }
}
