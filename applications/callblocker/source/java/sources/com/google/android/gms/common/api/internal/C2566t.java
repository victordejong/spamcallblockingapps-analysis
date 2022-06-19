package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.Status;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/t.class */
public final class C2566t implements AbstractC2495e.AbstractC2496a {

    /* renamed from: a */
    private final /* synthetic */ BasePendingResult f7224a;

    /* renamed from: b */
    private final /* synthetic */ C2538bg f7225b;

    public C2566t(C2538bg c2538bg, BasePendingResult basePendingResult) {
        this.f7225b = c2538bg;
        this.f7224a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.AbstractC2495e.AbstractC2496a
    /* renamed from: a */
    public final void mo14140a(Status status) {
        Map map;
        map = this.f7225b.f7146a;
        map.remove(this.f7224a);
    }
}
