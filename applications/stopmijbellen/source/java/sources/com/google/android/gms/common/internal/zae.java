package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zae.class */
public final class zae extends zag {
    public final /* synthetic */ Intent zaa;
    public final /* synthetic */ Fragment zab;
    public final /* synthetic */ int zac;

    public zae(Intent intent, Fragment fragment, int i) {
        this.zaa = intent;
        this.zab = fragment;
        this.zac = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.zaa;
        if (intent != null) {
            this.zab.startActivityForResult(intent, this.zac);
        }
    }
}
