package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.e;
import com.google.android.gms.wearable.internal.al;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/h.class */
public final class h extends e<Object> implements m {

    /* renamed from: b  reason: collision with root package name */
    private final Status f30079b;

    public h(DataHolder dataHolder) {
        super(dataHolder);
        this.f30079b = new Status(dataHolder.getStatusCode());
    }

    @Override // com.google.android.gms.common.data.e
    public final /* synthetic */ Object a(int i, int i2) {
        return new al(this.f22799a, i, i2);
    }

    @Override // com.google.android.gms.common.data.e
    public final String c() {
        return "path";
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.f30079b;
    }
}
