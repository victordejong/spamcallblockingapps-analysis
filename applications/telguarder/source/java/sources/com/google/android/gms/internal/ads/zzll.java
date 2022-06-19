package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzll.class */
final class zzll {
    private static final int zzayn = zzpt.zzbh("nam");
    private static final int zzayo = zzpt.zzbh("trk");
    private static final int zzayp = zzpt.zzbh("cmt");
    private static final int zzayq = zzpt.zzbh("day");
    private static final int zzayr = zzpt.zzbh("ART");
    private static final int zzays = zzpt.zzbh("too");
    private static final int zzayt = zzpt.zzbh("alb");
    private static final int zzayu = zzpt.zzbh("com");
    private static final int zzayv = zzpt.zzbh("wrt");
    private static final int zzayw = zzpt.zzbh("lyr");
    private static final int zzayx = zzpt.zzbh("gen");
    private static final int zzayy = zzpt.zzbh("covr");
    private static final int zzayz = zzpt.zzbh("gnre");
    private static final int zzaza = zzpt.zzbh("grp");
    private static final int zzazb = zzpt.zzbh("disk");
    private static final int zzazc = zzpt.zzbh("trkn");
    private static final int zzazd = zzpt.zzbh("tmpo");
    private static final int zzaze = zzpt.zzbh("cpil");
    private static final int zzazf = zzpt.zzbh("aART");
    private static final int zzazg = zzpt.zzbh("sonm");
    private static final int zzazh = zzpt.zzbh("soal");
    private static final int zzazi = zzpt.zzbh("soar");
    private static final int zzazj = zzpt.zzbh("soaa");
    private static final int zzazk = zzpt.zzbh("soco");
    private static final int zzazl = zzpt.zzbh("rtng");
    private static final int zzazm = zzpt.zzbh("pgap");
    private static final int zzazn = zzpt.zzbh("sosn");
    private static final int zzazo = zzpt.zzbh("tvsh");
    private static final int zzazp = zzpt.zzbh("----");
    private static final String[] zzazq = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    private static zzmn zza(int i, String str, zzpn zzpnVar) {
        int readInt = zzpnVar.readInt();
        if (zzpnVar.readInt() == zzkw.zzawc) {
            zzpnVar.zzbj(8);
            return new zzmn(str, null, zzpnVar.zzbk(readInt - 16));
        }
        String valueOf = String.valueOf(zzkw.zzat(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    private static zzmo zza(int i, String str, zzpn zzpnVar, boolean z, boolean z2) {
        int zze = zze(zzpnVar);
        int i2 = zze;
        if (z2) {
            i2 = Math.min(1, zze);
        }
        if (i2 >= 0) {
            return z ? new zzmn(str, null, Integer.toString(i2)) : new zzmj("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(zzkw.zzat(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static zzmn zzb(int i, String str, zzpn zzpnVar) {
        int readInt = zzpnVar.readInt();
        if (zzpnVar.readInt() == zzkw.zzawc && readInt >= 22) {
            zzpnVar.zzbj(10);
            int readUnsignedShort = zzpnVar.readUnsignedShort();
            if (readUnsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(readUnsignedShort);
                String sb2 = sb.toString();
                int readUnsignedShort2 = zzpnVar.readUnsignedShort();
                String str2 = sb2;
                if (readUnsignedShort2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(readUnsignedShort2);
                    str2 = sb3.toString();
                }
                return new zzmn(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(zzkw.zzat(i));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060 A[Catch: all -> 0x0515, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0515, blocks: (B:6:0x0031, B:8:0x0038, B:10:0x0041, B:17:0x0060, B:18:0x0072, B:22:0x0088, B:24:0x008f, B:27:0x00a1, B:29:0x00a8, B:32:0x00ba, B:34:0x00c1, B:37:0x00d5, B:39:0x00dc, B:42:0x00f0, B:44:0x00f7, B:46:0x0106, B:56:0x0132, B:58:0x0161, B:60:0x016b, B:61:0x018a, B:65:0x01a0, B:67:0x01a7, B:70:0x01b9, B:72:0x01c0, B:75:0x01d2, B:77:0x01d9, B:80:0x01eb, B:82:0x01f2, B:85:0x0204, B:87:0x020b, B:90:0x021d, B:92:0x0224, B:95:0x0236, B:97:0x023d, B:100:0x0251, B:102:0x0258, B:105:0x026c, B:107:0x0273, B:110:0x0285, B:112:0x028c, B:115:0x029e, B:119:0x02b0, B:121:0x02b8, B:123:0x02d7, B:124:0x02e5, B:126:0x02ed, B:127:0x02fb, B:131:0x0309, B:133:0x0319, B:137:0x0328, B:143:0x033f, B:148:0x036e, B:150:0x0375, B:152:0x0384, B:153:0x03a7, B:155:0x03b8, B:156:0x03c5, B:158:0x03d4, B:162:0x03e6, B:164:0x03ed, B:167:0x03f7, B:169:0x03fe, B:172:0x0408, B:174:0x040f, B:177:0x0421, B:179:0x0428, B:182:0x043a, B:184:0x0441, B:187:0x0453, B:189:0x045a, B:192:0x046c, B:194:0x0473, B:197:0x0485, B:199:0x048c, B:202:0x049e, B:204:0x04a5, B:207:0x04b7, B:209:0x04c8, B:210:0x04d5, B:212:0x04e4, B:215:0x04f1, B:218:0x0503), top: B:224:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072 A[Catch: all -> 0x0515, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0515, blocks: (B:6:0x0031, B:8:0x0038, B:10:0x0041, B:17:0x0060, B:18:0x0072, B:22:0x0088, B:24:0x008f, B:27:0x00a1, B:29:0x00a8, B:32:0x00ba, B:34:0x00c1, B:37:0x00d5, B:39:0x00dc, B:42:0x00f0, B:44:0x00f7, B:46:0x0106, B:56:0x0132, B:58:0x0161, B:60:0x016b, B:61:0x018a, B:65:0x01a0, B:67:0x01a7, B:70:0x01b9, B:72:0x01c0, B:75:0x01d2, B:77:0x01d9, B:80:0x01eb, B:82:0x01f2, B:85:0x0204, B:87:0x020b, B:90:0x021d, B:92:0x0224, B:95:0x0236, B:97:0x023d, B:100:0x0251, B:102:0x0258, B:105:0x026c, B:107:0x0273, B:110:0x0285, B:112:0x028c, B:115:0x029e, B:119:0x02b0, B:121:0x02b8, B:123:0x02d7, B:124:0x02e5, B:126:0x02ed, B:127:0x02fb, B:131:0x0309, B:133:0x0319, B:137:0x0328, B:143:0x033f, B:148:0x036e, B:150:0x0375, B:152:0x0384, B:153:0x03a7, B:155:0x03b8, B:156:0x03c5, B:158:0x03d4, B:162:0x03e6, B:164:0x03ed, B:167:0x03f7, B:169:0x03fe, B:172:0x0408, B:174:0x040f, B:177:0x0421, B:179:0x0428, B:182:0x043a, B:184:0x0441, B:187:0x0453, B:189:0x045a, B:192:0x046c, B:194:0x0473, B:197:0x0485, B:199:0x048c, B:202:0x049e, B:204:0x04a5, B:207:0x04b7, B:209:0x04c8, B:210:0x04d5, B:212:0x04e4, B:215:0x04f1, B:218:0x0503), top: B:224:0x0024 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzmh.zza zzd(com.google.android.gms.internal.ads.zzpn r8) {
        /*
            Method dump skipped, instructions count: 1311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzll.zzd(com.google.android.gms.internal.ads.zzpn):com.google.android.gms.internal.ads.zzmh$zza");
    }

    private static int zze(zzpn zzpnVar) {
        zzpnVar.zzbj(4);
        if (zzpnVar.readInt() == zzkw.zzawc) {
            zzpnVar.zzbj(8);
            return zzpnVar.readUnsignedByte();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
