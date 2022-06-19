package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.AbstractC11898h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.ab */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ab.class */
public final class C11976ab extends AbstractDialogInterface$OnClickListenerC11977ac {

    /* renamed from: a */
    final /* synthetic */ Intent f39483a;

    /* renamed from: b */
    final /* synthetic */ AbstractC11898h f39484b;

    public C11976ab(Intent intent, AbstractC11898h abstractC11898h, int i) {
        this.f39483a = intent;
        this.f39484b = abstractC11898h;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC11977ac
    /* renamed from: a */
    public final void mo19079a() {
        Intent intent = this.f39483a;
        if (intent != null) {
            this.f39484b.startActivityForResult(intent, 2);
        }
    }
}
