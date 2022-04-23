package com.tmobile.tmoid.helperlib.sit.eap;

import android.util.Base64;
import com.tmobile.tmoid.helperlib.sit.icc.IccUtil;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/eap/EapAkaRequest.class */
public class EapAkaRequest {

    /* renamed from: a */
    private String f14790a;

    /* renamed from: b */
    private String f14791b;

    /* renamed from: c */
    private String f14792c;

    /* renamed from: d */
    private int f14793d;

    public EapAkaRequest(String str, String str2, String str3, int i) {
        this.f14790a = null;
        this.f14791b = null;
        this.f14792c = null;
        this.f14793d = -1;
        this.f14790a = str;
        this.f14791b = str2;
        this.f14792c = str3;
        this.f14793d = i;
    }

    /* renamed from: d */
    public static EapAkaRequest m4981d(String str) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        String str2;
        String str3;
        String str4;
        Log.m4654d("TMO-Agent", "parseEapAkaPacket: " + str);
        boolean z2 = false;
        if (str == null) {
            Log.m4654d("TMO-Agent", "Invalid EAP packet (null).");
            z = false;
        } else {
            z = true;
        }
        boolean z3 = z;
        String str5 = str;
        if (z) {
            try {
                str5 = IccUtil.m4834c(Base64.decode(str, 0));
                z3 = z;
            } catch (Exception e) {
                Log.m4653d("TMO-Agent", "An unexpected exception occurred while decoding the EAP data.", e);
                z3 = false;
                str5 = str;
            }
        }
        if (z3) {
            int f = IccUtil.m4831f(str5.length());
            i = f;
            if (f < 68) {
                Log.m4654d("TMO-Agent", "Invalid EAP packet size. Minimum data expected: 68 bytes. Actual size: " + f);
                z3 = false;
                i = f;
            }
        } else {
            i = 0;
        }
        if (z3) {
            int b = IccUtil.m4835b(1);
            int h = IccUtil.m4829h(str5.substring(0, b));
            i2 = b;
            if (h != 1) {
                Log.m4654d("TMO-Agent", "Wrong EAP code. Expecting 1, but received " + h);
                z3 = false;
                i2 = b;
            }
        } else {
            i2 = 0;
        }
        if (z3) {
            i4 = IccUtil.m4835b(1) + i2;
            i3 = IccUtil.m4829h(str5.substring(i2, i4));
        } else {
            i3 = -1;
            i4 = i2;
        }
        boolean z4 = z3;
        int i5 = i4;
        if (z3) {
            i5 = IccUtil.m4835b(2) + i4;
            int h2 = IccUtil.m4829h(str5.substring(i4, i5));
            if (h2 != IccUtil.m4831f(str5.length())) {
                Log.m4654d("TMO-Agent", "EAP packet size doesn't match the extracted size. Expecting (actual) " + i + ", but received (extracted) " + h2);
                z4 = false;
            } else {
                z4 = z3;
            }
        }
        boolean z5 = z4;
        int i6 = i5;
        if (z4) {
            int b2 = IccUtil.m4835b(1) + i5;
            int h3 = IccUtil.m4829h(str5.substring(i5, b2));
            if (h3 != 23) {
                Log.m4654d("TMO-Agent", "Wrong EAP packet type. Expecting 23, but received " + h3);
                i6 = b2;
                z5 = false;
            } else {
                i6 = b2;
                z5 = z4;
            }
        }
        z5 = z5;
        int i7 = i6;
        if (z5) {
            int b3 = IccUtil.m4835b(1) + i6;
            int h4 = IccUtil.m4829h(str5.substring(i6, b3));
            if (h4 != 1) {
                Log.m4654d("TMO-Agent", "Wrong EAP packet subtype. Expecting 1, but received " + h4);
                z5 = false;
            }
            i7 = IccUtil.m4835b(2) + b3;
        }
        boolean z6 = z5;
        int i8 = i7;
        if (z5) {
            int b4 = IccUtil.m4835b(1) + i7;
            int h5 = IccUtil.m4829h(str5.substring(i7, b4));
            if (h5 != 1) {
                Log.m4654d("TMO-Agent", "Wrong EAP attribute type. Expecting 1but, received " + h5);
                i8 = b4;
                z6 = false;
            } else {
                i8 = b4;
                z6 = z5;
            }
        }
        z6 = z6;
        int i9 = i8;
        if (z6) {
            int b5 = IccUtil.m4835b(1) + i8;
            int h6 = IccUtil.m4829h(str5.substring(i8, b5));
            if (h6 != 5) {
                Log.m4654d("TMO-Agent", "Wrong AT_RAND attribute length. Expecting 5, but received " + h6);
                z6 = false;
            }
            i9 = IccUtil.m4835b(2) + b5;
        }
        EapAkaRequest eapAkaRequest = null;
        if (z6) {
            int b6 = IccUtil.m4835b(16) + i9;
            str2 = str5.substring(i9, b6);
            Log.m4654d("TMO-Agent", "RAND: " + str2);
            i9 = b6;
        } else {
            str2 = null;
        }
        boolean z7 = z6;
        int i10 = i9;
        if (z6) {
            int b7 = IccUtil.m4835b(1) + i9;
            int h7 = IccUtil.m4829h(str5.substring(i9, b7));
            if (h7 != 2) {
                Log.m4654d("TMO-Agent", "Wrong EAP attribute type. Expecting 2but, received " + h7);
                i10 = b7;
                z7 = false;
            } else {
                i10 = b7;
                z7 = z6;
            }
        }
        z7 = z7;
        int i11 = i10;
        if (z7) {
            int b8 = IccUtil.m4835b(1) + i10;
            int h8 = IccUtil.m4829h(str5.substring(i10, b8));
            if (h8 != 5) {
                Log.m4654d("TMO-Agent", "Wrong AT_RAND attribute length. Expecting 5, but received " + h8);
                z7 = false;
            }
            i11 = IccUtil.m4835b(2) + b8;
        }
        if (z7) {
            int b9 = IccUtil.m4835b(16) + i11;
            str3 = str5.substring(i11, b9);
            Log.m4654d("TMO-Agent", "AUTN: " + str3);
            i11 = b9;
        } else {
            str3 = null;
        }
        z2 = z7;
        int i12 = i11;
        if (z7) {
            int b10 = IccUtil.m4835b(1) + i11;
            int h9 = IccUtil.m4829h(str5.substring(i11, b10));
            if (h9 != 11) {
                Log.m4654d("TMO-Agent", "Wrong EAP attribute type. Expecting 11but, received " + h9);
                i12 = b10;
                z2 = false;
            } else {
                i12 = b10;
                z2 = z7;
            }
        }
        z2 = z2;
        int i13 = i12;
        if (z2) {
            int b11 = IccUtil.m4835b(1) + i12;
            int h10 = IccUtil.m4829h(str5.substring(i12, b11));
            if (h10 != 5) {
                Log.m4654d("TMO-Agent", "Wrong AT_RAND attribute length. Expecting 5, but received " + h10);
            }
            i13 = b11 + IccUtil.m4835b(2);
        }
        if (z2) {
            str4 = str5.substring(i13, IccUtil.m4835b(16) + i13);
            Log.m4654d("TMO-Agent", "MAC: " + str4);
        } else {
            str4 = null;
        }
        if (z2) {
            eapAkaRequest = new EapAkaRequest(str2, str3, str4, i3);
        }
        return eapAkaRequest;
    }

    /* renamed from: a */
    public String m4984a() {
        return IccUtil.m4833d(IccUtil.m4830g(this.f14790a), IccUtil.m4830g(this.f14791b));
    }

    /* renamed from: b */
    public int m4983b() {
        return this.f14793d;
    }

    /* renamed from: c */
    public String m4982c() {
        return this.f14792c;
    }
}
