package com.linkedin.android.litr.p470h;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.text.TextUtils;
import android.view.Surface;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* renamed from: com.linkedin.android.litr.h.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/h/a.class */
public final class C16655a {

    /* renamed from: a */
    private static Map<String, int[]> f58611a = new HashMap();

    static {
        f58611a.put("video/avc", Build.VERSION.SDK_INT >= 27 ? new int[]{65536, 1, 4, 2, 524288, 8, 16, 32, 64} : new int[]{1, 4, 2, 8, 16, 32, 64});
        f58611a.put("video/x-vnd.on2.vp8", new int[]{1});
        if (Build.VERSION.SDK_INT >= 21) {
            f58611a.put("video/hevc", Build.VERSION.SDK_INT >= 29 ? new int[]{1, 2, 4096, PropertyFlags.UNSIGNED} : Build.VERSION.SDK_INT >= 24 ? new int[]{1, 2, 4096} : new int[]{1, 2});
        }
        if (Build.VERSION.SDK_INT >= 24) {
            f58611a.put("video/x-vnd.on2.vp9", Build.VERSION.SDK_INT >= 29 ? new int[]{1, 2, 4, 4096, 16384, 8, PropertyFlags.UNSIGNED, 32768} : new int[]{1, 2, 4, 4096, 8, PropertyFlags.UNSIGNED});
        }
        if (Build.VERSION.SDK_INT >= 29) {
            f58611a.put("video/av01", new int[]{1, 2, 4096, PropertyFlags.UNSIGNED});
        }
    }

    private C16655a() {
    }

    /* renamed from: a */
    public static int m6808a(String str, int i) {
        int i2 = -1;
        if (Build.VERSION.SDK_INT >= 21) {
            int m6805b = i == -1 ? Integer.MAX_VALUE : m6805b(str, i);
            MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
            int length = codecInfos.length;
            int i3 = 0;
            int i4 = -1;
            while (true) {
                int i5 = i4;
                i2 = i5;
                if (i3 >= length) {
                    break;
                }
                MediaCodecInfo mediaCodecInfo = codecInfos[i3];
                int i6 = i5;
                if (m6812a(mediaCodecInfo, str)) {
                    i6 = i5;
                    if (mediaCodecInfo.isEncoder()) {
                        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = mediaCodecInfo.getCapabilitiesForType(str).profileLevels;
                        int length2 = codecProfileLevelArr.length;
                        int i7 = 0;
                        while (true) {
                            i6 = i5;
                            if (i7 < length2) {
                                MediaCodecInfo.CodecProfileLevel codecProfileLevel = codecProfileLevelArr[i7];
                                int i8 = i5;
                                if (m6805b(str, codecProfileLevel.profile) > m6805b(str, i5)) {
                                    i8 = i5;
                                    if (m6805b(str, codecProfileLevel.profile) <= m6805b) {
                                        i8 = codecProfileLevel.profile;
                                    }
                                }
                                i7++;
                                i5 = i8;
                            }
                        }
                    }
                }
                i3++;
                i4 = i6;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static /* synthetic */ MediaCodec m6813a(MediaCodecInfo mediaCodecInfo) throws Exception {
        return MediaCodec.createByCodecName(mediaCodecInfo.getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0119  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.media.MediaCodec m6811a(android.media.MediaFormat r8, android.view.Surface r9, boolean r10, com.linkedin.android.litr.exception.TrackTranscoderException.EnumC16646a r11, com.linkedin.android.litr.exception.TrackTranscoderException.EnumC16646a r12, com.linkedin.android.litr.exception.TrackTranscoderException.EnumC16646a r13, boolean r14, boolean r15) throws com.linkedin.android.litr.exception.TrackTranscoderException {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.p470h.C16655a.m6811a(android.media.MediaFormat, android.view.Surface, boolean, com.linkedin.android.litr.exception.TrackTranscoderException$a, com.linkedin.android.litr.exception.TrackTranscoderException$a, com.linkedin.android.litr.exception.TrackTranscoderException$a, boolean, boolean):android.media.MediaCodec");
    }

    /* renamed from: a */
    private static MediaCodec m6810a(MediaFormat mediaFormat, Surface surface, boolean z, List<Callable<MediaCodec>> list) throws IllegalStateException, IOException {
        IOException iOException;
        MediaCodec mediaCodec;
        Exception e;
        IOException iOException2;
        MediaCodec mediaCodec2;
        Iterator<Callable<MediaCodec>> it2 = list.iterator();
        MediaCodec mediaCodec3 = null;
        IOException iOException3 = null;
        while (true) {
            iOException = iOException3;
            mediaCodec = mediaCodec3;
            if (!it2.hasNext()) {
                break;
            }
            try {
                mediaCodec = it2.next().call();
                iOException2 = iOException;
                mediaCodec2 = mediaCodec;
            } catch (Exception e2) {
                e = e2;
                mediaCodec = mediaCodec3;
            }
            if (mediaCodec != null) {
                try {
                    m6814a(mediaCodec, mediaFormat, surface, z);
                    break;
                } catch (Exception e3) {
                    e = e3;
                    MediaCodec mediaCodec4 = mediaCodec;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                        mediaCodec4 = null;
                    }
                    iOException2 = iOException;
                    mediaCodec2 = mediaCodec4;
                    if (e instanceof IOException) {
                        iOException2 = (IOException) e;
                        mediaCodec2 = mediaCodec4;
                    }
                    mediaCodec3 = mediaCodec2;
                    iOException3 = iOException2;
                }
            } else {
                continue;
                mediaCodec3 = mediaCodec2;
                iOException3 = iOException2;
            }
        }
        if (mediaCodec == null) {
            if (iOException == null) {
                throw new IllegalStateException();
            }
            throw iOException;
        }
        return mediaCodec;
    }

    /* renamed from: a */
    private static MediaCodec m6809a(MediaFormat mediaFormat, Surface surface, boolean z, boolean z2) throws IOException, IllegalStateException {
        MediaCodec mediaCodec;
        String string = mediaFormat.getString("mime");
        if (z2) {
            mediaCodec = null;
            List<Callable<MediaCodec>> m6806a = m6806a(z, string, null);
            if (!m6806a.isEmpty()) {
                mediaCodec = m6810a(mediaFormat, surface, z, m6806a);
            }
        } else {
            MediaCodec createEncoderByType = z ? MediaCodec.createEncoderByType(string) : MediaCodec.createDecoderByType(string);
            mediaCodec = createEncoderByType;
            if (createEncoderByType != null) {
                m6814a(createEncoderByType, mediaFormat, surface, z);
                mediaCodec = createEncoderByType;
            }
        }
        return mediaCodec;
    }

    /* renamed from: a */
    public static /* synthetic */ MediaCodec m6807a(boolean z, String str) throws Exception {
        return z ? MediaCodec.createEncoderByType(str) : MediaCodec.createDecoderByType(str);
    }

    /* renamed from: a */
    private static List<Callable<MediaCodec>> m6806a(final boolean z, final String str, MediaFormat mediaFormat) {
        MediaCodecInfo[] codecInfos;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            for (final MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                if (mediaCodecInfo.isEncoder() == z) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                        if (capabilitiesForType != null && (mediaFormat == null || capabilitiesForType.isFormatSupported(mediaFormat))) {
                            arrayList.add(new Callable() { // from class: com.linkedin.android.litr.h._$$Lambda$a$ZJppBlPn0tl_lCCSSuo9Qd26ONc
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    MediaCodec m6813a;
                                    m6813a = C16655a.m6813a(mediaCodecInfo);
                                    return m6813a;
                                }
                            });
                        }
                    } catch (IllegalArgumentException e) {
                    }
                }
            }
        } else {
            arrayList.add(new Callable() { // from class: com.linkedin.android.litr.h._$$Lambda$a$eylAUw36t_ifaa_IwQwhh9lWk_c
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    MediaCodec m6807a;
                    m6807a = C16655a.m6807a(z, str);
                    return m6807a;
                }
            });
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m6814a(MediaCodec mediaCodec, MediaFormat mediaFormat, Surface surface, boolean z) throws IllegalStateException {
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, z ? 1 : 0);
    }

    /* renamed from: a */
    private static boolean m6812a(MediaCodecInfo mediaCodecInfo, String str) {
        for (String str2 : mediaCodecInfo.getSupportedTypes()) {
            if (TextUtils.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static int m6805b(String str, int i) {
        int[] iArr;
        if (i == -1 || (iArr = f58611a.get(str)) == null) {
            return -1;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i == iArr[i2]) {
                return i2;
            }
        }
        return -1;
    }
}
