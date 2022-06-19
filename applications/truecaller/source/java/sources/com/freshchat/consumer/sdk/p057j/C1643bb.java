package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.JwtTokenStatus;
/* renamed from: com.freshchat.consumer.sdk.j.bb */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bb.class */
public /* synthetic */ class C1643bb {

    /* renamed from: lj */
    public static final /* synthetic */ int[] f4394lj;

    static {
        JwtTokenStatus.values();
        int[] iArr = new int[5];
        f4394lj = iArr;
        try {
            JwtTokenStatus jwtTokenStatus = JwtTokenStatus.TOKEN_VALID;
            iArr[2] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            int[] iArr2 = f4394lj;
            JwtTokenStatus jwtTokenStatus2 = JwtTokenStatus.TOKEN_NOT_SET;
            iArr2[0] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            int[] iArr3 = f4394lj;
            JwtTokenStatus jwtTokenStatus3 = JwtTokenStatus.TOKEN_NOT_PROCESSED;
            iArr3[1] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            int[] iArr4 = f4394lj;
            JwtTokenStatus jwtTokenStatus4 = JwtTokenStatus.TOKEN_EXPIRED;
            iArr4[4] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            int[] iArr5 = f4394lj;
            JwtTokenStatus jwtTokenStatus5 = JwtTokenStatus.TOKEN_INVALID;
            iArr5[3] = 5;
        } catch (NoSuchFieldError e5) {
        }
    }
}
