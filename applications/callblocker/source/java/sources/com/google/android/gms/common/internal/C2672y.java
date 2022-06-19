package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.AbstractC2554i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/y.class */
public final class C2672y extends AbstractDialogInterface$OnClickListenerC2640f {

    /* renamed from: a */
    private final /* synthetic */ Intent f7434a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC2554i f7435b;

    /* renamed from: c */
    private final /* synthetic */ int f7436c;

    public C2672y(Intent intent, AbstractC2554i abstractC2554i, int i) {
        this.f7434a = intent;
        this.f7435b = abstractC2554i;
        this.f7436c = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC2640f
    /* renamed from: a */
    public final void mo13908a() {
        if (this.f7434a != null) {
            this.f7435b.startActivityForResult(this.f7434a, this.f7436c);
        }
    }
}
