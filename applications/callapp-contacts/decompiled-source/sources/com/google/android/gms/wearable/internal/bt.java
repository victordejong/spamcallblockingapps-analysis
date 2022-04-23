package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.k;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bt.class */
public final class bt implements k.b {

    /* renamed from: a  reason: collision with root package name */
    private final Status f30096a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30097b;

    public bt(Status status, int i) {
        this.f30096a = status;
        this.f30097b = i;
    }

    @Override // com.google.android.gms.wearable.k.b
    public final int a() {
        return this.f30097b;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.f30096a;
    }
}
