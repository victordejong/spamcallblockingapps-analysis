package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdd.class */
public final class zzdd extends zzbq {

    /* renamed from: ID */
    private static final String f182ID = zza.LANGUAGE.toString();

    public zzdd() {
        super(f182ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String language;
        Locale locale = Locale.getDefault();
        if (!(locale == null || (language = locale.getLanguage()) == null)) {
            return zzgj.zzj(language.toLowerCase());
        }
        return zzgj.zzqg();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ String zzok() {
        return super.zzok();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ Set zzol() {
        return super.zzol();
    }
}
