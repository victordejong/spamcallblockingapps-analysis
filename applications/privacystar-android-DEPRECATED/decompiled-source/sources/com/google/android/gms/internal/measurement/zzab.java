package com.google.android.gms.internal.measurement;

import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzab.class */
public final class zzab extends zzi<zzab> {
    private final Map<String, Object> zzsy = new HashMap();

    public final void set(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        String str3 = str;
        if (str != null) {
            str3 = str;
            if (str.startsWith("&")) {
                str3 = str.substring(1);
            }
        }
        Preconditions.checkNotEmpty(str3, "Name can not be empty or \"&\"");
        this.zzsy.put(str3, str2);
    }

    public final String toString() {
        return zza((Object) this.zzsy);
    }

    public final Map<String, Object> zzaw() {
        return Collections.unmodifiableMap(this.zzsy);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzab zzabVar) {
        zzab zzabVar2 = zzabVar;
        Preconditions.checkNotNull(zzabVar2);
        zzabVar2.zzsy.putAll(this.zzsy);
    }
}
