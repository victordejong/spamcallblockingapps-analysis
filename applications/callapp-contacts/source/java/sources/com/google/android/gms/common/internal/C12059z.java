package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/z.class */
public final class C12059z extends AbstractDialogInterface$OnClickListenerC11977ac {

    /* renamed from: a */
    final /* synthetic */ Intent f39577a;

    /* renamed from: b */
    final /* synthetic */ Activity f39578b;

    /* renamed from: c */
    final /* synthetic */ int f39579c;

    public C12059z(Intent intent, Activity activity, int i) {
        this.f39577a = intent;
        this.f39578b = activity;
        this.f39579c = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC11977ac
    /* renamed from: a */
    public final void mo19079a() {
        Intent intent = this.f39577a;
        if (intent != null) {
            this.f39578b.startActivityForResult(intent, this.f39579c);
        }
    }
}
