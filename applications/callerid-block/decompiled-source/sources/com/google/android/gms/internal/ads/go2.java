package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/go2.class */
final class go2 {

    /* renamed from: a */
    private static final int f6680a = zr2.m4523l("nam");

    /* renamed from: b */
    private static final int f6681b = zr2.m4523l("trk");

    /* renamed from: c */
    private static final int f6682c = zr2.m4523l("cmt");

    /* renamed from: d */
    private static final int f6683d = zr2.m4523l("day");

    /* renamed from: e */
    private static final int f6684e = zr2.m4523l("ART");

    /* renamed from: f */
    private static final int f6685f = zr2.m4523l("too");

    /* renamed from: g */
    private static final int f6686g = zr2.m4523l("alb");

    /* renamed from: h */
    private static final int f6687h = zr2.m4523l("com");

    /* renamed from: i */
    private static final int f6688i = zr2.m4523l("wrt");

    /* renamed from: j */
    private static final int f6689j = zr2.m4523l("lyr");

    /* renamed from: k */
    private static final int f6690k = zr2.m4523l("gen");

    /* renamed from: l */
    private static final int f6691l = zr2.m4523l("covr");

    /* renamed from: m */
    private static final int f6692m = zr2.m4523l("gnre");

    /* renamed from: n */
    private static final int f6693n = zr2.m4523l("grp");

    /* renamed from: o */
    private static final int f6694o = zr2.m4523l("disk");

    /* renamed from: p */
    private static final int f6695p = zr2.m4523l("trkn");

    /* renamed from: q */
    private static final int f6696q = zr2.m4523l("tmpo");

    /* renamed from: r */
    private static final int f6697r = zr2.m4523l("cpil");

    /* renamed from: s */
    private static final int f6698s = zr2.m4523l("aART");

    /* renamed from: t */
    private static final int f6699t = zr2.m4523l("sonm");

    /* renamed from: u */
    private static final int f6700u = zr2.m4523l("soal");

    /* renamed from: v */
    private static final int f6701v = zr2.m4523l("soar");

    /* renamed from: w */
    private static final int f6702w = zr2.m4523l("soaa");

    /* renamed from: x */
    private static final int f6703x = zr2.m4523l("soco");

    /* renamed from: y */
    private static final int f6704y = zr2.m4523l("rtng");

    /* renamed from: z */
    private static final int f6705z = zr2.m4523l("pgap");

    /* renamed from: A */
    private static final int f6676A = zr2.m4523l("sosn");

    /* renamed from: B */
    private static final int f6677B = zr2.m4523l("tvsh");

    /* renamed from: C */
    private static final int f6678C = zr2.m4523l("----");

    /* renamed from: D */
    private static final String[] f6679D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Removed duplicated region for block: B:15:0x005c A[Catch: all -> 0x0370, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0370, blocks: (B:4:0x0028, B:6:0x002f, B:8:0x0038, B:15:0x005c, B:16:0x006e, B:20:0x0084, B:22:0x008b, B:25:0x009d, B:27:0x00a4, B:30:0x00b6, B:32:0x00bd, B:35:0x00d1, B:37:0x00d8, B:40:0x00ec, B:42:0x00f3, B:44:0x0103, B:54:0x0132, B:56:0x0158, B:58:0x0164, B:60:0x016f, B:64:0x019b, B:66:0x01a2, B:69:0x01b4, B:71:0x01bb, B:74:0x01cd, B:76:0x01d4, B:79:0x01e6, B:81:0x01ed, B:84:0x01ff, B:86:0x0206, B:89:0x0218, B:91:0x021f, B:94:0x0231, B:96:0x0238, B:99:0x024c, B:101:0x0253, B:104:0x0267, B:106:0x026e, B:109:0x0280, B:111:0x0287, B:114:0x0299, B:118:0x02aa, B:120:0x02b2, B:122:0x02d1, B:123:0x02de, B:125:0x02e6, B:126:0x02f4, B:133:0x0311, B:135:0x0321, B:139:0x032f, B:145:0x0346, B:151:0x037c, B:153:0x0384, B:155:0x0394, B:156:0x03b8, B:158:0x03c9, B:159:0x03d6, B:161:0x03e5, B:165:0x03f7, B:167:0x03ff, B:170:0x040a, B:172:0x0412, B:175:0x041d, B:177:0x0425, B:180:0x0437, B:182:0x043f, B:185:0x0451, B:187:0x0459, B:190:0x046b, B:192:0x0473, B:195:0x0485, B:197:0x048d, B:200:0x049f, B:202:0x04a7, B:205:0x04b9, B:207:0x04c1, B:210:0x04d3, B:212:0x04e4, B:213:0x04f1, B:215:0x0500, B:218:0x050d, B:221:0x051f), top: B:227:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e A[Catch: all -> 0x0370, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0370, blocks: (B:4:0x0028, B:6:0x002f, B:8:0x0038, B:15:0x005c, B:16:0x006e, B:20:0x0084, B:22:0x008b, B:25:0x009d, B:27:0x00a4, B:30:0x00b6, B:32:0x00bd, B:35:0x00d1, B:37:0x00d8, B:40:0x00ec, B:42:0x00f3, B:44:0x0103, B:54:0x0132, B:56:0x0158, B:58:0x0164, B:60:0x016f, B:64:0x019b, B:66:0x01a2, B:69:0x01b4, B:71:0x01bb, B:74:0x01cd, B:76:0x01d4, B:79:0x01e6, B:81:0x01ed, B:84:0x01ff, B:86:0x0206, B:89:0x0218, B:91:0x021f, B:94:0x0231, B:96:0x0238, B:99:0x024c, B:101:0x0253, B:104:0x0267, B:106:0x026e, B:109:0x0280, B:111:0x0287, B:114:0x0299, B:118:0x02aa, B:120:0x02b2, B:122:0x02d1, B:123:0x02de, B:125:0x02e6, B:126:0x02f4, B:133:0x0311, B:135:0x0321, B:139:0x032f, B:145:0x0346, B:151:0x037c, B:153:0x0384, B:155:0x0394, B:156:0x03b8, B:158:0x03c9, B:159:0x03d6, B:161:0x03e5, B:165:0x03f7, B:167:0x03ff, B:170:0x040a, B:172:0x0412, B:175:0x041d, B:177:0x0425, B:180:0x0437, B:182:0x043f, B:185:0x0451, B:187:0x0459, B:190:0x046b, B:192:0x0473, B:195:0x0485, B:197:0x048d, B:200:0x049f, B:202:0x04a7, B:205:0x04b9, B:207:0x04c1, B:210:0x04d3, B:212:0x04e4, B:213:0x04f1, B:215:0x0500, B:218:0x050d, B:221:0x051f), top: B:227:0x0025 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzmy m7351a(com.google.android.gms.internal.ads.sr2 r8) {
        /*
            Method dump skipped, instructions count: 1343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.go2.m7351a(com.google.android.gms.internal.ads.sr2):com.google.android.gms.internal.ads.zzmy");
    }

    /* renamed from: b */
    private static zznh m7350b(int i, String str, sr2 sr2Var) {
        int r = sr2Var.m5599r();
        if (sr2Var.m5599r() == tn2.f8623F0) {
            sr2Var.m5607j(8);
            return new zznh(str, (String) null, sr2Var.m5594w(r - 16));
        }
        String valueOf = String.valueOf(tn2.m5501c(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* renamed from: c */
    private static zznf m7349c(int i, String str, sr2 sr2Var, boolean z, boolean z2) {
        int e = m7347e(sr2Var);
        int i2 = e;
        if (z2) {
            i2 = Math.min(1, e);
        }
        if (i2 >= 0) {
            return z ? new zznh(str, (String) null, Integer.toString(i2)) : new zznd("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(tn2.m5501c(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: d */
    private static zznh m7348d(int i, String str, sr2 sr2Var) {
        int r = sr2Var.m5599r();
        if (sr2Var.m5599r() == tn2.f8623F0 && r >= 22) {
            sr2Var.m5607j(10);
            int m = sr2Var.m5604m();
            if (m > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(m);
                String sb2 = sb.toString();
                int m2 = sr2Var.m5604m();
                String str2 = sb2;
                if (m2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(m2);
                    str2 = sb3.toString();
                }
                return new zznh(str, (String) null, str2);
            }
        }
        String valueOf2 = String.valueOf(tn2.m5501c(i));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    /* renamed from: e */
    private static int m7347e(sr2 sr2Var) {
        sr2Var.m5607j(4);
        if (sr2Var.m5599r() == tn2.f8623F0) {
            sr2Var.m5607j(8);
            return sr2Var.m5605l();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
