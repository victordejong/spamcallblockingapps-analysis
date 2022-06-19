package com.google.mlkit.p075nl.languageid;

import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.internal.mlkit_language_id.zzd;
import com.google.android.gms.internal.mlkit_language_id.zzh;
import java.util.Arrays;
@UsedByNative("language_id_jni.cc")
/* renamed from: com.google.mlkit.nl.languageid.IdentifiedLanguage */
/* loaded from: classes3-dex2jar.jar:com/google/mlkit/nl/languageid/IdentifiedLanguage.class */
public final class IdentifiedLanguage {

    /* renamed from: a */
    public final String f7095a;

    /* renamed from: b */
    public final float f7096b;

    @UsedByNative("language_id_jni.cc")
    public IdentifiedLanguage(String str, float f) {
        this.f7095a = str;
        this.f7096b = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdentifiedLanguage)) {
            return false;
        }
        IdentifiedLanguage identifiedLanguage = (IdentifiedLanguage) obj;
        return Float.compare(identifiedLanguage.f7096b, this.f7096b) == 0 && zzh.zza(this.f7095a, identifiedLanguage.f7095a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7095a, Float.valueOf(this.f7096b)});
    }

    public final String toString() {
        return zzd.zza(this).zza("languageTag", this.f7095a).zza("confidence", this.f7096b).toString();
    }
}
