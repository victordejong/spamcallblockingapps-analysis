package com.google.android.gms.wearable;

import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractC11952e;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.C14243al;
/* renamed from: com.google.android.gms.wearable.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/h.class */
public final class C14229h extends AbstractC11952e<Object> implements AbstractC11925m {

    /* renamed from: b */
    private final Status f52215b;

    public C14229h(DataHolder dataHolder) {
        super(dataHolder);
        this.f52215b = new Status(dataHolder.getStatusCode());
    }

    @Override // com.google.android.gms.common.data.AbstractC11952e
    /* renamed from: a */
    public final /* synthetic */ Object mo11443a(int i, int i2) {
        return new C14243al(this.f39438a, i, i2);
    }

    @Override // com.google.android.gms.common.data.AbstractC11952e
    /* renamed from: c */
    public final String mo11442c() {
        return "path";
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.f52215b;
    }
}
