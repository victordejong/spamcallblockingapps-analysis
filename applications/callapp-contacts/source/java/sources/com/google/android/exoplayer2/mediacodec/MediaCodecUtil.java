package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.exoplayer2.video.ColorInfo;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil.class */
public final class MediaCodecUtil {

    /* renamed from: a */
    private static final Pattern f36682a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b */
    private static final HashMap<C11170a, List<C11187g>> f36683b = new HashMap<>();

    /* renamed from: c */
    private static int f36684c = -1;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$a.class */
    public static final class C11170a {

        /* renamed from: a */
        public final String f36685a;

        /* renamed from: b */
        public final boolean f36686b;

        /* renamed from: c */
        public final boolean f36687c;

        public C11170a(String str, boolean z, boolean z2) {
            this.f36685a = str;
            this.f36686b = z;
            this.f36687c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C11170a.class) {
                return false;
            }
            C11170a c11170a = (C11170a) obj;
            return TextUtils.equals(this.f36685a, c11170a.f36685a) && this.f36686b == c11170a.f36686b && this.f36687c == c11170a.f36687c;
        }

        public final int hashCode() {
            int hashCode = this.f36685a.hashCode();
            int i = 1231;
            int i2 = this.f36686b ? 1231 : 1237;
            if (!this.f36687c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$b.class */
    public interface AbstractC11171b {
        /* renamed from: a */
        int mo21291a();

        /* renamed from: a */
        MediaCodecInfo mo21290a(int i);

        /* renamed from: a */
        boolean mo21289a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: a */
        boolean mo21288a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: b */
        boolean mo21287b();
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$c.class */
    public static final class C11172c implements AbstractC11171b {
        private C11172c() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final int mo21291a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final MediaCodecInfo mo21290a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final boolean mo21289a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final boolean mo21288a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: b */
        public final boolean mo21287b() {
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$d.class */
    public static final class C11173d implements AbstractC11171b {

        /* renamed from: a */
        private final int f36688a;

        /* renamed from: b */
        private MediaCodecInfo[] f36689b;

        public C11173d(boolean z, boolean z2) {
            this.f36688a = (z || z2) ? 1 : 0;
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        /* renamed from: c */
        private void m21286c() {
            if (this.f36689b == null) {
                this.f36689b = new MediaCodecList(this.f36688a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final int mo21291a() {
            m21286c();
            return this.f36689b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final MediaCodecInfo mo21290a(int i) {
            m21286c();
            return this.f36689b[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final boolean mo21289a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: a */
        public final boolean mo21288a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b
        /* renamed from: b */
        public final boolean mo21287b() {
            return true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$e.class */
    public interface AbstractC11174e<T> {
        int getScore(T t);
    }

    private MediaCodecUtil() {
    }

    /* renamed from: a */
    public static /* synthetic */ int m21305a(Format format, C11187g c11187g) {
        try {
            return c11187g.m21247a(format) ? 1 : 0;
        } catch (DecoderQueryException e) {
            return -1;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m21303a(AbstractC11174e abstractC11174e, Object obj, Object obj2) {
        return abstractC11174e.getScore(obj2) - abstractC11174e.getScore(obj);
    }

    /* renamed from: a */
    public static /* synthetic */ int m21302a(C11187g c11187g) {
        return c11187g.f36736a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:129:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x09e1  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x09f2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ff  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m21306a(com.google.android.exoplayer2.Format r5) {
        /*
            Method dump skipped, instructions count: 2599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m21306a(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m21299a(String str, String[] strArr) {
        int i;
        int i2;
        int i3 = 2;
        if (strArr.length < 2) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length < 3) {
                C11617n.m19863a("MediaCodecUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
                return null;
            } else {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            }
            if (i2 == 66) {
                i3 = 1;
            } else if (i2 != 77) {
                i3 = i2 != 88 ? i2 != 100 ? i2 != 110 ? i2 != 122 ? i2 != 244 ? -1 : 64 : 32 : 16 : 8 : 4;
            }
            if (i3 == -1) {
                C11617n.m19863a("MediaCodecUtil", "Unknown AVC profile: ".concat(String.valueOf(i2)));
                return null;
            }
            int i4 = 1;
            switch (i) {
                case 10:
                    break;
                case 11:
                    i4 = 4;
                    break;
                case 12:
                    i4 = 8;
                    break;
                case 13:
                    i4 = 16;
                    break;
                default:
                    switch (i) {
                        case 20:
                            i4 = 32;
                            break;
                        case 21:
                            i4 = 64;
                            break;
                        case 22:
                            i4 = 128;
                            break;
                        default:
                            switch (i) {
                                case 30:
                                    i4 = 256;
                                    break;
                                case 31:
                                    i4 = 512;
                                    break;
                                case 32:
                                    i4 = 1024;
                                    break;
                                default:
                                    switch (i) {
                                        case 40:
                                            i4 = 2048;
                                            break;
                                        case 41:
                                            i4 = 4096;
                                            break;
                                        case 42:
                                            i4 = 8192;
                                            break;
                                        default:
                                            switch (i) {
                                                case 50:
                                                    i4 = 16384;
                                                    break;
                                                case 51:
                                                    i4 = 32768;
                                                    break;
                                                case 52:
                                                    i4 = 65536;
                                                    break;
                                                default:
                                                    i4 = -1;
                                                    break;
                                            }
                                    }
                            }
                    }
            }
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            C11617n.m19863a("MediaCodecUtil", "Unknown AVC level: ".concat(String.valueOf(i)));
            return null;
        } catch (NumberFormatException e) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }

    /* renamed from: a */
    private static Pair<Integer, Integer> m21298a(String str, String[] strArr, ColorInfo colorInfo) {
        int i = 4;
        if (strArr.length < 4) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed AV1 codec string: ".concat(String.valueOf(str)));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                C11617n.m19863a("MediaCodecUtil", "Unknown AV1 profile: ".concat(String.valueOf(parseInt)));
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                C11617n.m19863a("MediaCodecUtil", "Unknown AV1 bit depth: ".concat(String.valueOf(parseInt3)));
                return null;
            } else {
                int i2 = parseInt3 == 8 ? 1 : (colorInfo == null || !(colorInfo.hdrStaticInfo != null || colorInfo.colorTransfer == 7 || colorInfo.colorTransfer == 6)) ? 2 : 4096;
                switch (parseInt2) {
                    case 0:
                        i = 1;
                        break;
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        break;
                    case 3:
                        i = 8;
                        break;
                    case 4:
                        i = 16;
                        break;
                    case 5:
                        i = 32;
                        break;
                    case 6:
                        i = 64;
                        break;
                    case 7:
                        i = 128;
                        break;
                    case 8:
                        i = 256;
                        break;
                    case 9:
                        i = 512;
                        break;
                    case 10:
                        i = 1024;
                        break;
                    case 11:
                        i = 2048;
                        break;
                    case 12:
                        i = 4096;
                        break;
                    case 13:
                        i = 8192;
                        break;
                    case 14:
                        i = 16384;
                        break;
                    case 15:
                        i = 32768;
                        break;
                    case 16:
                        i = 65536;
                        break;
                    case 17:
                        i = 131072;
                        break;
                    case 18:
                        i = 262144;
                        break;
                    case 19:
                        i = 524288;
                        break;
                    case 20:
                        i = 1048576;
                        break;
                    case 21:
                        i = 2097152;
                        break;
                    case 22:
                        i = 4194304;
                        break;
                    case 23:
                        i = 8388608;
                        break;
                    default:
                        i = -1;
                        break;
                }
                if (i != -1) {
                    return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i));
                }
                C11617n.m19863a("MediaCodecUtil", "Unknown AV1 level: ".concat(String.valueOf(parseInt2)));
                return null;
            }
        } catch (NumberFormatException e) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed AV1 codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }

    /* renamed from: a */
    public static C11187g m21309a() throws DecoderQueryException {
        return m21301a("audio/raw");
    }

    /* renamed from: a */
    private static C11187g m21301a(String str) throws DecoderQueryException {
        List<C11187g> m21300a = m21300a(str, false, false);
        if (m21300a.isEmpty()) {
            return null;
        }
        return m21300a.get(0);
    }

    /* renamed from: a */
    private static String m21307a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if (!"OMX.RTK.video.decoder".equals(str) && !"OMX.realtek.video.decoder.tunneled".equals(str)) {
                return null;
            }
            return "video/dv_hevc";
        } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x03b8 A[Catch: Exception -> 0x049e, TRY_LEAVE, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03c2 A[Catch: Exception -> 0x049e, TRY_ENTER, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03e2 A[Catch: Exception -> 0x049e, TRY_LEAVE, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03ec A[Catch: Exception -> 0x049e, TRY_ENTER, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.C11187g> m21304a(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.C11170a r10, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11171b r11) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.m21304a(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$a, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b):java.util.ArrayList");
    }

    /* renamed from: a */
    public static List<C11187g> m21300a(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                C11170a c11170a = new C11170a(str, z, z2);
                HashMap<C11170a, List<C11187g>> hashMap = f36683b;
                List<C11187g> list = hashMap.get(c11170a);
                if (list != null) {
                    return list;
                }
                ArrayList<C11187g> m21304a = m21304a(c11170a, C11599af.f38648a >= 21 ? new C11173d(z, z2) : new C11172c());
                ArrayList<C11187g> arrayList = m21304a;
                if (z) {
                    arrayList = m21304a;
                    if (m21304a.isEmpty()) {
                        arrayList = m21304a;
                        if (21 <= C11599af.f38648a) {
                            arrayList = m21304a;
                            if (C11599af.f38648a <= 23) {
                                ArrayList<C11187g> m21304a2 = m21304a(c11170a, new C11172c());
                                arrayList = m21304a2;
                                if (!m21304a2.isEmpty()) {
                                    C11617n.m19863a("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + m21304a2.get(0).f36736a);
                                    arrayList = m21304a2;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (C11599af.f38648a < 26 && C11599af.f38649b.equals("R9") && arrayList.size() == 1 && arrayList.get(0).f36736a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(C11187g.m21243a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
                    }
                    m21296a((List) arrayList, (AbstractC11174e) _$$Lambda$MediaCodecUtil$MbNP1nGMQNot_7mZepBISVLsZ2I.INSTANCE);
                }
                if (C11599af.f38648a < 21 && arrayList.size() > 1) {
                    String str2 = arrayList.get(0).f36736a;
                    if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                        m21296a((List) arrayList, (AbstractC11174e) _$$Lambda$MediaCodecUtil$bibv06jsgiNGQM_BsA8g_4c5ljs.INSTANCE);
                    }
                }
                if (C11599af.f38648a < 30 && arrayList.size() > 1 && "OMX.qti.audio.decoder.flac".equals(arrayList.get(0).f36736a)) {
                    arrayList.add(arrayList.remove(0));
                }
                List<C11187g> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(c11170a, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static List<C11187g> m21297a(List<C11187g> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        m21296a(arrayList, new AbstractC11174e() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$MediaCodecUtil$JT5rQHCZBnfV3W0X2bNLZC96Mn4
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.AbstractC11174e
            public final int getScore(Object obj) {
                int m21305a;
                m21305a = MediaCodecUtil.m21305a(Format.this, (C11187g) obj);
                return m21305a;
            }
        });
        return arrayList;
    }

    /* renamed from: a */
    private static <T> void m21296a(List<T> list, final AbstractC11174e<T> abstractC11174e) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$MediaCodecUtil$pZ7ijVEMrtN0_SpzxNKURmj_IUA
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m21303a;
                m21303a = MediaCodecUtil.m21303a(MediaCodecUtil.AbstractC11174e.this, obj, obj2);
                return m21303a;
            }
        });
    }

    /* renamed from: a */
    private static boolean m21308a(MediaCodecInfo mediaCodecInfo) {
        if (C11599af.f38648a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String m19927d = C11599af.m19927d(mediaCodecInfo.getName());
        if (m19927d.startsWith("arc.")) {
            return false;
        }
        if (m19927d.startsWith("omx.google.") || m19927d.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((m19927d.startsWith("omx.sec.") && m19927d.contains(".sw.")) || m19927d.equals("omx.qcom.video.decoder.hevcswvdec") || m19927d.startsWith("c2.android.") || m19927d.startsWith("c2.google.")) {
            return true;
        }
        return !m19927d.startsWith("omx.") && !m19927d.startsWith("c2.");
    }

    /* renamed from: b */
    public static int m21295b() throws DecoderQueryException {
        int i;
        if (f36684c == -1) {
            C11187g m21301a = m21301a("video/avc");
            int i2 = 0;
            if (m21301a != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m21301a.m21253a()) {
                    int i4 = codecProfileLevel.level;
                    if (i4 == 1 || i4 == 2) {
                        i = 25344;
                    } else {
                        switch (i4) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                continue;
                            case 64:
                                i = 202752;
                                continue;
                            case 128:
                            case PropertyFlags.INDEX_PARTIAL_SKIP_NULL /* 256 */:
                                i = 414720;
                                continue;
                            case 512:
                                i = 921600;
                                continue;
                            case 1024:
                                i = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i = 2097152;
                                continue;
                            case PropertyFlags.UNSIGNED /* 8192 */:
                                i = 2228224;
                                continue;
                            case 16384:
                                i = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                continue;
                            default:
                                i = -1;
                                continue;
                        }
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, C11599af.f38648a >= 21 ? 345600 : 172800);
            }
            f36684c = i2;
        }
        return f36684c;
    }

    /* renamed from: b */
    public static /* synthetic */ int m21294b(C11187g c11187g) {
        String str = c11187g.f36736a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (C11599af.f38648a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: b */
    private static Pair<Integer, Integer> m21293b(String str, String[] strArr) {
        if (strArr.length < 3) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed VP9 codec string: ".concat(String.valueOf(str)));
            return null;
        }
        int i = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i2 = parseInt != 0 ? parseInt != 1 ? parseInt != 2 ? parseInt != 3 ? -1 : 8 : 4 : 2 : 1;
            if (i2 == -1) {
                C11617n.m19863a("MediaCodecUtil", "Unknown VP9 profile: ".concat(String.valueOf(parseInt)));
                return null;
            }
            if (parseInt2 != 10) {
                if (parseInt2 == 11) {
                    i = 2;
                } else if (parseInt2 == 20) {
                    i = 4;
                } else if (parseInt2 == 21) {
                    i = 8;
                } else if (parseInt2 == 30) {
                    i = 16;
                } else if (parseInt2 == 31) {
                    i = 32;
                } else if (parseInt2 == 40) {
                    i = 64;
                } else if (parseInt2 == 41) {
                    i = 128;
                } else if (parseInt2 == 50) {
                    i = 256;
                } else if (parseInt2 != 51) {
                    switch (parseInt2) {
                        case 60:
                            i = 2048;
                            break;
                        case 61:
                            i = 4096;
                            break;
                        case 62:
                            i = 8192;
                            break;
                        default:
                            i = -1;
                            break;
                    }
                } else {
                    i = 512;
                }
            }
            if (i != -1) {
                return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i));
            }
            C11617n.m19863a("MediaCodecUtil", "Unknown VP9 level: ".concat(String.valueOf(parseInt2)));
            return null;
        } catch (NumberFormatException e) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed VP9 codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }

    /* renamed from: c */
    private static Pair<Integer, Integer> m21292c(String str, String[] strArr) {
        int i = 3;
        if (strArr.length != 3) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed MP4A codec string: ".concat(String.valueOf(str)));
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(C11620q.m19854a(Integer.parseInt(strArr[1], 16)))) {
                return null;
            }
            int parseInt = Integer.parseInt(strArr[2]);
            if (parseInt == 17) {
                i = 17;
            } else if (parseInt == 20) {
                i = 20;
            } else if (parseInt == 23) {
                i = 23;
            } else if (parseInt == 29) {
                i = 29;
            } else if (parseInt == 39) {
                i = 39;
            } else if (parseInt != 42) {
                switch (parseInt) {
                    case 1:
                        i = 1;
                        break;
                    case 2:
                        i = 2;
                        break;
                    case 3:
                        break;
                    case 4:
                        i = 4;
                        break;
                    case 5:
                        i = 5;
                        break;
                    case 6:
                        i = 6;
                        break;
                    default:
                        i = -1;
                        break;
                }
            } else {
                i = 42;
            }
            if (i == -1) {
                return null;
            }
            return new Pair<>(Integer.valueOf(i), 0);
        } catch (NumberFormatException e) {
            C11617n.m19863a("MediaCodecUtil", "Ignoring malformed MP4A codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }
}
