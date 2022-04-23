package com.google.android.gms.internal.ads;

import com.explorestack.protobuf.openrtb.LossReason;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwi.class */
public final class dwi {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f27304a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f27305b = {48000, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f27306c = {24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f27307d = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 320, 384, 448, 512, 576, 640};
    private static final int[] f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int a() {
        return 1536;
    }

    public static int a(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f27304a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    public static zzht a(ecy ecyVar, String str, String str2, zzjo zzjoVar) {
        int i = f27305b[(ecyVar.d() & 192) >> 6];
        int d2 = ecyVar.d();
        int i2 = f27307d[(d2 & 56) >> 3];
        int i3 = i2;
        if ((d2 & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzht.zza(str, "audio/ac3", null, -1, -1, i3, i, null, zzjoVar, 0, str2);
    }

    public static zzht b(ecy ecyVar, String str, String str2, zzjo zzjoVar) {
        ecyVar.d(2);
        int i = f27305b[(ecyVar.d() & 192) >> 6];
        int d2 = ecyVar.d();
        int i2 = f27307d[(d2 & 14) >> 1];
        int i3 = i2;
        if ((d2 & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzht.zza(str, "audio/eac3", null, -1, -1, i3, i, null, zzjoVar, 0, str2);
    }
}
