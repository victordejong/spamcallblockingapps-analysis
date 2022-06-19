package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqx.class */
public final class zzaqx {
    private static final int zza = zzave.zzl("nam");
    private static final int zzb = zzave.zzl("trk");
    private static final int zzc = zzave.zzl("cmt");
    private static final int zzd = zzave.zzl("day");
    private static final int zze = zzave.zzl("ART");
    private static final int zzf = zzave.zzl("too");
    private static final int zzg = zzave.zzl("alb");
    private static final int zzh = zzave.zzl("com");
    private static final int zzi = zzave.zzl("wrt");
    private static final int zzj = zzave.zzl("lyr");
    private static final int zzk = zzave.zzl("gen");
    private static final int zzl = zzave.zzl("covr");
    private static final int zzm = zzave.zzl("gnre");
    private static final int zzn = zzave.zzl("grp");
    private static final int zzo = zzave.zzl("disk");
    private static final int zzp = zzave.zzl("trkn");
    private static final int zzq = zzave.zzl("tmpo");
    private static final int zzr = zzave.zzl("cpil");
    private static final int zzs = zzave.zzl("aART");
    private static final int zzt = zzave.zzl("sonm");
    private static final int zzu = zzave.zzl("soal");
    private static final int zzv = zzave.zzl("soar");
    private static final int zzw = zzave.zzl("soaa");
    private static final int zzx = zzave.zzl("soco");
    private static final int zzy = zzave.zzl("rtng");
    private static final int zzz = zzave.zzl("pgap");
    private static final int zzA = zzave.zzl("sosn");
    private static final int zzB = zzave.zzl("tvsh");
    private static final int zzC = zzave.zzl("----");
    private static final String[] zzD = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064 A[Catch: all -> 0x0330, TRY_ENTER, TryCatch #0 {all -> 0x0330, blocks: (B:4:0x002a, B:6:0x0031, B:8:0x003c, B:15:0x0064, B:19:0x0079, B:21:0x0080, B:24:0x0092, B:26:0x0099, B:29:0x00ab, B:31:0x00b2, B:34:0x00c6, B:36:0x00cd, B:39:0x00e1, B:41:0x00e8, B:43:0x00f1, B:45:0x00fb, B:56:0x012d, B:58:0x0138, B:62:0x0159, B:64:0x0160, B:67:0x0172, B:69:0x0179, B:72:0x018b, B:74:0x0192, B:77:0x01a4, B:79:0x01ab, B:82:0x01bd, B:84:0x01c4, B:87:0x01d6, B:89:0x01dd, B:92:0x01ef, B:94:0x01f6, B:97:0x020a, B:99:0x0211, B:102:0x0225, B:104:0x022c, B:107:0x023e, B:109:0x0245, B:112:0x0257, B:116:0x0269, B:118:0x0271, B:120:0x0290, B:121:0x029d, B:123:0x02a5, B:124:0x02b3, B:131:0x02d0, B:133:0x02e0, B:137:0x02ee, B:143:0x0306, B:149:0x033c, B:151:0x0344, B:153:0x0354, B:154:0x0378, B:156:0x0384, B:157:0x038f, B:161:0x03a2, B:163:0x03aa, B:166:0x03b5, B:168:0x03bd, B:171:0x03c8, B:173:0x03d0, B:176:0x03e2, B:178:0x03ea, B:181:0x03fc, B:183:0x0404, B:186:0x0416, B:188:0x041e, B:191:0x0430, B:193:0x0438, B:196:0x044a, B:198:0x0452, B:201:0x0464, B:203:0x046c, B:206:0x047e, B:208:0x048c, B:209:0x0498, B:213:0x04aa, B:216:0x04bc), top: B:221:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzart zza(com.google.android.gms.internal.ads.zzaux r8) {
        /*
            Method dump skipped, instructions count: 1238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqx.zza(com.google.android.gms.internal.ads.zzaux):com.google.android.gms.internal.ads.zzart");
    }

    private static zzasc zzb(int i, String str, zzaux zzauxVar) {
        int zzr2 = zzauxVar.zzr();
        if (zzauxVar.zzr() == zzaqk.zzaH) {
            zzauxVar.zzj(8);
            return new zzasc(str, null, zzauxVar.zzw(zzr2 - 16));
        }
        String zzg2 = zzaqk.zzg(i);
        if (zzg2.length() != 0) {
            "Failed to parse text attribute: ".concat(zzg2);
            return null;
        }
        new String("Failed to parse text attribute: ");
        return null;
    }

    private static zzasa zzc(int i, String str, zzaux zzauxVar, boolean z, boolean z2) {
        int zze2 = zze(zzauxVar);
        int i2 = zze2;
        if (z2) {
            i2 = Math.min(1, zze2);
        }
        if (i2 >= 0) {
            return z ? new zzasc(str, null, Integer.toString(i2)) : new zzary("und", str, Integer.toString(i2));
        }
        String zzg2 = zzaqk.zzg(i);
        if (zzg2.length() != 0) {
            "Failed to parse uint8 attribute: ".concat(zzg2);
            return null;
        }
        new String("Failed to parse uint8 attribute: ");
        return null;
    }

    private static zzasc zzd(int i, String str, zzaux zzauxVar) {
        int zzr2 = zzauxVar.zzr();
        if (zzauxVar.zzr() == zzaqk.zzaH && zzr2 >= 22) {
            zzauxVar.zzj(10);
            int zzm2 = zzauxVar.zzm();
            if (zzm2 > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(zzm2);
                String sb2 = sb.toString();
                int zzm3 = zzauxVar.zzm();
                String str2 = sb2;
                if (zzm3 > 0) {
                    str2 = C22128a.m8614i(new StringBuilder(sb2.length() + 12), sb2, StringConstant.SLASH, zzm3);
                }
                return new zzasc(str, null, str2);
            }
        }
        String zzg2 = zzaqk.zzg(i);
        if (zzg2.length() != 0) {
            "Failed to parse index/count attribute: ".concat(zzg2);
            return null;
        }
        new String("Failed to parse index/count attribute: ");
        return null;
    }

    private static int zze(zzaux zzauxVar) {
        zzauxVar.zzj(4);
        if (zzauxVar.zzr() == zzaqk.zzaH) {
            zzauxVar.zzj(8);
            return zzauxVar.zzl();
        }
        return -1;
    }
}
