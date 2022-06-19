package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.internal.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/k.class */
public final class C15075k extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ AbstractRunnableC15073i f54780a;

    /* renamed from: b */
    final /* synthetic */ C15082r f54781b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15075k(C15082r c15082r, C15192p c15192p, AbstractRunnableC15073i abstractRunnableC15073i) {
        super(c15192p);
        this.f54781b = c15082r;
        this.f54780a = abstractRunnableC15073i;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15082r.m9501a(this.f54781b, this.f54780a);
    }
}
