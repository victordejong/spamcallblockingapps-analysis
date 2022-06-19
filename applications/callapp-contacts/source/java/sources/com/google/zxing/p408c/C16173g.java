package com.google.zxing.p408c;

import com.explorestack.iab.vast.VastError;
import okhttp3.internal.http.StatusLine;
/* renamed from: com.google.zxing.c.g */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/g.class */
public final class C16173g extends AbstractC16180n {

    /* renamed from: a */
    static final int[] f57123a;

    /* renamed from: b */
    private static final char[] f57124b = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();

    /* renamed from: c */
    private static final int f57125c;

    /* renamed from: d */
    private final StringBuilder f57126d = new StringBuilder(20);

    /* renamed from: e */
    private final int[] f57127e = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, 404, 402, 394, 360, 356, 354, StatusLine.HTTP_PERM_REDIRECT, 282, 344, 332, 326, VastError.ERROR_CODE_GENERAL_WRAPPER, 278, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        f57123a = iArr;
        f57125c = iArr[47];
    }
}
