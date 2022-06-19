package com.google.android.gms.internal.ads;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.ads.xe */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xe.class */
final class C7142xe {

    /* renamed from: a */
    private static final int f31992a = C6961si.m11010l("nam");

    /* renamed from: b */
    private static final int f31993b = C6961si.m11010l("trk");

    /* renamed from: c */
    private static final int f31994c = C6961si.m11010l("cmt");

    /* renamed from: d */
    private static final int f31995d = C6961si.m11010l("day");

    /* renamed from: e */
    private static final int f31996e = C6961si.m11010l("ART");

    /* renamed from: f */
    private static final int f31997f = C6961si.m11010l("too");

    /* renamed from: g */
    private static final int f31998g = C6961si.m11010l("alb");

    /* renamed from: h */
    private static final int f31999h = C6961si.m11010l("com");

    /* renamed from: i */
    private static final int f32000i = C6961si.m11010l("wrt");

    /* renamed from: j */
    private static final int f32001j = C6961si.m11010l("lyr");

    /* renamed from: k */
    private static final int f32002k = C6961si.m11010l("gen");

    /* renamed from: l */
    private static final int f32003l = C6961si.m11010l("covr");

    /* renamed from: m */
    private static final int f32004m = C6961si.m11010l("gnre");

    /* renamed from: n */
    private static final int f32005n = C6961si.m11010l("grp");

    /* renamed from: o */
    private static final int f32006o = C6961si.m11010l("disk");

    /* renamed from: p */
    private static final int f32007p = C6961si.m11010l("trkn");

    /* renamed from: q */
    private static final int f32008q = C6961si.m11010l("tmpo");

    /* renamed from: r */
    private static final int f32009r = C6961si.m11010l("cpil");

    /* renamed from: s */
    private static final int f32010s = C6961si.m11010l("aART");

    /* renamed from: t */
    private static final int f32011t = C6961si.m11010l("sonm");

    /* renamed from: u */
    private static final int f32012u = C6961si.m11010l("soal");

    /* renamed from: v */
    private static final int f32013v = C6961si.m11010l("soar");

    /* renamed from: w */
    private static final int f32014w = C6961si.m11010l("soaa");

    /* renamed from: x */
    private static final int f32015x = C6961si.m11010l("soco");

    /* renamed from: y */
    private static final int f32016y = C6961si.m11010l("rtng");

    /* renamed from: z */
    private static final int f32017z = C6961si.m11010l("pgap");

    /* renamed from: A */
    private static final int f31988A = C6961si.m11010l("sosn");

    /* renamed from: B */
    private static final int f31989B = C6961si.m11010l("tvsh");

    /* renamed from: C */
    private static final int f31990C = C6961si.m11010l("----");

    /* renamed from: D */
    private static final String[] f31991D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f A[Catch: all -> 0x0375, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0375, blocks: (B:4:0x0028, B:6:0x002f, B:8:0x003a, B:15:0x005f, B:16:0x0071, B:20:0x0087, B:22:0x008e, B:25:0x00a0, B:27:0x00a7, B:30:0x00b9, B:32:0x00c0, B:35:0x00d4, B:37:0x00db, B:40:0x00ef, B:42:0x00f6, B:44:0x0106, B:54:0x0135, B:56:0x0163, B:58:0x016e, B:59:0x018a, B:63:0x019f, B:65:0x01a6, B:68:0x01b8, B:70:0x01bf, B:73:0x01d1, B:75:0x01d8, B:78:0x01ea, B:80:0x01f1, B:83:0x0203, B:85:0x020a, B:88:0x021c, B:90:0x0223, B:93:0x0235, B:95:0x023c, B:98:0x0250, B:100:0x0257, B:103:0x026b, B:105:0x0272, B:108:0x0284, B:110:0x028b, B:113:0x029d, B:117:0x02ae, B:119:0x02b6, B:121:0x02d5, B:122:0x02e2, B:124:0x02ea, B:125:0x02f8, B:132:0x0315, B:134:0x0325, B:138:0x0333, B:144:0x034b, B:150:0x0381, B:152:0x0389, B:154:0x0399, B:155:0x03bd, B:157:0x03cb, B:158:0x03d8, B:160:0x03e7, B:164:0x03f9, B:166:0x0401, B:169:0x040c, B:171:0x0414, B:174:0x041f, B:176:0x0427, B:179:0x0439, B:181:0x0441, B:184:0x0453, B:186:0x045b, B:189:0x046d, B:191:0x0475, B:194:0x0487, B:196:0x048f, B:199:0x04a1, B:201:0x04a9, B:204:0x04bb, B:206:0x04c3, B:209:0x04d5, B:211:0x04e3, B:212:0x04f0, B:214:0x04ff, B:217:0x050c, B:220:0x051e), top: B:225:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0071 A[Catch: all -> 0x0375, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0375, blocks: (B:4:0x0028, B:6:0x002f, B:8:0x003a, B:15:0x005f, B:16:0x0071, B:20:0x0087, B:22:0x008e, B:25:0x00a0, B:27:0x00a7, B:30:0x00b9, B:32:0x00c0, B:35:0x00d4, B:37:0x00db, B:40:0x00ef, B:42:0x00f6, B:44:0x0106, B:54:0x0135, B:56:0x0163, B:58:0x016e, B:59:0x018a, B:63:0x019f, B:65:0x01a6, B:68:0x01b8, B:70:0x01bf, B:73:0x01d1, B:75:0x01d8, B:78:0x01ea, B:80:0x01f1, B:83:0x0203, B:85:0x020a, B:88:0x021c, B:90:0x0223, B:93:0x0235, B:95:0x023c, B:98:0x0250, B:100:0x0257, B:103:0x026b, B:105:0x0272, B:108:0x0284, B:110:0x028b, B:113:0x029d, B:117:0x02ae, B:119:0x02b6, B:121:0x02d5, B:122:0x02e2, B:124:0x02ea, B:125:0x02f8, B:132:0x0315, B:134:0x0325, B:138:0x0333, B:144:0x034b, B:150:0x0381, B:152:0x0389, B:154:0x0399, B:155:0x03bd, B:157:0x03cb, B:158:0x03d8, B:160:0x03e7, B:164:0x03f9, B:166:0x0401, B:169:0x040c, B:171:0x0414, B:174:0x041f, B:176:0x0427, B:179:0x0439, B:181:0x0441, B:184:0x0453, B:186:0x045b, B:189:0x046d, B:191:0x0475, B:194:0x0487, B:196:0x048f, B:199:0x04a1, B:201:0x04a9, B:204:0x04bb, B:206:0x04c3, B:209:0x04d5, B:211:0x04e3, B:212:0x04f0, B:214:0x04ff, B:217:0x050c, B:220:0x051e), top: B:225:0x0025 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzart m9251a(com.google.android.gms.internal.ads.C6665ki r8) {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7142xe.m9251a(com.google.android.gms.internal.ads.ki):com.google.android.gms.internal.ads.zzart");
    }

    /* renamed from: b */
    private static zzasc m9250b(int i, String str, C6665ki c6665ki) {
        int m13890r = c6665ki.m13890r();
        if (c6665ki.m13890r() == C6661ke.f25114E0) {
            c6665ki.m13898j(8);
            return new zzasc(str, null, c6665ki.m13885w(m13890r - 16));
        }
        String m13916c = C6661ke.m13916c(i);
        Log.w("MetadataUtil", m13916c.length() != 0 ? "Failed to parse text attribute: ".concat(m13916c) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* renamed from: c */
    private static zzasa m9249c(int i, String str, C6665ki c6665ki, boolean z, boolean z2) {
        int m9247e = m9247e(c6665ki);
        int i2 = m9247e;
        if (z2) {
            i2 = Math.min(1, m9247e);
        }
        if (i2 >= 0) {
            return z ? new zzasc(str, null, Integer.toString(i2)) : new zzary("und", str, Integer.toString(i2));
        }
        String m13916c = C6661ke.m13916c(i);
        Log.w("MetadataUtil", m13916c.length() != 0 ? "Failed to parse uint8 attribute: ".concat(m13916c) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: d */
    private static zzasc m9248d(int i, String str, C6665ki c6665ki) {
        int m13890r = c6665ki.m13890r();
        if (c6665ki.m13890r() == C6661ke.f25114E0 && m13890r >= 22) {
            c6665ki.m13898j(10);
            int m13895m = c6665ki.m13895m();
            if (m13895m > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m13895m);
                String sb2 = sb.toString();
                int m13895m2 = c6665ki.m13895m();
                String str2 = sb2;
                if (m13895m2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 12);
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(m13895m2);
                    str2 = sb3.toString();
                }
                return new zzasc(str, null, str2);
            }
        }
        String m13916c = C6661ke.m13916c(i);
        Log.w("MetadataUtil", m13916c.length() != 0 ? "Failed to parse index/count attribute: ".concat(m13916c) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    /* renamed from: e */
    private static int m9247e(C6665ki c6665ki) {
        c6665ki.m13898j(4);
        if (c6665ki.m13890r() == C6661ke.f25114E0) {
            c6665ki.m13898j(8);
            return c6665ki.m13896l();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
