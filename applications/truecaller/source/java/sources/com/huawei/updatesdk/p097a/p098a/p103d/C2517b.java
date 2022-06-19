package com.huawei.updatesdk.p097a.p098a.p103d;

import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
/* renamed from: com.huawei.updatesdk.a.a.d.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/b.class */
public class C2517b {

    /* renamed from: a */
    private byte[] f8184a;

    /* renamed from: b */
    private int f8185b = 1024;

    /* renamed from: c */
    private int f8186c = 0;

    public C2517b() {
        this.f8184a = null;
        this.f8184a = new byte[1024];
    }

    /* renamed from: a */
    public static String m36841a(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            cArr2[i] = cArr[(b >>> 4) & 15];
            i = i2 + 1;
            cArr2[i2] = cArr[b & 15];
        }
        return String.valueOf(cArr2);
    }

    /* renamed from: a */
    public String m36842a() {
        int i = this.f8186c;
        String str = null;
        if (i <= 0) {
            return null;
        }
        try {
            str = new String(this.f8184a, 0, i, StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
        }
        return str;
    }

    /* renamed from: a */
    public void m36840a(byte[] bArr, int i) {
        if (i <= 0) {
            return;
        }
        byte[] bArr2 = this.f8184a;
        int length = bArr2.length;
        int i2 = this.f8186c;
        if (length - i2 >= i) {
            System.arraycopy(bArr, 0, bArr2, i2, i);
        } else {
            byte[] bArr3 = new byte[(bArr2.length + i) << 1];
            System.arraycopy(bArr2, 0, bArr3, 0, i2);
            System.arraycopy(bArr, 0, bArr3, this.f8186c, i);
            this.f8184a = bArr3;
        }
        this.f8186c += i;
    }
}
