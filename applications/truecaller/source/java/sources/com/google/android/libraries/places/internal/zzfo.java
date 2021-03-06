package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzfo.class */
public final class zzfo {
    private final zzfj zza;
    private final String zzb;

    private zzfo(zzfj zzfjVar, String str) {
        this.zza = zzfjVar;
        this.zzb = (String) zzft.zza(str);
    }

    public /* synthetic */ zzfo(zzfj zzfjVar, String str, zzfm zzfmVar) {
        this(zzfjVar, str);
    }

    public final StringBuilder zza(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
        try {
            zzft.zza(sb);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                sb.append(this.zza.zza(next.getKey()));
                sb.append((CharSequence) this.zzb);
                sb.append(this.zza.zza(next.getValue()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.zza.zza);
                    Map.Entry<?, ?> next2 = it.next();
                    sb.append(this.zza.zza(next2.getKey()));
                    sb.append((CharSequence) this.zzb);
                    sb.append(this.zza.zza(next2.getValue()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
