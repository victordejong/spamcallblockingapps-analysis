package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebo.class */
public final class ebo extends ebp {

    /* renamed from: b */
    private static final int[] f48625b = new int[0];

    /* renamed from: c */
    private final ebt f48626c;

    /* renamed from: d */
    private final AtomicReference<ebn> f48627d;

    public ebo() {
        this(null);
    }

    private ebo(ebt ebtVar) {
        this.f48626c = null;
        this.f48627d = new AtomicReference<>(new ebn());
    }

    /* renamed from: a */
    private static int m15306a(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        } else if (i2 != -1) {
            return i - i2;
        } else {
            return 1;
        }
    }

    /* renamed from: b */
    private static boolean m15305b(int i, boolean z) {
        int i2 = i & 3;
        if (i2 != 3) {
            return z && i2 == 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:263:0x01e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01bc  */
    @Override // com.google.android.gms.internal.ads.ebp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.ebu[] mo15303a(com.google.android.gms.internal.ads.dwc[] r7, com.google.android.gms.internal.ads.ebi[] r8, int[][][] r9) throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 2082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ebo.mo15303a(com.google.android.gms.internal.ads.dwc[], com.google.android.gms.internal.ads.ebi[], int[][][]):com.google.android.gms.internal.ads.ebu[]");
    }
}
