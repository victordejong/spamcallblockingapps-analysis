package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3257h0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3255g0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacn.class */
public final class zacn {

    /* renamed from: c */
    public static final Status f23272c = new Status(8, "The connection to Google Play services was lost");
    @VisibleForTesting

    /* renamed from: a */
    public final Set<BasePendingResult<?>> f23273a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: b */
    public final AbstractC3257h0 f23274b = new C3255g0(this);

    /* renamed from: a */
    public final void m17490a() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f23273a.toArray(new BasePendingResult[0])) {
            basePendingResult.m17722a((AbstractC3257h0) null);
            if (basePendingResult.m17711d()) {
                this.f23273a.remove(basePendingResult);
            }
        }
    }

    /* renamed from: a */
    public final void m17489a(BasePendingResult<? extends Result> basePendingResult) {
        this.f23273a.add(basePendingResult);
        basePendingResult.m17722a(this.f23274b);
    }
}
