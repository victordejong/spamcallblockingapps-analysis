package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzaz.class */
public final class zzaz {
    private String description;
    private Integer distanceMeters;
    private zza[] matchedSubstrings;
    private String placeId;
    private zzb structuredFormatting;
    private String[] types;

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzaz$zza.class */
    public static class zza {
        public Integer length;
        public Integer offset;
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzaz$zzb.class */
    public static class zzb {
        private String mainText;
        private zza[] mainTextMatchedSubstrings;
        private String secondaryText;
        private zza[] secondaryTextMatchedSubstrings;

        public final String zza() {
            return this.mainText;
        }

        public final String zzb() {
            return this.secondaryText;
        }

        public final zzgi<zza> zzc() {
            zza[] zzaVarArr = this.mainTextMatchedSubstrings;
            if (zzaVarArr != null) {
                return zzgi.zza(zzaVarArr);
            }
            return null;
        }

        public final zzgi<zza> zzd() {
            zza[] zzaVarArr = this.secondaryTextMatchedSubstrings;
            if (zzaVarArr != null) {
                return zzgi.zza(zzaVarArr);
            }
            return null;
        }
    }

    public final String zza() {
        return this.description;
    }

    public final Integer zzb() {
        return this.distanceMeters;
    }

    public final String zzc() {
        return this.placeId;
    }

    public final zzb zzd() {
        return this.structuredFormatting;
    }

    public final zzgi<String> zze() {
        String[] strArr = this.types;
        if (strArr != null) {
            return zzgi.zza(strArr);
        }
        return null;
    }

    public final zzgi<zza> zzf() {
        zza[] zzaVarArr = this.matchedSubstrings;
        if (zzaVarArr != null) {
            return zzgi.zza(zzaVarArr);
        }
        return null;
    }
}
