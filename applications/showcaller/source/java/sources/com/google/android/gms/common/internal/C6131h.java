package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h.class */
public final class C6131h {

    /* renamed from: a */
    private final String f19558a;

    /* renamed from: b */
    private final String f19559b;

    public C6131h(@RecentlyNonNull String str) {
        this(str, null);
    }

    public C6131h(@RecentlyNonNull String str, String str2) {
        C6155o.m17017k(str, "log tag cannot be null");
        C6155o.m17025c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f19558a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f19559b = null;
        } else {
            this.f19559b = str2;
        }
    }
}
