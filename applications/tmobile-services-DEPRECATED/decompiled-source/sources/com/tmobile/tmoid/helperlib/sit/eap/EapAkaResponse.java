package com.tmobile.tmoid.helperlib.sit.eap;

import android.util.Base64;
import com.tmobile.tmoid.helperlib.sit.icc.IccUtil;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/eap/EapAkaResponse.class */
public class EapAkaResponse {
    /* renamed from: a */
    public static String m4980a(byte[] bArr, byte[] bArr2, int i) {
        boolean z;
        String str;
        Log.m4654d("TMO-Agent", "createEapAkaResponse identifier: " + i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        boolean z2 = false;
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length != 16) {
            Log.m4654d("TMO-Agent", "Invalid input data.");
            z = false;
        } else {
            z = true;
        }
        byte[] bArr3 = bArr;
        if (z) {
            bArr3 = bArr;
            if (bArr.length % 4 != 0) {
                bArr3 = new byte[bArr.length + (bArr.length % 4)];
                System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            }
        }
        boolean z3 = z;
        if (z) {
            int length = bArr3.length;
            int length2 = bArr2.length;
            try {
                byteArrayOutputStream.write(2);
                byteArrayOutputStream.write(i);
                byteArrayOutputStream.write(EapAkaUtil.m4977c(length + 12 + 4 + length2, 2));
                byteArrayOutputStream.write(23);
                byteArrayOutputStream.write(1);
                byteArrayOutputStream.write(ByteBuffer.allocate(2).array());
                z3 = z;
            } catch (Exception e) {
                Log.m4653d("TMO-Agent", "An unexpected exception occurred while creating the EAP response.", e);
                z3 = false;
            }
        }
        z2 = z3;
        if (z3) {
            try {
                byteArrayOutputStream.write(3);
                byteArrayOutputStream.write(3);
                byteArrayOutputStream.write(EapAkaUtil.m4977c(EapAkaUtil.m4979a(bArr3.length), 2));
                byteArrayOutputStream.write(bArr3);
                z2 = z3;
            } catch (Exception e2) {
                Log.m4653d("TMO-Agent", "An unexpected exception occurred while creating the EAP response.", e2);
                z2 = false;
            }
        }
        if (z2) {
            try {
                byteArrayOutputStream.write(11);
                byteArrayOutputStream.write(5);
                byteArrayOutputStream.write(ByteBuffer.allocate(2).array());
                byteArrayOutputStream.write(bArr2);
            } catch (Exception e3) {
                Log.m4653d("TMO-Agent", "An unexpected exception occurred while creating the EAP response.", e3);
            }
        }
        Log.m4654d("TMO-Agent", "EapAkaResponse (hex): " + IccUtil.m4834c(byteArrayOutputStream.toByteArray()));
        if (z2) {
            Log.m4654d("TMO-Agent", "creating...");
            str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        } else {
            str = null;
        }
        return str;
    }
}
