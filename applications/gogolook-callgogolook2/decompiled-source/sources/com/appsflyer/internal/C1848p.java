package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AndroidUtils;
/* renamed from: com.appsflyer.internal.p */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p.class */
public final class C1848p {

    /* renamed from: com.appsflyer.internal.p$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p$a.class */
    public static final class C1849a {

        /* renamed from: Ι */
        public static final C1848p f1887 = new C1848p();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0068, code lost:
        if (r9 == null) goto L_0x006b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0082, code lost:
        if (60000 < (r10.getTime() - r9.getTime())) goto L_0x0085;
     */
    @androidx.annotation.Nullable
    /* renamed from: ı */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.location.Location m36126(@androidx.annotation.NonNull android.content.Context r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = r7
            java.lang.String r1 = "location"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: all -> 0x0091
            android.location.LocationManager r0 = (android.location.LocationManager) r0     // Catch: all -> 0x0091
            r9 = r0
            r0 = r7
            r1 = 2
            java.lang.String[] r1 = new java.lang.String[r1]     // Catch: all -> 0x0091
            r2 = r1
            r3 = 0
            java.lang.String r4 = "android.permission.ACCESS_FINE_LOCATION"
            r2[r3] = r4     // Catch: all -> 0x0091
            r2 = r1
            r3 = 1
            java.lang.String r4 = "android.permission.ACCESS_COARSE_LOCATION"
            r2[r3] = r4     // Catch: all -> 0x0091
            boolean r0 = m36125(r0, r1)     // Catch: all -> 0x0091
            if (r0 == 0) goto L_0x002b
            r0 = r9
            java.lang.String r1 = "network"
            android.location.Location r0 = r0.getLastKnownLocation(r1)     // Catch: all -> 0x0091
            r10 = r0
            goto L_0x002d
        L_0x002b:
            r0 = 0
            r10 = r0
        L_0x002d:
            r0 = r7
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]     // Catch: all -> 0x0091
            r2 = r1
            r3 = 0
            java.lang.String r4 = "android.permission.ACCESS_FINE_LOCATION"
            r2[r3] = r4     // Catch: all -> 0x0091
            boolean r0 = m36125(r0, r1)     // Catch: all -> 0x0091
            if (r0 == 0) goto L_0x0047
            r0 = r9
            java.lang.String r1 = "gps"
            android.location.Location r0 = r0.getLastKnownLocation(r1)     // Catch: all -> 0x0091
            r9 = r0
            goto L_0x0049
        L_0x0047:
            r0 = 0
            r9 = r0
        L_0x0049:
            r0 = r9
            if (r0 != 0) goto L_0x0056
            r0 = r10
            if (r0 != 0) goto L_0x0056
            r0 = 0
            r7 = r0
            goto L_0x0087
        L_0x0056:
            r0 = r9
            if (r0 != 0) goto L_0x0061
            r0 = r10
            if (r0 == 0) goto L_0x0061
            goto L_0x0085
        L_0x0061:
            r0 = r10
            if (r0 != 0) goto L_0x006b
            r0 = r9
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0087
        L_0x006b:
            r0 = r10
            long r0 = r0.getTime()     // Catch: all -> 0x0091
            r11 = r0
            r0 = r9
            long r0 = r0.getTime()     // Catch: all -> 0x0091
            r13 = r0
            r0 = r9
            r7 = r0
            r0 = 60000(0xea60, double:2.9644E-319)
            r1 = r11
            r2 = r13
            long r1 = r1 - r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0087
        L_0x0085:
            r0 = r10
            r7 = r0
        L_0x0087:
            r0 = r8
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x008f
            r0 = r7
            r10 = r0
        L_0x008f:
            r0 = r10
            return r0
        L_0x0091:
            r7 = move-exception
            r0 = r8
            r10 = r0
            goto L_0x008f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C1848p.m36126(android.content.Context):android.location.Location");
    }

    /* renamed from: ǃ */
    public static boolean m36125(@NonNull Context context, @NonNull String[] strArr) {
        for (String str : strArr) {
            if (AndroidUtils.isPermissionAvailable(context, str)) {
                return true;
            }
        }
        return false;
    }
}
