package com.tmobile.tmoid.helperlib.sit.icc;

import android.util.Base64;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/icc/IccAkaAuthResponse.class */
public class IccAkaAuthResponse {

    /* renamed from: a */
    private int f14854a;

    /* renamed from: b */
    private byte[] f14855b;

    /* renamed from: c */
    private byte[] f14856c;

    /* renamed from: d */
    private byte[] f14857d;

    private IccAkaAuthResponse(byte[] bArr, boolean z) {
        this.f14854a = -1;
        this.f14855b = null;
        this.f14856c = null;
        this.f14857d = null;
        this.f14854a = bArr[0] & 255;
        if (z) {
            int i = bArr[1] & 255;
            Log.m4654d("TMO-Agent", "autsLength: " + i);
            Arrays.copyOfRange(bArr, 2, i + 2);
            return;
        }
        int i2 = bArr[1] & 255;
        int i3 = i2 + 2;
        int i4 = bArr[i3] & 255;
        int i5 = i2 + i4;
        int i6 = i5 + 3;
        int i7 = bArr[i6] & 255;
        Log.m4654d("TMO-Agent", "resLength: " + i2 + " cKLength: " + i4 + " iKLength: " + i7);
        this.f14855b = Arrays.copyOfRange(bArr, 2, i3);
        this.f14856c = Arrays.copyOfRange(bArr, i2 + 3, i6);
        int i8 = i5 + 4;
        this.f14857d = Arrays.copyOfRange(bArr, i8, i7 + i8);
        Log.m4654d("TMO-Agent", "res (hex): " + IccUtil.m4834c(this.f14855b));
        Log.m4654d("TMO-Agent", "ck (hex): " + IccUtil.m4834c(this.f14856c));
        Log.m4654d("TMO-Agent", "ik (hex): " + IccUtil.m4834c(this.f14857d));
    }

    /* renamed from: a */
    public static IccAkaAuthResponse m4847a(String str) {
        IccAkaAuthResponse iccAkaAuthResponse;
        String c = IccUtil.m4834c(Base64.decode(str, 2));
        if (c != null) {
            String substring = c.substring(0, 2);
            IccCommunicator.m4838d(c);
            iccAkaAuthResponse = new IccAkaAuthResponse(IccUtil.m4830g(c), false);
            if (substring.equalsIgnoreCase("DB")) {
                iccAkaAuthResponse = new IccAkaAuthResponse(IccUtil.m4830g(c), false);
            } else if (substring.equalsIgnoreCase("DC")) {
                iccAkaAuthResponse = new IccAkaAuthResponse(IccUtil.m4830g(c), true);
            }
        } else {
            Log.m4654d("TMO-Agent", "IccAkaAuthResponse build failed!");
            iccAkaAuthResponse = null;
        }
        return iccAkaAuthResponse;
    }

    /* renamed from: b */
    public byte[] m4846b() {
        return this.f14856c;
    }

    /* renamed from: c */
    public byte[] m4845c() {
        return this.f14857d;
    }

    /* renamed from: d */
    public byte[] m4844d() {
        return this.f14855b;
    }

    /* renamed from: e */
    public boolean m4843e() {
        return this.f14854a == IccUtil.m4829h("DB");
    }

    /* renamed from: f */
    public boolean m4842f() {
        return this.f14854a == IccUtil.m4829h("DC");
    }
}
