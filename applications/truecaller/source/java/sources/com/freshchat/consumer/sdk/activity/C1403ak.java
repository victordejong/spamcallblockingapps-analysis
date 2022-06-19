package com.freshchat.consumer.sdk.activity;

import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.activity.ak */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ak.class */
public /* synthetic */ class C1403ak {

    /* renamed from: pi */
    public static final /* synthetic */ int[] f3916pi;

    static {
        Status.values();
        int[] iArr = new int[6];
        f3916pi = iArr;
        try {
            Status status = Status.INIT_LOADING;
            iArr[0] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            int[] iArr2 = f3916pi;
            Status status2 = Status.NO_INTERNET;
            iArr2[4] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            int[] iArr3 = f3916pi;
            Status status3 = Status.SUCCESS;
            iArr3[2] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            int[] iArr4 = f3916pi;
            Status status4 = Status.COMPLETE;
            iArr4[5] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            int[] iArr5 = f3916pi;
            Status status5 = Status.ERROR;
            iArr5[3] = 5;
        } catch (NoSuchFieldError e5) {
        }
    }
}
