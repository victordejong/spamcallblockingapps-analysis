package com.google.android.gms.internal.ads;

import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.VastVideoViewController;
import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxb.class */
public final class dxb {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f27350a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f27351b = {-1, 8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f27352c = {64, 112, 128, 192, 224, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 384, 448, 512, 640, 768, 896, 1024, 1152, Constants.SMALL_SIZE_SCREEN, 1536, Constants.BIG_SIZE_SCREEN, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        return ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) << 5;
    }
}
