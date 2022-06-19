package com.android.mms.transaction;

import android.content.Context;
import android.content.Intent;
import com.klinker.android.send_message.C2704b;
import java.io.OutputStream;
import org.apache.http.entity.ByteArrayEntity;
/* renamed from: com.android.mms.transaction.i */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/i.class */
public class C0696i extends ByteArrayEntity {

    /* renamed from: b */
    private final Context f3352b;

    /* renamed from: c */
    private final byte[] f3353c;

    /* renamed from: d */
    private final long f3354d;

    public C0696i(Context context, long j, byte[] bArr) {
        super(bArr);
        this.f3352b = context;
        this.f3353c = bArr;
        this.f3354d = j;
    }

    /* renamed from: b */
    private void m11383b(int i) {
        if (this.f3354d > 0) {
            Intent intent = new Intent("com.android.mms.PROGRESS_STATUS");
            intent.putExtra("progress", i);
            intent.putExtra("token", this.f3354d);
            C2704b.m2107b(this.f3352b, intent, "com.android.mms.PROGRESS_STATUS");
        }
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                m11383b(-1);
                int i = 0;
                int length = this.f3353c.length;
                while (i < length) {
                    int i2 = length - i;
                    int i3 = i2;
                    if (i2 > 4096) {
                        i3 = 4096;
                    }
                    outputStream.write(this.f3353c, i, i3);
                    outputStream.flush();
                    i += i3;
                    m11383b((i * 100) / length);
                }
                m11383b(100);
                return;
            } catch (Throwable th) {
                m11383b(-2);
                throw th;
            }
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }
}
