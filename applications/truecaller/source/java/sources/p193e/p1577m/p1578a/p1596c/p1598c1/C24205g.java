package p193e.p1577m.p1578a.p1596c.p1598c1;

import io.agora.rtc.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
/* renamed from: e.m.a.c.c1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/g.class */
public final class C24205g {

    /* renamed from: a */
    public static final int[] f67001a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f67002b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f67003c = {24000, 22050, 16000};

    /* renamed from: d */
    public static final int[] f67004d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    public static final int[] f67005e = {32, 40, 48, 56, 64, 80, 96, 112, 128, Constants.ERR_ALREADY_IN_RECORDING, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    public static final int[] f67006f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, RtcEngineEvent.EvtType.EVT_JOIN_PUBILSHER_RESPONSE, 1253, 1393};

    /* renamed from: a */
    public static int m5455a(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0) {
            int[] iArr = f67002b;
            if (i >= iArr.length || i2 < 0) {
                return -1;
            }
            int[] iArr2 = f67006f;
            if (i3 >= iArr2.length) {
                return -1;
            }
            int i4 = iArr[i];
            if (i4 == 44100) {
                return ((i2 % 2) + iArr2[i3]) * 2;
            }
            int i5 = f67005e[i3];
            return i4 == 32000 ? i5 * 6 : i5 * 4;
        }
        return -1;
    }
}
