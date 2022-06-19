package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/n$$t$.class */
public final /* synthetic */ class n$$t$ {

    /* renamed from: a */
    public static final /* synthetic */ int[] f9464a;

    static {
        NetworkType.values();
        int[] iArr = new int[4];
        f9464a = iArr;
        try {
            NetworkType networkType = NetworkType.WIFI;
            iArr[0] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            int[] iArr2 = f9464a;
            NetworkType networkType2 = NetworkType.CELLULAR;
            iArr2[1] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            int[] iArr3 = f9464a;
            NetworkType networkType3 = NetworkType.BLUETOOTH;
            iArr3[2] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
