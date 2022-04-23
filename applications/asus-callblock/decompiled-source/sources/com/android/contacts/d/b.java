package com.android.contacts.d;

import com.android.contacts.util.CompatUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/d/b.class */
public final class b {
    public static boolean a(long j) {
        return CompatUtils.isNCompatible() ? c.a(j) : (j == 0 || j == 1) ? false : true;
    }

    public static boolean b(long j) {
        return CompatUtils.isNCompatible() ? c.b(j) : false;
    }
}
