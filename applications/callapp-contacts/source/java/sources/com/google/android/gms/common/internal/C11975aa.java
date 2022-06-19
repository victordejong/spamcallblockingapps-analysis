package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aa.class */
public final class C11975aa extends AbstractDialogInterface$OnClickListenerC11977ac {

    /* renamed from: a */
    final /* synthetic */ Intent f39480a;

    /* renamed from: b */
    final /* synthetic */ Fragment f39481b;

    /* renamed from: c */
    final /* synthetic */ int f39482c;

    public C11975aa(Intent intent, Fragment fragment, int i) {
        this.f39480a = intent;
        this.f39481b = fragment;
        this.f39482c = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC11977ac
    /* renamed from: a */
    public final void mo19079a() {
        Intent intent = this.f39480a;
        if (intent != null) {
            this.f39481b.startActivityForResult(intent, this.f39482c);
        }
    }
}
