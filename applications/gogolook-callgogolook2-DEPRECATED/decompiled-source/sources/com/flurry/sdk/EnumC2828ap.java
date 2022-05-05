package com.flurry.sdk;
/* renamed from: com.flurry.sdk.ap */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ap.class */
public enum EnumC2828ap {
    NONE,
    QUEUED,
    IN_PROGRESS,
    COMPLETE,
    CANCELLED,
    EVICTED,
    ERROR;

    /* renamed from: a */
    public static EnumC2828ap m33583a(int i) {
        switch (i) {
            case 0:
                return NONE;
            case 1:
                return QUEUED;
            case 2:
                return IN_PROGRESS;
            case 3:
                return COMPLETE;
            case 4:
                return CANCELLED;
            case 5:
                return EVICTED;
            case 6:
                return ERROR;
            default:
                return null;
        }
    }
}
