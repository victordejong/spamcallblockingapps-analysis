package com.appsflyer.internal;

import android.net.NetworkInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: com.appsflyer.internal.s */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/s.class */
public final class C1853s {

    /* renamed from: com.appsflyer.internal.s$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/s$a.class */
    public static final class C1854a {

        /* renamed from: ı */
        public final String f1900;

        /* renamed from: ɩ */
        public final String f1901;

        /* renamed from: ι */
        public final String f1902;

        public C1854a(@NonNull String str, @Nullable String str2, @Nullable String str3) {
            this.f1900 = str;
            this.f1901 = str2;
            this.f1902 = str3;
        }
    }

    /* renamed from: com.appsflyer.internal.s$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/s$d.class */
    public static final class C1855d {

        /* renamed from: ι */
        public static final C1853s f1903 = new C1853s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0127, code lost:
        if (r0.isEmpty() != false) goto L_0x012a;
     */
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.appsflyer.internal.C1853s.C1854a m36116(@androidx.annotation.NonNull android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1853s.m36116(android.content.Context):com.appsflyer.internal.s$a");
    }

    /* renamed from: ɩ */
    public static boolean m36115(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }
}
