package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC6003f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C6151n;
import com.google.android.gms.tasks.C7968h;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j0.class */
public final class C6139j0 implements AbstractC6003f.AbstractC6004a {

    /* renamed from: a */
    final /* synthetic */ AbstractC6003f f19560a;

    /* renamed from: b */
    final /* synthetic */ C7968h f19561b;

    /* renamed from: c */
    final /* synthetic */ C6151n.AbstractC6152a f19562c;

    /* renamed from: d */
    final /* synthetic */ AbstractC6145l0 f19563d;

    public C6139j0(AbstractC6003f abstractC6003f, C7968h c7968h, C6151n.AbstractC6152a abstractC6152a, AbstractC6145l0 abstractC6145l0) {
        this.f19560a = abstractC6003f;
        this.f19561b = c7968h;
        this.f19562c = abstractC6152a;
        this.f19563d = abstractC6145l0;
    }

    @Override // com.google.android.gms.common.api.AbstractC6003f.AbstractC6004a
    /* renamed from: a */
    public final void mo17053a(Status status) {
        if (!status.m17486p0()) {
            this.f19561b.m5806b(C6107b.m17143a(status));
            return;
        }
        this.f19561b.m5805c(this.f19562c.mo17028a(this.f19560a.mo17451b(0L, TimeUnit.MILLISECONDS)));
    }
}
