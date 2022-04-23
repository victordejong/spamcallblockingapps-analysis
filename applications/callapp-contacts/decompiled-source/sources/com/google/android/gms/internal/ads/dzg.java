package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzg.class */
final class dzg {

    /* renamed from: a  reason: collision with root package name */
    private static final int f27461a = ede.c("nam");

    /* renamed from: b  reason: collision with root package name */
    private static final int f27462b = ede.c("trk");

    /* renamed from: c  reason: collision with root package name */
    private static final int f27463c = ede.c("cmt");

    /* renamed from: d  reason: collision with root package name */
    private static final int f27464d = ede.c("day");
    private static final int e = ede.c("ART");
    private static final int f = ede.c("too");
    private static final int g = ede.c("alb");
    private static final int h = ede.c("com");
    private static final int i = ede.c("wrt");
    private static final int j = ede.c("lyr");
    private static final int k = ede.c("gen");
    private static final int l = ede.c("covr");
    private static final int m = ede.c("gnre");
    private static final int n = ede.c("grp");
    private static final int o = ede.c("disk");
    private static final int p = ede.c("trkn");
    private static final int q = ede.c("tmpo");
    private static final int r = ede.c("cpil");
    private static final int s = ede.c("aART");
    private static final int t = ede.c("sonm");
    private static final int u = ede.c("soal");
    private static final int v = ede.c("soar");
    private static final int w = ede.c("soaa");
    private static final int x = ede.c("soco");
    private static final int y = ede.c("rtng");
    private static final int z = ede.c("pgap");
    private static final int A = ede.c("sosn");
    private static final int B = ede.c("tvsh");
    private static final int C = ede.c("----");
    private static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Removed duplicated region for block: B:17:0x0060 A[Catch: all -> 0x0508, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0508, blocks: (B:6:0x0031, B:8:0x0038, B:10:0x0041, B:17:0x0060, B:18:0x0072, B:22:0x0088, B:24:0x008f, B:27:0x00a1, B:29:0x00a8, B:32:0x00ba, B:34:0x00c1, B:37:0x00d5, B:39:0x00dc, B:42:0x00f0, B:44:0x00f7, B:46:0x0106, B:56:0x0132, B:58:0x0161, B:59:0x0169, B:60:0x0188, B:64:0x019e, B:66:0x01a5, B:69:0x01b7, B:71:0x01be, B:74:0x01d0, B:76:0x01d7, B:79:0x01e9, B:81:0x01f0, B:84:0x0202, B:86:0x0209, B:89:0x021b, B:91:0x0222, B:94:0x0234, B:96:0x023b, B:99:0x024f, B:101:0x0256, B:104:0x026a, B:106:0x0271, B:109:0x0283, B:111:0x028a, B:114:0x029c, B:118:0x02ae, B:120:0x02b6, B:122:0x02d5, B:123:0x02e3, B:125:0x02eb, B:126:0x02f9, B:130:0x0307, B:132:0x0317, B:136:0x0326, B:142:0x033d, B:147:0x036c, B:149:0x0373, B:151:0x0382, B:152:0x03a5, B:154:0x03b6, B:155:0x03c3, B:157:0x03d2, B:161:0x03e4, B:163:0x03eb, B:166:0x03f5, B:168:0x03fc, B:171:0x0406, B:173:0x040d, B:176:0x041f, B:178:0x0426, B:181:0x0438, B:183:0x043f, B:186:0x0451, B:188:0x0458, B:191:0x046a, B:193:0x0471, B:196:0x0483, B:198:0x048a, B:201:0x049c, B:203:0x04a3, B:206:0x04b5, B:208:0x04c6, B:209:0x04d2, B:213:0x04e4, B:216:0x04f6), top: B:222:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072 A[Catch: all -> 0x0508, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0508, blocks: (B:6:0x0031, B:8:0x0038, B:10:0x0041, B:17:0x0060, B:18:0x0072, B:22:0x0088, B:24:0x008f, B:27:0x00a1, B:29:0x00a8, B:32:0x00ba, B:34:0x00c1, B:37:0x00d5, B:39:0x00dc, B:42:0x00f0, B:44:0x00f7, B:46:0x0106, B:56:0x0132, B:58:0x0161, B:59:0x0169, B:60:0x0188, B:64:0x019e, B:66:0x01a5, B:69:0x01b7, B:71:0x01be, B:74:0x01d0, B:76:0x01d7, B:79:0x01e9, B:81:0x01f0, B:84:0x0202, B:86:0x0209, B:89:0x021b, B:91:0x0222, B:94:0x0234, B:96:0x023b, B:99:0x024f, B:101:0x0256, B:104:0x026a, B:106:0x0271, B:109:0x0283, B:111:0x028a, B:114:0x029c, B:118:0x02ae, B:120:0x02b6, B:122:0x02d5, B:123:0x02e3, B:125:0x02eb, B:126:0x02f9, B:130:0x0307, B:132:0x0317, B:136:0x0326, B:142:0x033d, B:147:0x036c, B:149:0x0373, B:151:0x0382, B:152:0x03a5, B:154:0x03b6, B:155:0x03c3, B:157:0x03d2, B:161:0x03e4, B:163:0x03eb, B:166:0x03f5, B:168:0x03fc, B:171:0x0406, B:173:0x040d, B:176:0x041f, B:178:0x0426, B:181:0x0438, B:183:0x043f, B:186:0x0451, B:188:0x0458, B:191:0x046a, B:193:0x0471, B:196:0x0483, B:198:0x048a, B:201:0x049c, B:203:0x04a3, B:206:0x04b5, B:208:0x04c6, B:209:0x04d2, B:213:0x04e4, B:216:0x04f6), top: B:222:0x0024 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzmh.zza a(com.google.android.gms.internal.ads.ecy r8) {
        /*
            Method dump skipped, instructions count: 1298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzg.a(com.google.android.gms.internal.ads.ecy):com.google.android.gms.internal.ads.zzmh$zza");
    }

    private static zzmn a(int i2, String str, ecy ecyVar) {
        int g2 = ecyVar.g();
        if (ecyVar.g() == dyr.aH) {
            ecyVar.d(8);
            return new zzmn(str, null, ecyVar.e(g2 - 16));
        }
        String valueOf = String.valueOf(dyr.e(i2));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    private static zzmo a(int i2, String str, ecy ecyVar, boolean z2, boolean z3) {
        int b2 = b(ecyVar);
        int i3 = b2;
        if (z3) {
            i3 = Math.min(1, b2);
        }
        if (i3 >= 0) {
            return z2 ? new zzmn(str, null, Integer.toString(i3)) : new zzmj("und", str, Integer.toString(i3));
        }
        String valueOf = String.valueOf(dyr.e(i2));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static int b(ecy ecyVar) {
        ecyVar.d(4);
        if (ecyVar.g() == dyr.aH) {
            ecyVar.d(8);
            return ecyVar.d();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static zzmn b(int i2, String str, ecy ecyVar) {
        int g2 = ecyVar.g();
        if (ecyVar.g() == dyr.aH && g2 >= 22) {
            ecyVar.d(10);
            int e2 = ecyVar.e();
            if (e2 > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(e2);
                String sb2 = sb.toString();
                int e3 = ecyVar.e();
                String str2 = sb2;
                if (e3 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(e3);
                    str2 = sb3.toString();
                }
                return new zzmn(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(dyr.e(i2));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }
}
