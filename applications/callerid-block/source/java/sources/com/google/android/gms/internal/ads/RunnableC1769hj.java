package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.common.util.C1615l;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.gms.internal.ads.hj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hj.class */
final /* synthetic */ class RunnableC1769hj implements Runnable {

    /* renamed from: b */
    private final OutputStream f6743b;

    /* renamed from: c */
    private final byte[] f6744c;

    RunnableC1769hj(OutputStream outputStream, byte[] bArr) {
        this.f6743b = outputStream;
        this.f6744c = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        DataOutputStream dataOutputStream;
        IOException e;
        OutputStream outputStream = this.f6743b;
        byte[] bArr = this.f6744c;
        Parcelable.Creator creator = zzawa.CREATOR;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(outputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            dataOutputStream = null;
        }
        try {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
            C1615l.m8222a(dataOutputStream);
        } catch (IOException e3) {
            e = e3;
            C1894po.m6182d("Error transporting the ad response", e);
            DataOutputStream dataOutputStream3 = dataOutputStream;
            C1407r.m8916h().m4590g(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream == null) {
                C1615l.m8222a(outputStream);
            } else {
                C1615l.m8222a(dataOutputStream);
            }
        } catch (Throwable th3) {
            dataOutputStream2 = dataOutputStream;
            th = th3;
            if (dataOutputStream2 == null) {
                C1615l.m8222a(outputStream);
            } else {
                C1615l.m8222a(dataOutputStream2);
            }
            throw th;
        }
    }
}
