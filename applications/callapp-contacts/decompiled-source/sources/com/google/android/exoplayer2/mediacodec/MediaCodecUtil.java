package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.q;
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

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f21396a = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<a, List<g>> f21397b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static int f21398c = -1;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException.class */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f21399a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21400b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f21401c;

        public a(String str, boolean z, boolean z2) {
            this.f21399a = str;
            this.f21400b = z;
            this.f21401c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.f21399a, aVar.f21399a) && this.f21400b == aVar.f21400b && this.f21401c == aVar.f21401c;
        }

        public final int hashCode() {
            int hashCode = this.f21399a.hashCode();
            int i = 1231;
            int i2 = this.f21400b ? 1231 : 1237;
            if (!this.f21401c) {
                i = 1237;
            }
            return ((((hashCode + 31) * 31) + i2) * 31) + i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$b.class */
    public interface b {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$c.class */
    public static final class c implements b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final int a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final boolean b() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$d.class */
    public static final class d implements b {

        /* renamed from: a  reason: collision with root package name */
        private final int f21402a;

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f21403b;

        public d(boolean z, boolean z2) {
            this.f21402a = (z || z2) ? 1 : 0;
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        private void c() {
            if (this.f21403b == null) {
                this.f21403b = new MediaCodecList(this.f21402a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final int a() {
            c();
            return this.f21403b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final MediaCodecInfo a(int i) {
            c();
            return this.f21403b[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b
        public final boolean b() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecUtil$e.class */
    public interface e<T> {
        int getScore(T t);
    }

    private MediaCodecUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Format format, g gVar) {
        try {
            return gVar.a(format) ? 1 : 0;
        } catch (DecoderQueryException e2) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(e eVar, Object obj, Object obj2) {
        return eVar.getScore(obj2) - eVar.getScore(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(g gVar) {
        return gVar.f21428a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:129:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x09e1  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x09f2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> a(com.google.android.exoplayer2.Format r5) {
        /*
            Method dump skipped, instructions count: 2599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.a(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr) {
        int i;
        int i2;
        int i3 = 2;
        if (strArr.length < 2) {
            n.a("MediaCodecUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
            return null;
        }
        int i4 = 1;
        try {
            if (strArr[1].length() == 6) {
                i2 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            } else {
                n.a("MediaCodecUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
                return null;
            }
            if (i2 == 66) {
                i3 = 1;
            } else if (i2 != 77) {
                i3 = i2 != 88 ? i2 != 100 ? i2 != 110 ? i2 != 122 ? i2 != 244 ? -1 : 64 : 32 : 16 : 8 : 4;
            }
            if (i3 == -1) {
                n.a("MediaCodecUtil", "Unknown AVC profile: ".concat(String.valueOf(i2)));
                return null;
            }
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
                                    i4 = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
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
                                            i4 = PropertyFlags.UNSIGNED;
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
            n.a("MediaCodecUtil", "Unknown AVC level: ".concat(String.valueOf(i)));
            return null;
        } catch (NumberFormatException e2) {
            n.a("MediaCodecUtil", "Ignoring malformed AVC codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }

    private static Pair<Integer, Integer> a(String str, String[] strArr, ColorInfo colorInfo) {
        int i = 4;
        if (strArr.length < 4) {
            n.a("MediaCodecUtil", "Ignoring malformed AV1 codec string: ".concat(String.valueOf(str)));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                n.a("MediaCodecUtil", "Unknown AV1 profile: ".concat(String.valueOf(parseInt)));
                return null;
            } else if (parseInt3 == 8 || parseInt3 == 10) {
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
                        i = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
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
                        i = PropertyFlags.UNSIGNED;
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
                n.a("MediaCodecUtil", "Unknown AV1 level: ".concat(String.valueOf(parseInt2)));
                return null;
            } else {
                n.a("MediaCodecUtil", "Unknown AV1 bit depth: ".concat(String.valueOf(parseInt3)));
                return null;
            }
        } catch (NumberFormatException e2) {
            n.a("MediaCodecUtil", "Ignoring malformed AV1 codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }

    public static g a() throws DecoderQueryException {
        return a("audio/raw");
    }

    private static g a(String str) throws DecoderQueryException {
        List<g> a2 = a(str, false, false);
        if (a2.isEmpty()) {
            return null;
        }
        return a2.get(0);
    }

    private static String a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
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
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (!str2.equals("audio/flac") || !"OMX.lge.flac.decoder".equals(str)) {
                return null;
            }
            return "audio/x-lg-flac";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x03b8 A[Catch: Exception -> 0x049e, TRY_LEAVE, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03c2 A[Catch: Exception -> 0x049e, TRY_ENTER, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03e2 A[Catch: Exception -> 0x049e, TRY_LEAVE, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03ec A[Catch: Exception -> 0x049e, TRY_ENTER, TryCatch #0 {Exception -> 0x049e, blocks: (B:153:0x0335, B:157:0x0367, B:161:0x0377, B:165:0x03a0, B:169:0x03b0, B:171:0x03b8, B:172:0x03c2, B:177:0x03d3, B:179:0x03e2, B:180:0x03ec, B:182:0x0401, B:184:0x040c, B:191:0x0425, B:195:0x0434), top: B:220:0x0335 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.g> a(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.a r10, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b r11) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.a(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$a, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b):java.util.ArrayList");
    }

    public static List<g> a(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                a aVar = new a(str, z, z2);
                HashMap<a, List<g>> hashMap = f21397b;
                List<g> list = hashMap.get(aVar);
                if (list != null) {
                    return list;
                }
                ArrayList<g> a2 = a(aVar, af.f22275a >= 21 ? new d(z, z2) : new c());
                ArrayList<g> arrayList = a2;
                if (z) {
                    arrayList = a2;
                    if (a2.isEmpty()) {
                        arrayList = a2;
                        if (21 <= af.f22275a) {
                            arrayList = a2;
                            if (af.f22275a <= 23) {
                                ArrayList<g> a3 = a(aVar, new c());
                                arrayList = a3;
                                if (!a3.isEmpty()) {
                                    n.a("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + a3.get(0).f21428a);
                                    arrayList = a3;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (af.f22275a < 26 && af.f22276b.equals("R9") && arrayList.size() == 1 && arrayList.get(0).f21428a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(g.a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
                    }
                    a((List) arrayList, (e) _$$Lambda$MediaCodecUtil$MbNP1nGMQNot_7mZepBISVLsZ2I.INSTANCE);
                }
                if (af.f22275a < 21 && arrayList.size() > 1) {
                    String str2 = arrayList.get(0).f21428a;
                    if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                        a((List) arrayList, (e) _$$Lambda$MediaCodecUtil$bibv06jsgiNGQM_BsA8g_4c5ljs.INSTANCE);
                    }
                }
                if (af.f22275a < 30 && arrayList.size() > 1 && "OMX.qti.audio.decoder.flac".equals(arrayList.get(0).f21428a)) {
                    arrayList.add(arrayList.remove(0));
                }
                List<g> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(aVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List<g> a(List<g> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        a(arrayList, new e() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$MediaCodecUtil$JT5rQHCZBnfV3W0X2bNLZC96Mn4
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.e
            public final int getScore(Object obj) {
                int a2;
                a2 = MediaCodecUtil.a(Format.this, (g) obj);
                return a2;
            }
        });
        return arrayList;
    }

    private static <T> void a(List<T> list, final e<T> eVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$MediaCodecUtil$pZ7ijVEMrtN0_SpzxNKURmj_IUA
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = MediaCodecUtil.a(MediaCodecUtil.e.this, obj, obj2);
                return a2;
            }
        });
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo) {
        if (af.f22275a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String d2 = af.d(mediaCodecInfo.getName());
        if (d2.startsWith("arc.")) {
            return false;
        }
        if (d2.startsWith("omx.google.") || d2.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((!d2.startsWith("omx.sec.") || !d2.contains(".sw.")) && !d2.equals("omx.qcom.video.decoder.hevcswvdec") && !d2.startsWith("c2.android.") && !d2.startsWith("c2.google.")) {
            return !d2.startsWith("omx.") && !d2.startsWith("c2.");
        }
        return true;
    }

    public static int b() throws DecoderQueryException {
        int i;
        if (f21398c == -1) {
            g a2 = a("video/avc");
            int i2 = 0;
            if (a2 != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : a2.a()) {
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
                i2 = Math.max(i3, af.f22275a >= 21 ? 345600 : 172800);
            }
            f21398c = i2;
        }
        return f21398c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(g gVar) {
        String str = gVar.f21428a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (af.f22275a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    private static Pair<Integer, Integer> b(String str, String[] strArr) {
        if (strArr.length < 3) {
            n.a("MediaCodecUtil", "Ignoring malformed VP9 codec string: ".concat(String.valueOf(str)));
            return null;
        }
        int i = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int i2 = parseInt != 0 ? parseInt != 1 ? parseInt != 2 ? parseInt != 3 ? -1 : 8 : 4 : 2 : 1;
            if (i2 == -1) {
                n.a("MediaCodecUtil", "Unknown VP9 profile: ".concat(String.valueOf(parseInt)));
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
                    i = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                } else if (parseInt2 != 51) {
                    switch (parseInt2) {
                        case 60:
                            i = 2048;
                            break;
                        case 61:
                            i = 4096;
                            break;
                        case 62:
                            i = PropertyFlags.UNSIGNED;
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
            n.a("MediaCodecUtil", "Unknown VP9 level: ".concat(String.valueOf(parseInt2)));
            return null;
        } catch (NumberFormatException e2) {
            n.a("MediaCodecUtil", "Ignoring malformed VP9 codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }

    private static Pair<Integer, Integer> c(String str, String[] strArr) {
        int i = 3;
        if (strArr.length != 3) {
            n.a("MediaCodecUtil", "Ignoring malformed MP4A codec string: ".concat(String.valueOf(str)));
            return null;
        }
        try {
            if (!"audio/mp4a-latm".equals(q.a(Integer.parseInt(strArr[1], 16)))) {
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
            if (i != -1) {
                return new Pair<>(Integer.valueOf(i), 0);
            }
            return null;
        } catch (NumberFormatException e2) {
            n.a("MediaCodecUtil", "Ignoring malformed MP4A codec string: ".concat(String.valueOf(str)));
            return null;
        }
    }
}
