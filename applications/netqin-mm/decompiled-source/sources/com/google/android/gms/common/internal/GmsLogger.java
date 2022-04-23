package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsLogger.class */
public final class GmsLogger {
    public GmsLogger(String str, String str2) {
        Preconditions.m17287a(str, (Object) "log tag cannot be null");
        Preconditions.m17282a(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        if (str2 == null || str2.length() <= 0) {
        }
    }
}
