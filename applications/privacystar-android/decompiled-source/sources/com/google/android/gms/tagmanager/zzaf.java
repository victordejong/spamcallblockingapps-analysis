package com.google.android.gms.tagmanager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzaf.class */
public final class zzaf implements zzw {
    private final /* synthetic */ zzy zzbai;

    private zzaf(zzy zzyVar) {
        this.zzbai = zzyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaf(zzy zzyVar, zzz zzzVar) {
        this(zzyVar);
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final void zzdb(String str) {
        this.zzbai.zzdb(str);
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final String zznh() {
        return this.zzbai.zznh();
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final void zznj() {
        zzej zzejVar;
        zzejVar = this.zzbai.zzazx;
        if (zzejVar.zzew()) {
            this.zzbai.zzap(0L);
        }
    }
}
