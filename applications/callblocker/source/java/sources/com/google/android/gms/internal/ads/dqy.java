package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqy.class */
public final class dqy extends drd {

    /* renamed from: a */
    private static final int[] f15447a = new int[0];

    /* renamed from: b */
    private final drh f15448b;

    /* renamed from: c */
    private final AtomicReference<drb> f15449c;

    public dqy() {
        this(null);
    }

    private dqy(drh drhVar) {
        this.f15448b = null;
        this.f15449c = new AtomicReference<>(new drb());
    }

    /* renamed from: a */
    private static int m8833a(int i, int i2) {
        int i3;
        if (i == -1) {
            i3 = -1;
            if (i2 == -1) {
                i3 = 0;
            }
        } else {
            i3 = i2 == -1 ? 1 : i - i2;
        }
        return i3;
    }

    /* renamed from: a */
    private static boolean m8832a(dlf dlfVar, String str) {
        return str != null && TextUtils.equals(str, dsn.m8697b(dlfVar.f14649q));
    }

    /* renamed from: b */
    private static boolean m8831b(int i, boolean z) {
        int i2 = i & 3;
        return i2 == 3 || (z && i2 == 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0313 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02ee  */
    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.dre[] mo8828a(com.google.android.gms.internal.ads.dll[] r7, com.google.android.gms.internal.ads.dqv[] r8, int[][][] r9) {
        /*
            Method dump skipped, instructions count: 2056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dqy.mo8828a(com.google.android.gms.internal.ads.dll[], com.google.android.gms.internal.ads.dqv[], int[][][]):com.google.android.gms.internal.ads.dre[]");
    }
}
