package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a0.class */
public final class C6105a0 extends AbstractDialogInterface$OnClickListenerC6111c0 {

    /* renamed from: d */
    final /* synthetic */ Intent f19485d;

    /* renamed from: e */
    final /* synthetic */ Activity f19486e;

    /* renamed from: f */
    final /* synthetic */ int f19487f;

    public C6105a0(Intent intent, Activity activity, int i) {
        this.f19485d = intent;
        this.f19486e = activity;
        this.f19487f = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC6111c0
    /* renamed from: a */
    public final void mo17136a() {
        Intent intent = this.f19485d;
        if (intent != null) {
            this.f19486e.startActivityForResult(intent, this.f19487f);
        }
    }
}
