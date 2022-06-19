package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.AbstractC4465c;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/s.class */
public final class C2565s implements AbstractC4465c<TResult> {

    /* renamed from: a */
    private final /* synthetic */ C4470h f7222a;

    /* renamed from: b */
    private final /* synthetic */ C2538bg f7223b;

    public C2565s(C2538bg c2538bg, C4470h c4470h) {
        this.f7223b = c2538bg;
        this.f7222a = c4470h;
    }

    @Override // com.google.android.gms.tasks.AbstractC4465c
    /* renamed from: a */
    public final void mo1947a(AbstractC4469g<TResult> abstractC4469g) {
        Map map;
        map = this.f7223b.f7147b;
        map.remove(this.f7222a);
    }
}
