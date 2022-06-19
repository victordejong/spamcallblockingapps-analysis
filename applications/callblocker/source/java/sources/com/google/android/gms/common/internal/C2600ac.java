package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C2659r;
import com.google.android.gms.tasks.C4470h;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ac.class */
public final class C2600ac implements AbstractC2495e.AbstractC2496a {

    /* renamed from: a */
    private final /* synthetic */ AbstractC2495e f7285a;

    /* renamed from: b */
    private final /* synthetic */ C4470h f7286b;

    /* renamed from: c */
    private final /* synthetic */ C2659r.AbstractC2660a f7287c;

    /* renamed from: d */
    private final /* synthetic */ C2659r.AbstractC2661b f7288d;

    public C2600ac(AbstractC2495e abstractC2495e, C4470h c4470h, C2659r.AbstractC2660a abstractC2660a, C2659r.AbstractC2661b abstractC2661b) {
        this.f7285a = abstractC2495e;
        this.f7286b = c4470h;
        this.f7287c = abstractC2660a;
        this.f7288d = abstractC2661b;
    }

    @Override // com.google.android.gms.common.api.AbstractC2495e.AbstractC2496a
    /* renamed from: a */
    public final void mo14140a(Status status) {
        if (!status.m14460d()) {
            this.f7286b.m3888a((Exception) this.f7288d.mo13986a(status));
            return;
        }
        this.f7286b.m3887a((C4470h) this.f7287c.mo13987a(this.f7285a.mo14389a(0L, TimeUnit.MILLISECONDS)));
    }
}
