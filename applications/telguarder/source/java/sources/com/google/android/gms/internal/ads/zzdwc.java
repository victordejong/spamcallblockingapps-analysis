package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwc.class */
public final class zzdwc {
    private final String separator;

    private zzdwc(String str) {
        this.separator = (String) zzdwl.checkNotNull(str);
    }

    public static zzdwc zzhk(String str) {
        return new zzdwc(str);
    }

    private static CharSequence zzx(Object obj) {
        zzdwl.checkNotNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final StringBuilder zza(StringBuilder sb, Iterator<?> it) {
        try {
            zzdwl.checkNotNull(sb);
            if (it.hasNext()) {
                sb.append(zzx(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.separator);
                    sb.append(zzx(it.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
