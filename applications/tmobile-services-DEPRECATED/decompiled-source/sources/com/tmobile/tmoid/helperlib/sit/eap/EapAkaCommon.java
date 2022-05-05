package com.tmobile.tmoid.helperlib.sit.eap;

import android.util.Base64;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/eap/EapAkaCommon.class */
public class EapAkaCommon {

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/eap/EapAkaCommon$EapAkaCommonProxy.class */
    public interface EapAkaCommonProxy {
    }

    static {
        try {
            System.loadLibrary("eapakajni");
        } catch (UnsatisfiedLinkError e) {
            Log.m4653d("TMO-Helperlib", "Cannot load libeapakajni library! \n", e);
        }
    }

    /* renamed from: a */
    public static byte[] m4988a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return eapAkaDeriveMk(bArr, bArr.length, bArr2, bArr3);
    }

    /* renamed from: b */
    public static byte[] m4987b(byte[] bArr, byte[] bArr2, int i) {
        byte[] decode = Base64.decode(EapAkaResponse.m4980a(bArr2, new byte[16], i), 0);
        return eapAkaAddMac(bArr, decode, decode.length);
    }

    /* renamed from: c */
    public static void m4986c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        eapAkaDeriveKeys(bArr, bArr2, bArr3, bArr4, bArr5);
    }

    /* renamed from: d */
    public static boolean m4985d(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        boolean z = true;
        if (eapAkaVerifyMac(bArr, bArr2, bArr2.length, bArr3) != 1) {
            z = false;
        }
        return z;
    }

    private static native byte[] eapAkaAddMac(byte[] bArr, byte[] bArr2, int i);

    private static native int eapAkaDeriveKeys(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5);

    private static native byte[] eapAkaDeriveMk(byte[] bArr, int i, byte[] bArr2, byte[] bArr3);

    private static native int eapAkaVerifyMac(byte[] bArr, byte[] bArr2, int i, byte[] bArr3);
}
