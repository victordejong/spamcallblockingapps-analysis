package com.google.zxing.c;

import com.explorestack.protobuf.openrtb.LossReason;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/e.class */
public final class e extends n {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f32950a = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 133, 388, 196, 168, 162, 138, 42};

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32951b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f32952c;

    /* renamed from: d  reason: collision with root package name */
    private final StringBuilder f32953d;
    private final int[] e;

    public e() {
        this(false);
    }

    public e(boolean z) {
        this(z, false);
    }

    public e(boolean z, boolean z2) {
        this.f32951b = z;
        this.f32952c = z2;
        this.f32953d = new StringBuilder(20);
        this.e = new int[9];
    }
}
