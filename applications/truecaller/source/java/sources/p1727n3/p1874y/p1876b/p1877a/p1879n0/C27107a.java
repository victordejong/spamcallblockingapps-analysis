package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import io.agora.rtc.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
/* renamed from: n3.y.b.a.n0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/a.class */
public final class C27107a {

    /* renamed from: a */
    public static final int[] f75773a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f75774b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f75775c = {24000, 22050, 16000};

    /* renamed from: d */
    public static final int[] f75776d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    public static final int[] f75777e = {32, 40, 48, 56, 64, 80, 96, 112, 128, Constants.ERR_ALREADY_IN_RECORDING, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    public static final int[] f75778f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, RtcEngineEvent.EvtType.EVT_JOIN_PUBILSHER_RESPONSE, 1253, 1393};

    /* renamed from: a */
    public static int m852a(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0) {
            int[] iArr = f75774b;
            if (i >= iArr.length || i2 < 0) {
                return -1;
            }
            int[] iArr2 = f75778f;
            if (i3 >= iArr2.length) {
                return -1;
            }
            int i4 = iArr[i];
            if (i4 == 44100) {
                return ((i2 % 2) + iArr2[i3]) * 2;
            }
            int i5 = f75777e[i3];
            return i4 == 32000 ? i5 * 6 : i5 * 4;
        }
        return -1;
    }
}
