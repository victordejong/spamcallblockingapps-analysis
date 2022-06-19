package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzfj.class */
public class zzfj {
    private final String zza;

    private zzfj(zzfj zzfjVar) {
        this.zza = zzfjVar.zza;
    }

    public /* synthetic */ zzfj(zzfj zzfjVar, zzfm zzfmVar) {
        this(zzfjVar);
    }

    private zzfj(String str) {
        this.zza = (String) zzft.zza(str);
    }

    public static zzfj zza(String str) {
        return new zzfj(str);
    }

    public zzfj zza() {
        return new zzfl(this, this);
    }

    public <A extends Appendable> A zza(A a, Iterator<?> it) throws IOException {
        zzft.zza(a);
        if (it.hasNext()) {
            a.append(zza(it.next()));
            while (it.hasNext()) {
                a.append(this.zza);
                a.append(zza(it.next()));
            }
        }
        return a;
    }

    public CharSequence zza(Object obj) {
        zzft.zza(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final StringBuilder zza(StringBuilder sb, Iterator<?> it) {
        try {
            zza((zzfj) sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public zzfo zzb(String str) {
        return new zzfo(this, str, null);
    }
}
