package com.appsflyer.internal;

import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* renamed from: com.appsflyer.internal.u */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u.class */
public final class C0828u {

    /* renamed from: com.appsflyer.internal.u$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u$a.class */
    public static final class C0829a {
        public final String AFInAppEventParameterName;
        public final String AFKeystoreWrapper;
        public final String values;

        public C0829a(@NonNull String str, @Nullable String str2, @Nullable String str3) {
            this.AFInAppEventParameterName = str;
            this.AFKeystoreWrapper = str2;
            this.values = str3;
        }
    }

    /* renamed from: com.appsflyer.internal.u$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/u$b.class */
    public static final class C0830b {
        public static final C0828u valueOf = new C0828u();
    }

    private static boolean AFInAppEventType(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bc, code lost:
        if (r0.isEmpty() != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.appsflyer.internal.C0828u.C0829a valueOf(@android.support.annotation.NonNull android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0828u.valueOf(android.content.Context):com.appsflyer.internal.u$a");
    }
}
