package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24932m0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zacx.class */
public final class zacx {

    /* renamed from: c */
    public static final Status f5888c = new Status(8, "The connection to Google Play services was lost");
    @VisibleForTesting

    /* renamed from: a */
    public final Set<BasePendingResult<?>> f5889a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: b */
    public final C24932m0 f5890b = new C24932m0(this);

    /* renamed from: a */
    public final void m38942a() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f5889a.toArray(new BasePendingResult[0])) {
            basePendingResult.zan(null);
            if (basePendingResult.zaj()) {
                this.f5889a.remove(basePendingResult);
            }
        }
    }
}
