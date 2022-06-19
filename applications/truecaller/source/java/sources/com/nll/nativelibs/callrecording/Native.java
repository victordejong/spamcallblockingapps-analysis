package com.nll.nativelibs.callrecording;

import android.content.Context;
import android.media.AudioRecord;
/* loaded from: classes3-dex2jar.jar:com/nll/nativelibs/callrecording/Native.class */
public class Native {
    public static int AUDIO_SOURCE_UP_LINK = 2;
    public static int AUDIO_SOURCE_DOWN_LINK = 3;
    public static int BLUETOOTH_NOISE_REDUCTION_ON = 1;
    public static int BLUETOOTH_NOISE_REDUCTION_OFF = 0;
    public static int FIX_ANDROID_7_1_OFF = 0;
    public static int FIX_ANDROID_7_1_ON = 1;

    static {
        System.loadLibrary("acr");
    }

    public static native int checkPackageAndCert(Context context);

    public static native int fixAndroid71(int i);

    public static native long getExpiry(long j, String str);

    public static native Object init(Context context, int i, int i2, int i3, int i4, int i5, long j, String str);

    public static native int setBluetoothNoiseReduction(int i);

    public static native int setSource(int i);

    public static native int start3(Context context, AudioRecord audioRecord, long j, String str);

    public static native int start7(Context context, AudioRecord audioRecord, long j, String str);

    public static native int stop3();

    public static native int stop7();
}
