package com.google.android.gms.tagmanager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzaa.class */
public final class zzaa implements zzw {
    private final /* synthetic */ zzy zzbai;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzy zzyVar) {
        this.zzbai = zzyVar;
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
        zzdi.zzab("Refresh ignored: container loaded as default only.");
    }
}
