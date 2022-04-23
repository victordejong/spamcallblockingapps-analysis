package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zac.class */
final class zac extends DialogRedirect {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ int val$requestCode;
    private final /* synthetic */ Intent zaog;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(Intent intent, Activity activity, int i) {
        this.zaog = intent;
        this.val$activity = activity;
        this.val$requestCode = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    public final void redirect() {
        if (this.zaog != null) {
            this.val$activity.startActivityForResult(this.zaog, this.val$requestCode);
        }
    }
}
