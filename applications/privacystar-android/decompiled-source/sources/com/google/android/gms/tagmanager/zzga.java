package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzga.class */
public final class zzga implements DataLayer.zzb {
    private final /* synthetic */ TagManager zzbgh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzga(TagManager tagManager) {
        this.zzbgh = tagManager;
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzb
    public final void zzf(Map<String, Object> map) {
        Object obj = map.get("event");
        if (obj != null) {
            this.zzbgh.zzdx(obj.toString());
        }
    }
}
