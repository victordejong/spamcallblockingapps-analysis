package com.linkedin.android.litr.h;

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
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/h/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, int[]> f33751a = new HashMap();

    static {
        f33751a.put("video/avc", Build.VERSION.SDK_INT >= 27 ? new int[]{65536, 1, 4, 2, 524288, 8, 16, 32, 64} : new int[]{1, 4, 2, 8, 16, 32, 64});
        f33751a.put("video/x-vnd.on2.vp8", new int[]{1});
        if (Build.VERSION.SDK_INT >= 21) {
            f33751a.put("video/hevc", Build.VERSION.SDK_INT >= 29 ? new int[]{1, 2, 4096, PropertyFlags.UNSIGNED} : Build.VERSION.SDK_INT >= 24 ? new int[]{1, 2, 4096} : new int[]{1, 2});
        }
        if (Build.VERSION.SDK_INT >= 24) {
            f33751a.put("video/x-vnd.on2.vp9", Build.VERSION.SDK_INT >= 29 ? new int[]{1, 2, 4, 4096, 16384, 8, PropertyFlags.UNSIGNED, 32768} : new int[]{1, 2, 4, 4096, 8, PropertyFlags.UNSIGNED});
        }
        if (Build.VERSION.SDK_INT >= 29) {
            f33751a.put("video/av01", new int[]{1, 2, 4096, PropertyFlags.UNSIGNED});
        }
    }

    private a() {
    }

    public static int a(String str, int i) {
        int i2 = -1;
        if (Build.VERSION.SDK_INT >= 21) {
            int b2 = i == -1 ? Integer.MAX_VALUE : b(str, i);
            MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
            int length = codecInfos.length;
            int i3 = 0;
            int i4 = -1;
            while (true) {
                i2 = i4;
                if (i3 >= length) {
                    break;
                }
                MediaCodecInfo mediaCodecInfo = codecInfos[i3];
                i4 = i4;
                if (a(mediaCodecInfo, str)) {
                    i4 = i4;
                    if (mediaCodecInfo.isEncoder()) {
                        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = mediaCodecInfo.getCapabilitiesForType(str).profileLevels;
                        int length2 = codecProfileLevelArr.length;
                        int i5 = 0;
                        while (true) {
                            i4 = i4;
                            if (i5 < length2) {
                                MediaCodecInfo.CodecProfileLevel codecProfileLevel = codecProfileLevelArr[i5];
                                i4 = i4;
                                if (b(str, codecProfileLevel.profile) > b(str, i4)) {
                                    i4 = i4;
                                    if (b(str, codecProfileLevel.profile) <= b2) {
                                        i4 = codecProfileLevel.profile;
                                    }
                                }
                                i5++;
                            }
                        }
                    }
                }
                i3++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ MediaCodec a(MediaCodecInfo mediaCodecInfo) throws Exception {
        return MediaCodec.createByCodecName(mediaCodecInfo.getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.media.MediaCodec a(android.media.MediaFormat r8, android.view.Surface r9, boolean r10, com.linkedin.android.litr.exception.TrackTranscoderException.a r11, com.linkedin.android.litr.exception.TrackTranscoderException.a r12, com.linkedin.android.litr.exception.TrackTranscoderException.a r13, boolean r14, boolean r15) throws com.linkedin.android.litr.exception.TrackTranscoderException {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.android.litr.h.a.a(android.media.MediaFormat, android.view.Surface, boolean, com.linkedin.android.litr.exception.TrackTranscoderException$a, com.linkedin.android.litr.exception.TrackTranscoderException$a, com.linkedin.android.litr.exception.TrackTranscoderException$a, boolean, boolean):android.media.MediaCodec");
    }

    private static MediaCodec a(MediaFormat mediaFormat, Surface surface, boolean z, List<Callable<MediaCodec>> list) throws IllegalStateException, IOException {
        MediaCodec mediaCodec;
        Exception e;
        Iterator<Callable<MediaCodec>> it2 = list.iterator();
        MediaCodec mediaCodec2 = null;
        IOException iOException = null;
        while (true) {
            mediaCodec = mediaCodec2;
            if (!it2.hasNext()) {
                break;
            }
            try {
                mediaCodec = it2.next().call();
                iOException = iOException;
                mediaCodec2 = mediaCodec;
            } catch (Exception e2) {
                e = e2;
                mediaCodec = mediaCodec2;
            }
            if (mediaCodec != null) {
                try {
                    a(mediaCodec, mediaFormat, surface, z);
                    break;
                } catch (Exception e3) {
                    e = e3;
                    MediaCodec mediaCodec3 = mediaCodec;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                        mediaCodec3 = null;
                    }
                    iOException = iOException;
                    mediaCodec2 = mediaCodec3;
                    if (e instanceof IOException) {
                        iOException = (IOException) e;
                        mediaCodec2 = mediaCodec3;
                    }
                }
            } else {
                continue;
            }
        }
        if (mediaCodec != null) {
            return mediaCodec;
        }
        if (iOException != null) {
            throw iOException;
        }
        throw new IllegalStateException();
    }

    private static MediaCodec a(MediaFormat mediaFormat, Surface surface, boolean z, boolean z2) throws IOException, IllegalStateException {
        MediaCodec mediaCodec;
        String string = mediaFormat.getString("mime");
        if (z2) {
            mediaCodec = null;
            List<Callable<MediaCodec>> a2 = a(z, string, null);
            if (!a2.isEmpty()) {
                mediaCodec = a(mediaFormat, surface, z, a2);
            }
        } else {
            MediaCodec createEncoderByType = z ? MediaCodec.createEncoderByType(string) : MediaCodec.createDecoderByType(string);
            mediaCodec = createEncoderByType;
            if (createEncoderByType != null) {
                a(createEncoderByType, mediaFormat, surface, z);
                mediaCodec = createEncoderByType;
            }
        }
        return mediaCodec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ MediaCodec a(boolean z, String str) throws Exception {
        return z ? MediaCodec.createEncoderByType(str) : MediaCodec.createDecoderByType(str);
    }

    private static List<Callable<MediaCodec>> a(final boolean z, final String str, MediaFormat mediaFormat) {
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
                                    MediaCodec a2;
                                    a2 = a.a(mediaCodecInfo);
                                    return a2;
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
                    MediaCodec a2;
                    a2 = a.a(z, str);
                    return a2;
                }
            });
        }
        return arrayList;
    }

    private static void a(MediaCodec mediaCodec, MediaFormat mediaFormat, Surface surface, boolean z) throws IllegalStateException {
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, z ? 1 : 0);
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str) {
        for (String str2 : mediaCodecInfo.getSupportedTypes()) {
            if (TextUtils.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    private static int b(String str, int i) {
        int[] iArr;
        if (i == -1 || (iArr = f33751a.get(str)) == null) {
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
