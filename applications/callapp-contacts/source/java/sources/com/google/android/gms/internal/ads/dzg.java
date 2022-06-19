package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzg.class */
final class dzg {

    /* renamed from: a */
    private static final int f48300a = ede.m15185c("nam");

    /* renamed from: b */
    private static final int f48301b = ede.m15185c("trk");

    /* renamed from: c */
    private static final int f48302c = ede.m15185c("cmt");

    /* renamed from: d */
    private static final int f48303d = ede.m15185c("day");

    /* renamed from: e */
    private static final int f48304e = ede.m15185c("ART");

    /* renamed from: f */
    private static final int f48305f = ede.m15185c("too");

    /* renamed from: g */
    private static final int f48306g = ede.m15185c("alb");

    /* renamed from: h */
    private static final int f48307h = ede.m15185c("com");

    /* renamed from: i */
    private static final int f48308i = ede.m15185c("wrt");

    /* renamed from: j */
    private static final int f48309j = ede.m15185c("lyr");

    /* renamed from: k */
    private static final int f48310k = ede.m15185c("gen");

    /* renamed from: l */
    private static final int f48311l = ede.m15185c("covr");

    /* renamed from: m */
    private static final int f48312m = ede.m15185c("gnre");

    /* renamed from: n */
    private static final int f48313n = ede.m15185c("grp");

    /* renamed from: o */
    private static final int f48314o = ede.m15185c("disk");

    /* renamed from: p */
    private static final int f48315p = ede.m15185c("trkn");

    /* renamed from: q */
    private static final int f48316q = ede.m15185c("tmpo");

    /* renamed from: r */
    private static final int f48317r = ede.m15185c("cpil");

    /* renamed from: s */
    private static final int f48318s = ede.m15185c("aART");

    /* renamed from: t */
    private static final int f48319t = ede.m15185c("sonm");

    /* renamed from: u */
    private static final int f48320u = ede.m15185c("soal");

    /* renamed from: v */
    private static final int f48321v = ede.m15185c("soar");

    /* renamed from: w */
    private static final int f48322w = ede.m15185c("soaa");

    /* renamed from: x */
    private static final int f48323x = ede.m15185c("soco");

    /* renamed from: y */
    private static final int f48324y = ede.m15185c("rtng");

    /* renamed from: z */
    private static final int f48325z = ede.m15185c("pgap");

    /* renamed from: A */
    private static final int f48296A = ede.m15185c("sosn");

    /* renamed from: B */
    private static final int f48297B = ede.m15185c("tvsh");

    /* renamed from: C */
    private static final int f48298C = ede.m15185c("----");

    /* renamed from: D */
    private static final String[] f48299D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060 A[Catch: all -> 0x0508, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0508, blocks: (B:6:0x0031, B:8:0x0038, B:10:0x0041, B:17:0x0060, B:18:0x0072, B:22:0x0088, B:24:0x008f, B:27:0x00a1, B:29:0x00a8, B:32:0x00ba, B:34:0x00c1, B:37:0x00d5, B:39:0x00dc, B:42:0x00f0, B:44:0x00f7, B:46:0x0106, B:56:0x0132, B:58:0x0161, B:59:0x0169, B:60:0x0188, B:64:0x019e, B:66:0x01a5, B:69:0x01b7, B:71:0x01be, B:74:0x01d0, B:76:0x01d7, B:79:0x01e9, B:81:0x01f0, B:84:0x0202, B:86:0x0209, B:89:0x021b, B:91:0x0222, B:94:0x0234, B:96:0x023b, B:99:0x024f, B:101:0x0256, B:104:0x026a, B:106:0x0271, B:109:0x0283, B:111:0x028a, B:114:0x029c, B:118:0x02ae, B:120:0x02b6, B:122:0x02d5, B:123:0x02e3, B:125:0x02eb, B:126:0x02f9, B:130:0x0307, B:132:0x0317, B:136:0x0326, B:142:0x033d, B:147:0x036c, B:149:0x0373, B:151:0x0382, B:152:0x03a5, B:154:0x03b6, B:155:0x03c3, B:157:0x03d2, B:161:0x03e4, B:163:0x03eb, B:166:0x03f5, B:168:0x03fc, B:171:0x0406, B:173:0x040d, B:176:0x041f, B:178:0x0426, B:181:0x0438, B:183:0x043f, B:186:0x0451, B:188:0x0458, B:191:0x046a, B:193:0x0471, B:196:0x0483, B:198:0x048a, B:201:0x049c, B:203:0x04a3, B:206:0x04b5, B:208:0x04c6, B:209:0x04d2, B:213:0x04e4, B:216:0x04f6), top: B:222:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072 A[Catch: all -> 0x0508, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0508, blocks: (B:6:0x0031, B:8:0x0038, B:10:0x0041, B:17:0x0060, B:18:0x0072, B:22:0x0088, B:24:0x008f, B:27:0x00a1, B:29:0x00a8, B:32:0x00ba, B:34:0x00c1, B:37:0x00d5, B:39:0x00dc, B:42:0x00f0, B:44:0x00f7, B:46:0x0106, B:56:0x0132, B:58:0x0161, B:59:0x0169, B:60:0x0188, B:64:0x019e, B:66:0x01a5, B:69:0x01b7, B:71:0x01be, B:74:0x01d0, B:76:0x01d7, B:79:0x01e9, B:81:0x01f0, B:84:0x0202, B:86:0x0209, B:89:0x021b, B:91:0x0222, B:94:0x0234, B:96:0x023b, B:99:0x024f, B:101:0x0256, B:104:0x026a, B:106:0x0271, B:109:0x0283, B:111:0x028a, B:114:0x029c, B:118:0x02ae, B:120:0x02b6, B:122:0x02d5, B:123:0x02e3, B:125:0x02eb, B:126:0x02f9, B:130:0x0307, B:132:0x0317, B:136:0x0326, B:142:0x033d, B:147:0x036c, B:149:0x0373, B:151:0x0382, B:152:0x03a5, B:154:0x03b6, B:155:0x03c3, B:157:0x03d2, B:161:0x03e4, B:163:0x03eb, B:166:0x03f5, B:168:0x03fc, B:171:0x0406, B:173:0x040d, B:176:0x041f, B:178:0x0426, B:181:0x0438, B:183:0x043f, B:186:0x0451, B:188:0x0458, B:191:0x046a, B:193:0x0471, B:196:0x0483, B:198:0x048a, B:201:0x049c, B:203:0x04a3, B:206:0x04b5, B:208:0x04c6, B:209:0x04d2, B:213:0x04e4, B:216:0x04f6), top: B:222:0x0024 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzmh.zza m15429a(com.google.android.gms.internal.ads.ecy r8) {
        /*
            Method dump skipped, instructions count: 1298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzg.m15429a(com.google.android.gms.internal.ads.ecy):com.google.android.gms.internal.ads.zzmh$zza");
    }

    /* renamed from: a */
    private static zzmn m15431a(int i, String str, ecy ecyVar) {
        int m15220g = ecyVar.m15220g();
        if (ecyVar.m15220g() == dyr.f48148aH) {
            ecyVar.m15224d(8);
            return new zzmn(str, null, ecyVar.m15222e(m15220g - 16));
        }
        String valueOf = String.valueOf(dyr.m15449e(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* renamed from: a */
    private static zzmo m15430a(int i, String str, ecy ecyVar, boolean z, boolean z2) {
        int m15427b = m15427b(ecyVar);
        int i2 = m15427b;
        if (z2) {
            i2 = Math.min(1, m15427b);
        }
        if (i2 >= 0) {
            return z ? new zzmn(str, null, Integer.toString(i2)) : new zzmj("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(dyr.m15449e(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: b */
    private static int m15427b(ecy ecyVar) {
        ecyVar.m15224d(4);
        if (ecyVar.m15220g() == dyr.f48148aH) {
            ecyVar.m15224d(8);
            return ecyVar.m15225d();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    /* renamed from: b */
    private static zzmn m15428b(int i, String str, ecy ecyVar) {
        int m15220g = ecyVar.m15220g();
        if (ecyVar.m15220g() == dyr.f48148aH && m15220g >= 22) {
            ecyVar.m15224d(10);
            int m15223e = ecyVar.m15223e();
            if (m15223e > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m15223e);
                String sb2 = sb.toString();
                int m15223e2 = ecyVar.m15223e();
                String str2 = sb2;
                if (m15223e2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(m15223e2);
                    str2 = sb3.toString();
                }
                return new zzmn(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(dyr.m15449e(i));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }
}
