package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/doq.class */
final class doq {

    /* renamed from: a */
    private static final int f15175a = dsn.m8694d("nam");

    /* renamed from: b */
    private static final int f15176b = dsn.m8694d("trk");

    /* renamed from: c */
    private static final int f15177c = dsn.m8694d("cmt");

    /* renamed from: d */
    private static final int f15178d = dsn.m8694d("day");

    /* renamed from: e */
    private static final int f15179e = dsn.m8694d("ART");

    /* renamed from: f */
    private static final int f15180f = dsn.m8694d("too");

    /* renamed from: g */
    private static final int f15181g = dsn.m8694d("alb");

    /* renamed from: h */
    private static final int f15182h = dsn.m8694d("com");

    /* renamed from: i */
    private static final int f15183i = dsn.m8694d("wrt");

    /* renamed from: j */
    private static final int f15184j = dsn.m8694d("lyr");

    /* renamed from: k */
    private static final int f15185k = dsn.m8694d("gen");

    /* renamed from: l */
    private static final int f15186l = dsn.m8694d("covr");

    /* renamed from: m */
    private static final int f15187m = dsn.m8694d("gnre");

    /* renamed from: n */
    private static final int f15188n = dsn.m8694d("grp");

    /* renamed from: o */
    private static final int f15189o = dsn.m8694d("disk");

    /* renamed from: p */
    private static final int f15190p = dsn.m8694d("trkn");

    /* renamed from: q */
    private static final int f15191q = dsn.m8694d("tmpo");

    /* renamed from: r */
    private static final int f15192r = dsn.m8694d("cpil");

    /* renamed from: s */
    private static final int f15193s = dsn.m8694d("aART");

    /* renamed from: t */
    private static final int f15194t = dsn.m8694d("sonm");

    /* renamed from: u */
    private static final int f15195u = dsn.m8694d("soal");

    /* renamed from: v */
    private static final int f15196v = dsn.m8694d("soar");

    /* renamed from: w */
    private static final int f15197w = dsn.m8694d("soaa");

    /* renamed from: x */
    private static final int f15198x = dsn.m8694d("soco");

    /* renamed from: y */
    private static final int f15199y = dsn.m8694d("rtng");

    /* renamed from: z */
    private static final int f15200z = dsn.m8694d("pgap");

    /* renamed from: A */
    private static final int f15171A = dsn.m8694d("sosn");

    /* renamed from: B */
    private static final int f15172B = dsn.m8694d("tvsh");

    /* renamed from: C */
    private static final int f15173C = dsn.m8694d("----");

    /* renamed from: D */
    private static final String[] f15174D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:189:0x059b A[Catch: all -> 0x00ac, TryCatch #0 {all -> 0x00ac, blocks: (B:7:0x003c, B:9:0x0044, B:11:0x0054, B:16:0x0080, B:18:0x0092, B:20:0x009f, B:25:0x00b7, B:26:0x00c6, B:28:0x00ce, B:31:0x00d8, B:33:0x00ed, B:35:0x00f5, B:38:0x00ff, B:40:0x0114, B:42:0x011c, B:44:0x0133, B:46:0x013b, B:48:0x0152, B:50:0x015a, B:52:0x0171, B:54:0x0179, B:56:0x0190, B:58:0x0198, B:60:0x01af, B:62:0x01b7, B:64:0x01ce, B:66:0x01d6, B:68:0x01ed, B:70:0x01f5, B:72:0x0200, B:74:0x0209, B:77:0x0218, B:81:0x0239, B:83:0x0249, B:85:0x0251, B:87:0x0268, B:89:0x0270, B:91:0x0287, B:93:0x028f, B:95:0x02a8, B:97:0x02b0, B:99:0x02c9, B:101:0x02d1, B:103:0x02e1, B:109:0x02fb, B:116:0x0342, B:117:0x0368, B:119:0x0378, B:121:0x0380, B:123:0x0397, B:125:0x039f, B:127:0x03b6, B:129:0x03be, B:131:0x03d5, B:133:0x03dd, B:135:0x03f4, B:137:0x03fc, B:139:0x0413, B:141:0x041b, B:143:0x0432, B:145:0x043a, B:147:0x0453, B:149:0x045b, B:151:0x0474, B:153:0x047c, B:155:0x0493, B:157:0x049b, B:159:0x04b2, B:163:0x04c5, B:165:0x04ce, B:167:0x04ed, B:168:0x04fa, B:170:0x0502, B:171:0x0510, B:175:0x0520, B:177:0x0530, B:179:0x053a, B:186:0x0563, B:187:0x0589, B:189:0x059b, B:191:0x05a8, B:193:0x05b9), top: B:194:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x05b9 A[Catch: all -> 0x00ac, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00ac, blocks: (B:7:0x003c, B:9:0x0044, B:11:0x0054, B:16:0x0080, B:18:0x0092, B:20:0x009f, B:25:0x00b7, B:26:0x00c6, B:28:0x00ce, B:31:0x00d8, B:33:0x00ed, B:35:0x00f5, B:38:0x00ff, B:40:0x0114, B:42:0x011c, B:44:0x0133, B:46:0x013b, B:48:0x0152, B:50:0x015a, B:52:0x0171, B:54:0x0179, B:56:0x0190, B:58:0x0198, B:60:0x01af, B:62:0x01b7, B:64:0x01ce, B:66:0x01d6, B:68:0x01ed, B:70:0x01f5, B:72:0x0200, B:74:0x0209, B:77:0x0218, B:81:0x0239, B:83:0x0249, B:85:0x0251, B:87:0x0268, B:89:0x0270, B:91:0x0287, B:93:0x028f, B:95:0x02a8, B:97:0x02b0, B:99:0x02c9, B:101:0x02d1, B:103:0x02e1, B:109:0x02fb, B:116:0x0342, B:117:0x0368, B:119:0x0378, B:121:0x0380, B:123:0x0397, B:125:0x039f, B:127:0x03b6, B:129:0x03be, B:131:0x03d5, B:133:0x03dd, B:135:0x03f4, B:137:0x03fc, B:139:0x0413, B:141:0x041b, B:143:0x0432, B:145:0x043a, B:147:0x0453, B:149:0x045b, B:151:0x0474, B:153:0x047c, B:155:0x0493, B:157:0x049b, B:159:0x04b2, B:163:0x04c5, B:165:0x04ce, B:167:0x04ed, B:168:0x04fa, B:170:0x0502, B:171:0x0510, B:175:0x0520, B:177:0x0530, B:179:0x053a, B:186:0x0563, B:187:0x0589, B:189:0x059b, B:191:0x05a8, B:193:0x05b9), top: B:194:0x0029 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.dpi.AbstractC3010a m8977a(com.google.android.gms.internal.ads.dsk r8) {
        /*
            Method dump skipped, instructions count: 1483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doq.m8977a(com.google.android.gms.internal.ads.dsk):com.google.android.gms.internal.ads.dpi$a");
    }

    /* renamed from: a */
    private static dpo m8979a(int i, String str, dsk dskVar) {
        dpo dpoVar;
        int m8722l = dskVar.m8722l();
        if (dskVar.m8722l() == doe.f15082as) {
            dskVar.m8731d(8);
            dpoVar = new dpo(str, null, dskVar.m8729e(m8722l - 16));
        } else {
            String valueOf = String.valueOf(doe.m9003e(i));
            Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
            dpoVar = null;
        }
        return dpoVar;
    }

    /* renamed from: a */
    private static dpp m8978a(int i, String str, dsk dskVar, boolean z, boolean z2) {
        dpo dpoVar;
        int m8975b = m8975b(dskVar);
        if (z2) {
            m8975b = Math.min(1, m8975b);
        }
        if (m8975b >= 0) {
            dpoVar = z ? new dpo(str, null, Integer.toString(m8975b)) : new dpk("und", str, Integer.toString(m8975b));
        } else {
            String valueOf = String.valueOf(doe.m9003e(i));
            Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
            dpoVar = null;
        }
        return dpoVar;
    }

    /* renamed from: b */
    private static int m8975b(dsk dskVar) {
        int i;
        dskVar.m8731d(4);
        if (dskVar.m8722l() == doe.f15082as) {
            dskVar.m8731d(8);
            i = dskVar.m8728f();
        } else {
            Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
            i = -1;
        }
        return i;
    }

    /* renamed from: b */
    private static dpo m8976b(int i, String str, dsk dskVar) {
        dpo dpoVar;
        int m8722l = dskVar.m8722l();
        if (dskVar.m8722l() == doe.f15082as && m8722l >= 22) {
            dskVar.m8731d(10);
            int m8727g = dskVar.m8727g();
            if (m8727g > 0) {
                String sb = new StringBuilder(11).append(m8727g).toString();
                int m8727g2 = dskVar.m8727g();
                String str2 = sb;
                if (m8727g2 > 0) {
                    String valueOf = String.valueOf(sb);
                    str2 = new StringBuilder(String.valueOf(valueOf).length() + 12).append(valueOf).append("/").append(m8727g2).toString();
                }
                dpoVar = new dpo(str, null, str2);
                return dpoVar;
            }
        }
        String valueOf2 = String.valueOf(doe.m9003e(i));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        dpoVar = null;
        return dpoVar;
    }
}
