package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzek.class */
public final class zzek extends zzbq {

    /* renamed from: ID */
    private static final String f191ID = zza.REGEX_GROUP.toString();
    private static final String zzbea = zzb.ARG0.toString();
    private static final String zzbeb = zzb.ARG1.toString();
    private static final String zzbec = zzb.IGNORE_CASE.toString();
    private static final String zzbed = zzb.GROUP.toString();

    public zzek() {
        super(f191ID, zzbea, zzbeb);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        zzp zzpVar = map.get(zzbea);
        zzp zzpVar2 = map.get(zzbeb);
        if (zzpVar == null || zzpVar == zzgj.zzqg() || zzpVar2 == null || zzpVar2 == zzgj.zzqg()) {
            return zzgj.zzqg();
        }
        int i = 64;
        if (zzgj.zzg(map.get(zzbec)).booleanValue()) {
            i = 66;
        }
        int i2 = 1;
        zzp zzpVar3 = map.get(zzbed);
        if (zzpVar3 != null) {
            Long zze = zzgj.zze(zzpVar3);
            if (zze == zzgj.zzqb()) {
                return zzgj.zzqg();
            }
            int intValue = zze.intValue();
            i2 = intValue;
            if (intValue < 0) {
                return zzgj.zzqg();
            }
        }
        try {
            Matcher matcher = Pattern.compile(zzgj.zzc(zzpVar2), i).matcher(zzgj.zzc(zzpVar));
            String str = null;
            if (matcher.find()) {
                str = null;
                if (matcher.groupCount() >= i2) {
                    str = matcher.group(i2);
                }
            }
            return str == null ? zzgj.zzqg() : zzgj.zzj(str);
        } catch (PatternSyntaxException e) {
            return zzgj.zzqg();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
