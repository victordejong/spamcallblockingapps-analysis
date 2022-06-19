package com.google.android.gms.internal.ads;

import com.explorestack.protobuf.openrtb.LossReason;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwi.class */
public final class dwi {

    /* renamed from: a */
    private static final int[] f47789a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f47790b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f47791c = {24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON};

    /* renamed from: d */
    private static final int[] f47792d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f47793e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    private static final int[] f47794f = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: a */
    public static int m15573a() {
        return 1536;
    }

    /* renamed from: a */
    public static int m15571a(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f47789a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* renamed from: a */
    public static zzht m15572a(ecy ecyVar, String str, String str2, zzjo zzjoVar) {
        int i = f47790b[(ecyVar.m15225d() & 192) >> 6];
        int m15225d = ecyVar.m15225d();
        int i2 = f47792d[(m15225d & 56) >> 3];
        int i3 = i2;
        if ((m15225d & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzht.zza(str, "audio/ac3", null, -1, -1, i3, i, null, zzjoVar, 0, str2);
    }

    /* renamed from: b */
    public static zzht m15570b(ecy ecyVar, String str, String str2, zzjo zzjoVar) {
        ecyVar.m15224d(2);
        int i = f47790b[(ecyVar.m15225d() & 192) >> 6];
        int m15225d = ecyVar.m15225d();
        int i2 = f47792d[(m15225d & 14) >> 1];
        int i3 = i2;
        if ((m15225d & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzht.zza(str, "audio/eac3", null, -1, -1, i3, i, null, zzjoVar, 0, str2);
    }
}
