package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.AbstractC14223c;
/* renamed from: com.google.android.gms.wearable.internal.ds */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ds.class */
public final class C14331ds implements AbstractC14209a.AbstractC14211b {

    /* renamed from: a */
    private final AbstractC14223c f52293a;

    /* renamed from: b */
    private final Status f52294b;

    public C14331ds(Status status, AbstractC14223c abstractC14223c) {
        this.f52294b = status;
        this.f52293a = abstractC14223c;
    }

    @Override // com.google.android.gms.wearable.AbstractC14209a.AbstractC14211b
    /* renamed from: a */
    public final AbstractC14223c mo11364a() {
        return this.f52293a;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.f52294b;
    }
}
