package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC6003f;
import com.google.android.gms.common.api.Status;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.j1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j1.class */
public final class C6039j1 implements AbstractC6003f.AbstractC6004a {

    /* renamed from: a */
    final /* synthetic */ BasePendingResult f19316a;

    /* renamed from: b */
    final /* synthetic */ C6061s f19317b;

    public C6039j1(C6061s c6061s, BasePendingResult basePendingResult) {
        this.f19317b = c6061s;
        this.f19316a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.AbstractC6003f.AbstractC6004a
    /* renamed from: a */
    public final void mo17053a(Status status) {
        Map map;
        map = this.f19317b.f19348a;
        map.remove(this.f19316a);
    }
}
