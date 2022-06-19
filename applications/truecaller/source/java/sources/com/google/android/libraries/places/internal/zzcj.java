package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj.class */
public final class zzcj {
    private zzb[] addressComponents;
    private String businessStatus;
    private String formattedAddress;
    private zza geometry;
    private String icon;
    private String internationalPhoneNumber;
    private String name;
    private zzc openingHours;
    private zzd[] photos;
    private String placeId;
    private zze plusCode;
    private Integer priceLevel;
    private Double rating;
    private String[] types;
    private Integer userRatingsTotal;
    private Integer utcOffset;
    private String website;

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zza.class */
    public static class zza {
        private zzb location;
        private C27662zza viewport;

        /* renamed from: com.google.android.libraries.places.internal.zzcj$zza$zza */
        /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zza$zza.class */
        public static class C27662zza {
            private zzb northeast;
            private zzb southwest;

            public final zzb zza() {
                return this.northeast;
            }

            public final zzb zzb() {
                return this.southwest;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zza$zzb.class */
        public static class zzb {
            private Double lat;
            private Double lng;

            public final Double zza() {
                return this.lat;
            }

            public final Double zzb() {
                return this.lng;
            }
        }

        public final zzb zza() {
            return this.location;
        }

        public final C27662zza zzb() {
            return this.viewport;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zzb.class */
    public static class zzb {
        private String longName;
        private String shortName;
        private String[] types;

        public final String zza() {
            return this.longName;
        }

        public final String zzb() {
            return this.shortName;
        }

        public final zzgi<String> zzc() {
            String[] strArr = this.types;
            if (strArr != null) {
                return zzgi.zza(strArr);
            }
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zzc.class */
    public static class zzc {
        private zza[] periods;
        private String[] weekdayText;

        /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zzc$zza.class */
        public static class zza {
            private zzb close;
            private zzb open;

            public final zzb zza() {
                return this.close;
            }

            public final zzb zzb() {
                return this.open;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zzc$zzb.class */
        public static class zzb {
            private Integer day;
            private String time;

            public final Integer zza() {
                return this.day;
            }

            public final String zzb() {
                return this.time;
            }
        }

        public final zzgi<zza> zza() {
            zza[] zzaVarArr = this.periods;
            if (zzaVarArr != null) {
                return zzgi.zza(zzaVarArr);
            }
            return null;
        }

        public final zzgi<String> zzb() {
            String[] strArr = this.weekdayText;
            if (strArr != null) {
                return zzgi.zza(strArr);
            }
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zzd.class */
    public static class zzd {
        private Integer height;
        private String[] htmlAttributions;
        private String photoReference;
        private Integer width;

        public final Integer zza() {
            return this.height;
        }

        public final Integer zzb() {
            return this.width;
        }

        public final String zzc() {
            return this.photoReference;
        }

        public final zzgi<String> zzd() {
            String[] strArr = this.htmlAttributions;
            if (strArr != null) {
                return zzgi.zza(strArr);
            }
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcj$zze.class */
    public static class zze {
        private String compoundCode;
        private String globalCode;

        public final String zza() {
            return this.compoundCode;
        }

        public final String zzb() {
            return this.globalCode;
        }
    }

    public final zzgi<zzb> zza() {
        zzb[] zzbVarArr = this.addressComponents;
        if (zzbVarArr != null) {
            return zzgi.zza(zzbVarArr);
        }
        return null;
    }

    public final String zzb() {
        return this.businessStatus;
    }

    public final String zzc() {
        return this.formattedAddress;
    }

    public final zza zzd() {
        return this.geometry;
    }

    public final String zze() {
        return this.internationalPhoneNumber;
    }

    public final String zzf() {
        return this.name;
    }

    public final zzc zzg() {
        return this.openingHours;
    }

    public final zzgi<zzd> zzh() {
        zzd[] zzdVarArr = this.photos;
        if (zzdVarArr != null) {
            return zzgi.zza(zzdVarArr);
        }
        return null;
    }

    public final String zzi() {
        return this.placeId;
    }

    public final zze zzj() {
        return this.plusCode;
    }

    public final Integer zzk() {
        return this.priceLevel;
    }

    public final Double zzl() {
        return this.rating;
    }

    public final zzgi<String> zzm() {
        String[] strArr = this.types;
        if (strArr != null) {
            return zzgi.zza(strArr);
        }
        return null;
    }

    public final Integer zzn() {
        return this.userRatingsTotal;
    }

    public final Integer zzo() {
        return this.utcOffset;
    }

    public final String zzp() {
        return this.website;
    }
}
