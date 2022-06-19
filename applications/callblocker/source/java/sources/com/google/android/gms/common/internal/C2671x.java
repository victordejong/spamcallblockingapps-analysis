package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/x.class */
public final class C2671x extends AbstractDialogInterface$OnClickListenerC2640f {

    /* renamed from: a */
    private final /* synthetic */ Intent f7431a;

    /* renamed from: b */
    private final /* synthetic */ Activity f7432b;

    /* renamed from: c */
    private final /* synthetic */ int f7433c;

    public C2671x(Intent intent, Activity activity, int i) {
        this.f7431a = intent;
        this.f7432b = activity;
        this.f7433c = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC2640f
    /* renamed from: a */
    public final void mo13908a() {
        if (this.f7431a != null) {
            this.f7432b.startActivityForResult(this.f7431a, this.f7433c);
        }
    }
}
