package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.AbstractC14355k;
/* renamed from: com.google.android.gms.wearable.internal.bt */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bt.class */
public final class C14278bt implements AbstractC14355k.AbstractC14357b {

    /* renamed from: a */
    private final Status f52234a;

    /* renamed from: b */
    private final int f52235b;

    public C14278bt(Status status, int i) {
        this.f52234a = status;
        this.f52235b = i;
    }

    @Override // com.google.android.gms.wearable.AbstractC14355k.AbstractC14357b
    /* renamed from: a */
    public final int mo11347a() {
        return this.f52235b;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.f52234a;
    }
}
