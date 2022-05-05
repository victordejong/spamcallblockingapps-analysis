package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaac.class */
public final class zaac implements PendingResult.StatusListener {

    /* renamed from: a */
    private final /* synthetic */ BasePendingResult f7131a;

    /* renamed from: b */
    private final /* synthetic */ zaz f7132b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaac(zaz zazVar, BasePendingResult basePendingResult) {
        this.f7132b = zazVar;
        this.f7131a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    /* renamed from: a */
    public final void mo14432a(Status status) {
        Map map;
        map = this.f7132b.f7361a;
        map.remove(this.f7131a);
    }
}
