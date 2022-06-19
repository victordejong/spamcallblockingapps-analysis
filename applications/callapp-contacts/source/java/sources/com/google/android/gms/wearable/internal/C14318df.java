package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.C14229h;
/* renamed from: com.google.android.gms.wearable.internal.df */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/df.class */
final class C14318df implements C11899i.AbstractC11901b<Object> {

    /* renamed from: a */
    private final /* synthetic */ DataHolder f52281a;

    public C14318df(DataHolder dataHolder) {
        this.f52281a = dataHolder;
    }

    @Override // com.google.android.gms.common.api.internal.C11899i.AbstractC11901b
    /* renamed from: a */
    public final void mo11373a() {
        this.f52281a.close();
    }

    @Override // com.google.android.gms.common.api.internal.C11899i.AbstractC11901b
    /* renamed from: a */
    public final /* synthetic */ void mo11372a(Object obj) {
        try {
            new C14229h(this.f52281a);
        } finally {
            this.f52281a.close();
        }
    }
}
