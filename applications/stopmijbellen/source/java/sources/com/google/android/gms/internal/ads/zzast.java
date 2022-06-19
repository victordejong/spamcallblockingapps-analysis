package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzast.class */
final class zzast {
    private static final int zza = zzaxb.zzg("nam");
    private static final int zzb = zzaxb.zzg("trk");
    private static final int zzc = zzaxb.zzg("cmt");
    private static final int zzd = zzaxb.zzg("day");
    private static final int zze = zzaxb.zzg("ART");
    private static final int zzf = zzaxb.zzg("too");
    private static final int zzg = zzaxb.zzg("alb");
    private static final int zzh = zzaxb.zzg("com");
    private static final int zzi = zzaxb.zzg("wrt");
    private static final int zzj = zzaxb.zzg("lyr");
    private static final int zzk = zzaxb.zzg("gen");
    private static final int zzl = zzaxb.zzg("covr");
    private static final int zzm = zzaxb.zzg("gnre");
    private static final int zzn = zzaxb.zzg("grp");
    private static final int zzo = zzaxb.zzg("disk");
    private static final int zzp = zzaxb.zzg("trkn");
    private static final int zzq = zzaxb.zzg("tmpo");
    private static final int zzr = zzaxb.zzg("cpil");
    private static final int zzs = zzaxb.zzg("aART");
    private static final int zzt = zzaxb.zzg("sonm");
    private static final int zzu = zzaxb.zzg("soal");
    private static final int zzv = zzaxb.zzg("soar");
    private static final int zzw = zzaxb.zzg("soaa");
    private static final int zzx = zzaxb.zzg("soco");
    private static final int zzy = zzaxb.zzg("rtng");
    private static final int zzz = zzaxb.zzg("pgap");
    private static final int zzA = zzaxb.zzg("sosn");
    private static final int zzB = zzaxb.zzg("tvsh");
    private static final int zzC = zzaxb.zzg("----");
    private static final String[] zzD = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061 A[Catch: all -> 0x0376, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0376, blocks: (B:4:0x002a, B:6:0x0031, B:8:0x003c, B:15:0x0061, B:16:0x0073, B:20:0x0089, B:22:0x0090, B:25:0x00a2, B:27:0x00a9, B:30:0x00bb, B:32:0x00c2, B:35:0x00d6, B:37:0x00dd, B:40:0x00f1, B:42:0x00f8, B:44:0x0108, B:54:0x0137, B:56:0x0165, B:58:0x0170, B:59:0x018c, B:63:0x01a1, B:65:0x01a8, B:68:0x01ba, B:70:0x01c1, B:73:0x01d3, B:75:0x01da, B:78:0x01ec, B:80:0x01f3, B:83:0x0205, B:85:0x020c, B:88:0x021e, B:90:0x0225, B:93:0x0237, B:95:0x023e, B:98:0x0252, B:100:0x0259, B:103:0x026d, B:105:0x0274, B:108:0x0286, B:110:0x028d, B:113:0x029f, B:117:0x02b0, B:119:0x02b8, B:121:0x02d7, B:122:0x02e4, B:124:0x02ec, B:125:0x02fa, B:132:0x0317, B:134:0x0327, B:138:0x0335, B:144:0x034c, B:150:0x0382, B:152:0x038a, B:154:0x039a, B:155:0x03be, B:157:0x03cc, B:158:0x03d9, B:160:0x03e8, B:164:0x03fa, B:166:0x0402, B:169:0x040d, B:171:0x0415, B:174:0x0420, B:176:0x0428, B:179:0x043a, B:181:0x0442, B:184:0x0454, B:186:0x045c, B:189:0x046e, B:191:0x0476, B:194:0x0488, B:196:0x0490, B:199:0x04a2, B:201:0x04aa, B:204:0x04bc, B:206:0x04c4, B:209:0x04d6, B:211:0x04e4, B:215:0x04f4, B:218:0x0506), top: B:223:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0073 A[Catch: all -> 0x0376, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0376, blocks: (B:4:0x002a, B:6:0x0031, B:8:0x003c, B:15:0x0061, B:16:0x0073, B:20:0x0089, B:22:0x0090, B:25:0x00a2, B:27:0x00a9, B:30:0x00bb, B:32:0x00c2, B:35:0x00d6, B:37:0x00dd, B:40:0x00f1, B:42:0x00f8, B:44:0x0108, B:54:0x0137, B:56:0x0165, B:58:0x0170, B:59:0x018c, B:63:0x01a1, B:65:0x01a8, B:68:0x01ba, B:70:0x01c1, B:73:0x01d3, B:75:0x01da, B:78:0x01ec, B:80:0x01f3, B:83:0x0205, B:85:0x020c, B:88:0x021e, B:90:0x0225, B:93:0x0237, B:95:0x023e, B:98:0x0252, B:100:0x0259, B:103:0x026d, B:105:0x0274, B:108:0x0286, B:110:0x028d, B:113:0x029f, B:117:0x02b0, B:119:0x02b8, B:121:0x02d7, B:122:0x02e4, B:124:0x02ec, B:125:0x02fa, B:132:0x0317, B:134:0x0327, B:138:0x0335, B:144:0x034c, B:150:0x0382, B:152:0x038a, B:154:0x039a, B:155:0x03be, B:157:0x03cc, B:158:0x03d9, B:160:0x03e8, B:164:0x03fa, B:166:0x0402, B:169:0x040d, B:171:0x0415, B:174:0x0420, B:176:0x0428, B:179:0x043a, B:181:0x0442, B:184:0x0454, B:186:0x045c, B:189:0x046e, B:191:0x0476, B:194:0x0488, B:196:0x0490, B:199:0x04a2, B:201:0x04aa, B:204:0x04bc, B:206:0x04c4, B:209:0x04d6, B:211:0x04e4, B:215:0x04f4, B:218:0x0506), top: B:223:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzatq zza(com.google.android.gms.internal.ads.zzawu r8) {
        /*
            Method dump skipped, instructions count: 1312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzast.zza(com.google.android.gms.internal.ads.zzawu):com.google.android.gms.internal.ads.zzatq");
    }

    private static int zzb(zzawu zzawuVar) {
        zzawuVar.zzw(4);
        if (zzawuVar.zze() == zzasg.zzaH) {
            zzawuVar.zzw(8);
            return zzawuVar.zzg();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static zzatx zzc(int i, String str, zzawu zzawuVar, boolean z, boolean z2) {
        int zzb2 = zzb(zzawuVar);
        int i2 = zzb2;
        if (z2) {
            i2 = Math.min(1, zzb2);
        }
        if (i2 >= 0) {
            return z ? new zzatz(str, null, Integer.toString(i2)) : new zzatv("und", str, Integer.toString(i2));
        }
        String zzg2 = zzasg.zzg(i);
        Log.w("MetadataUtil", zzg2.length() != 0 ? "Failed to parse uint8 attribute: ".concat(zzg2) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static zzatz zzd(int i, String str, zzawu zzawuVar) {
        int zze2 = zzawuVar.zze();
        if (zzawuVar.zze() == zzasg.zzaH && zze2 >= 22) {
            zzawuVar.zzw(10);
            int zzj2 = zzawuVar.zzj();
            if (zzj2 > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(zzj2);
                String sb2 = sb.toString();
                int zzj3 = zzawuVar.zzj();
                String str2 = sb2;
                if (zzj3 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 12);
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(zzj3);
                    str2 = sb3.toString();
                }
                return new zzatz(str, null, str2);
            }
        }
        String zzg2 = zzasg.zzg(i);
        Log.w("MetadataUtil", zzg2.length() != 0 ? "Failed to parse index/count attribute: ".concat(zzg2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    private static zzatz zze(int i, String str, zzawu zzawuVar) {
        int zze2 = zzawuVar.zze();
        if (zzawuVar.zze() == zzasg.zzaH) {
            zzawuVar.zzw(8);
            return new zzatz(str, null, zzawuVar.zzo(zze2 - 16));
        }
        String zzg2 = zzasg.zzg(i);
        Log.w("MetadataUtil", zzg2.length() != 0 ? "Failed to parse text attribute: ".concat(zzg2) : new String("Failed to parse text attribute: "));
        return null;
    }
}
