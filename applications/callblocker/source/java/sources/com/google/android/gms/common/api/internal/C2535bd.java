package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* renamed from: com.google.android.gms.common.api.internal.bd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bd.class */
final class C2535bd extends AbstractC2510af {

    /* renamed from: a */
    private final /* synthetic */ Dialog f7144a;

    /* renamed from: b */
    private final /* synthetic */ RunnableC2533bb f7145b;

    public C2535bd(RunnableC2533bb runnableC2533bb, Dialog dialog) {
        this.f7145b = runnableC2533bb;
        this.f7144a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2510af
    /* renamed from: a */
    public final void mo14347a() {
        this.f7145b.f7140a.m14350h();
        if (this.f7144a.isShowing()) {
            this.f7144a.dismiss();
        }
    }
}
