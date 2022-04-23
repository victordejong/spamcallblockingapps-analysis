package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ds.class */
public final class ds implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final c f30136a;

    /* renamed from: b  reason: collision with root package name */
    private final Status f30137b;

    public ds(Status status, c cVar) {
        this.f30137b = status;
        this.f30136a = cVar;
    }

    @Override // com.google.android.gms.wearable.a.b
    public final c a() {
        return this.f30136a;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.f30137b;
    }
}
