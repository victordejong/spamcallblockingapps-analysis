package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaai.class */
public final class zaai extends zabf {
    private final /* synthetic */ zaah zafv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaai(zaah zaahVar, zabd zabdVar) {
        super(zabdVar);
        this.zafv = zaahVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zaan() {
        this.zafv.onConnectionSuspended(1);
    }
}
