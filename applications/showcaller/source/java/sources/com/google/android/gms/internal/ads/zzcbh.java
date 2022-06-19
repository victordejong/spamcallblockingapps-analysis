package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.C6233k;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbh.class */
public final class zzcbh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcbh> CREATOR = new xc0();

    /* renamed from: d */
    ParcelFileDescriptor f33823d;

    /* renamed from: e */
    private Parcelable f33824e = null;

    /* renamed from: f */
    private boolean f33825f = true;

    public zzcbh(ParcelFileDescriptor parcelFileDescriptor) {
        this.f33823d = parcelFileDescriptor;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k0 */
    public final <T extends SafeParcelable> T m8069k0(Parcelable.Creator<T> creator) {
        if (this.f33825f) {
            ParcelFileDescriptor parcelFileDescriptor = this.f33823d;
            if (parcelFileDescriptor == null) {
                ei0.m15467c("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    C6233k.m16790a(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, readInt);
                        obtain.setDataPosition(0);
                        this.f33824e = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.f33825f = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    ei0.m15466d("Could not read from parcel file descriptor", e);
                    C6233k.m16790a(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                C6233k.m16790a(dataInputStream);
                throw th2;
            }
        }
        return (T) this.f33824e;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelFileDescriptor parcelFileDescriptor;
        IOException e;
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        if (this.f33823d == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f33824e.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                try {
                    createPipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
                } catch (IOException e2) {
                    e = e2;
                    autoCloseOutputStream = null;
                }
                try {
                    qi0.f28495a.execute(new Runnable(autoCloseOutputStream, marshall) { // from class: com.google.android.gms.internal.ads.wc0

                        /* renamed from: d */
                        private final OutputStream f31501d;

                        /* renamed from: e */
                        private final byte[] f31502e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f31501d = autoCloseOutputStream;
                            this.f31502e = marshall;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            Throwable th;
                            DataOutputStream dataOutputStream;
                            IOException e3;
                            OutputStream outputStream = this.f31501d;
                            byte[] bArr = this.f31502e;
                            Parcelable.Creator<zzcbh> creator = zzcbh.CREATOR;
                            DataOutputStream dataOutputStream2 = null;
                            try {
                                try {
                                    dataOutputStream = new DataOutputStream(outputStream);
                                } catch (IOException e4) {
                                    e3 = e4;
                                    dataOutputStream = null;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            try {
                                dataOutputStream.writeInt(bArr.length);
                                dataOutputStream.write(bArr);
                                C6233k.m16790a(dataOutputStream);
                            } catch (IOException e5) {
                                e3 = e5;
                                ei0.m15466d("Error transporting the ad response", e3);
                                dataOutputStream2 = dataOutputStream;
                                C5667s.m18156h().m12235k(e3, "LargeParcelTeleporter.pipeData.1");
                                if (dataOutputStream == null) {
                                    C6233k.m16790a(outputStream);
                                } else {
                                    C6233k.m16790a(dataOutputStream);
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                dataOutputStream2 = dataOutputStream;
                                if (dataOutputStream2 == null) {
                                    C6233k.m16790a(outputStream);
                                } else {
                                    C6233k.m16790a(dataOutputStream2);
                                }
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = createPipe[0];
                } catch (IOException e3) {
                    e = e3;
                    ei0.m15466d("Error transporting the ad response", e);
                    C5667s.m18156h().m12235k(e, "LargeParcelTeleporter.pipeData.2");
                    C6233k.m16790a(autoCloseOutputStream);
                    parcelFileDescriptor = null;
                    this.f33823d = parcelFileDescriptor;
                    int m16947a = C6170a.m16947a(parcel);
                    C6170a.m16931q(parcel, 2, this.f33823d, i, false);
                    C6170a.m16946b(parcel, m16947a);
                }
                this.f33823d = parcelFileDescriptor;
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        int m16947a2 = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 2, this.f33823d, i, false);
        C6170a.m16946b(parcel, m16947a2);
    }
}
