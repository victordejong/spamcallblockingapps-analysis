package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.AbstractC6031h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b0.class */
public final class C6108b0 extends AbstractDialogInterface$OnClickListenerC6111c0 {

    /* renamed from: d */
    final /* synthetic */ Intent f19489d;

    /* renamed from: e */
    final /* synthetic */ AbstractC6031h f19490e;

    public C6108b0(Intent intent, AbstractC6031h abstractC6031h, int i) {
        this.f19489d = intent;
        this.f19490e = abstractC6031h;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC6111c0
    /* renamed from: a */
    public final void mo17136a() {
        Intent intent = this.f19489d;
        if (intent != null) {
            this.f19490e.startActivityForResult(intent, 2);
        }
    }
}
