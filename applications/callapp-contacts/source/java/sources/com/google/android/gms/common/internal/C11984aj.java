package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12043n;
import com.google.android.gms.tasks.C14186i;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.aj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aj.class */
public final class C11984aj implements AbstractC11921j.AbstractC11922a {

    /* renamed from: a */
    final /* synthetic */ AbstractC11921j f39489a;

    /* renamed from: b */
    final /* synthetic */ C14186i f39490b;

    /* renamed from: c */
    final /* synthetic */ C12043n.AbstractC12044a f39491c;

    /* renamed from: d */
    final /* synthetic */ AbstractC11986al f39492d;

    public C11984aj(AbstractC11921j abstractC11921j, C14186i c14186i, C12043n.AbstractC12044a abstractC12044a, AbstractC11986al abstractC11986al) {
        this.f39489a = abstractC11921j;
        this.f39490b = c14186i;
        this.f39491c = abstractC12044a;
        this.f39492d = abstractC11986al;
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j.AbstractC11922a
    /* renamed from: a */
    public final void mo19222a(Status status) {
        if (!status.isSuccess()) {
            this.f39490b.m11472a((Exception) C12001b.m19215a(status));
            return;
        }
        this.f39490b.m11471a((C14186i) this.f39491c.mo11403a(this.f39489a.mo19293a(0L, TimeUnit.MILLISECONDS)));
    }
}
