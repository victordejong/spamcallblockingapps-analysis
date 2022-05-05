package com.flurry.sdk;

import android.text.TextUtils;
import java.io.File;
/* renamed from: com.flurry.sdk.dz */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dz.class */
public class C3012dz {
    /* renamed from: a */
    public static File m33304a(String str) {
        return new File(C3443kz.m32475c().getPath() + File.separator + ".fcaches" + File.separator + str);
    }

    /* renamed from: a */
    public static File m33303a(String str, int i) {
        return new File(C3443kz.m32480a().getPath() + File.separator + ".fcaches" + File.separator + str + File.separator + i);
    }

    /* renamed from: b */
    public static File m33302b(String str) {
        return new File(C3443kz.m32480a().getPath() + File.separator + ".fcaches" + File.separator + str);
    }

    /* renamed from: c */
    public static String m33301c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return String.format("%016x", Long.valueOf(C3445la.m32449i(str))).trim();
    }
}
