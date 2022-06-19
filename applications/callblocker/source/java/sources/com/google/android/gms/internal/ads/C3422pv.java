package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.AbstractC2665c;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.common.util.C2714k;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.gms.internal.ads.pv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pv.class */
public final class C3422pv extends AbstractC2663a {
    public static final Parcelable.Creator<C3422pv> CREATOR = new C3424px();

    /* renamed from: a */
    private ParcelFileDescriptor f17195a;

    /* renamed from: b */
    private Parcelable f17196b = null;

    /* renamed from: c */
    private boolean f17197c = true;

    public C3422pv(ParcelFileDescriptor parcelFileDescriptor) {
        this.f17195a = parcelFileDescriptor;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private final ParcelFileDescriptor m7330a() {
        if (this.f17195a == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f17196b.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.f17195a = m7327a(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.f17195a;
    }

    /* renamed from: a */
    private static <T> ParcelFileDescriptor m7327a(byte[] bArr) {
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        IOException e;
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor[] createPipe;
        try {
            createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
        try {
            C3650yg.f17642a.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: com.google.android.gms.internal.ads.pu

                /* renamed from: a */
                private final OutputStream f17193a;

                /* renamed from: b */
                private final byte[] f17194b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17193a = autoCloseOutputStream;
                    this.f17194b = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3422pv.m7328a(this.f17193a, this.f17194b);
                }
            });
            parcelFileDescriptor = createPipe[0];
        } catch (IOException e3) {
            e = e3;
            C3556uu.m6748c("Error transporting the ad response", e);
            C2341q.m14740g().m7095a(e, "LargeParcelTeleporter.pipeData.2");
            C2714k.m13848a(autoCloseOutputStream);
            parcelFileDescriptor = null;
            return parcelFileDescriptor;
        }
        return parcelFileDescriptor;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m7328a(java.io.OutputStream r4, byte[] r5) {
        /*
            java.io.DataOutputStream r0 = new java.io.DataOutputStream     // Catch: java.io.IOException -> L1d java.lang.Throwable -> L48
            r6 = r0
            r0 = r6
            r1 = r4
            r0.<init>(r1)     // Catch: java.io.IOException -> L1d java.lang.Throwable -> L48
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r5
            int r1 = r1.length     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L60
            r0.writeInt(r1)     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L60
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r5
            r0.write(r1)     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L60
            r0 = r6
            com.google.android.gms.common.util.C2714k.m13848a(r0)
        L1c:
            return
        L1d:
            r8 = move-exception
            r0 = 0
            r5 = r0
        L21:
            r0 = r5
            r7 = r0
            java.lang.String r0 = "Error transporting the ad response"
            r1 = r8
            com.google.android.gms.internal.ads.C3556uu.m6748c(r0, r1)     // Catch: java.lang.Throwable -> L5c
            r0 = r5
            r7 = r0
            com.google.android.gms.internal.ads.ug r0 = com.google.android.gms.ads.internal.C2341q.m14740g()     // Catch: java.lang.Throwable -> L5c
            r1 = r8
            java.lang.String r2 = "LargeParcelTeleporter.pipeData.1"
            r0.m7095a(r1, r2)     // Catch: java.lang.Throwable -> L5c
            r0 = r5
            if (r0 != 0) goto L41
            r0 = r4
            com.google.android.gms.common.util.C2714k.m13848a(r0)
            goto L1c
        L41:
            r0 = r5
            com.google.android.gms.common.util.C2714k.m13848a(r0)
            goto L1c
        L48:
            r5 = move-exception
            r0 = 0
            r7 = r0
        L4b:
            r0 = r7
            if (r0 != 0) goto L55
            r0 = r4
            com.google.android.gms.common.util.C2714k.m13848a(r0)
        L53:
            r0 = r5
            throw r0
        L55:
            r0 = r7
            com.google.android.gms.common.util.C2714k.m13848a(r0)
            goto L53
        L5c:
            r5 = move-exception
            goto L4b
        L60:
            r8 = move-exception
            r0 = r6
            r5 = r0
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3422pv.m7328a(java.io.OutputStream, byte[]):void");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends AbstractC2665c> T m7329a(Parcelable.Creator<T> creator) {
        AbstractC2665c abstractC2665c;
        if (this.f17197c) {
            if (this.f17195a == null) {
                C3556uu.m6749c("File descriptor is empty, returning null.");
                abstractC2665c = null;
            } else {
                DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.f17195a));
                try {
                    try {
                        byte[] bArr = new byte[dataInputStream.readInt()];
                        dataInputStream.readFully(bArr, 0, bArr.length);
                        C2714k.m13848a(dataInputStream);
                        Parcel obtain = Parcel.obtain();
                        try {
                            obtain.unmarshall(bArr, 0, bArr.length);
                            obtain.setDataPosition(0);
                            this.f17196b = creator.createFromParcel(obtain);
                            obtain.recycle();
                            this.f17197c = false;
                        } catch (Throwable th) {
                            obtain.recycle();
                            throw th;
                        }
                    } catch (IOException e) {
                        C3556uu.m6748c("Could not read from parcel file descriptor", e);
                        C2714k.m13848a(dataInputStream);
                        abstractC2665c = null;
                    }
                } catch (Throwable th2) {
                    C2714k.m13848a(dataInputStream);
                    throw th2;
                }
            }
            return (T) abstractC2665c;
        }
        abstractC2665c = (AbstractC2665c) this.f17196b;
        return (T) abstractC2665c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        m7330a();
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13937a(parcel, 2, (Parcelable) this.f17195a, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
