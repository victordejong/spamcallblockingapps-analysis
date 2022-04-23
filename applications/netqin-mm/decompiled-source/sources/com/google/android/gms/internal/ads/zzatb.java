package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzatb;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatb.class */
public final class zzatb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatb> CREATOR = new zzatd();
    @SafeParcelable.Field

    /* renamed from: a */
    public ParcelFileDescriptor f24444a;

    /* renamed from: b */
    public Parcelable f24445b = null;

    /* renamed from: c */
    public boolean f24446c = true;

    @SafeParcelable.Constructor
    public zzatb(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.f24444a = parcelFileDescriptor;
    }

    /* renamed from: a */
    public static <T> ParcelFileDescriptor m16377a(final byte[] bArr) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        IOException e;
        ParcelFileDescriptor[] createPipe;
        try {
            createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
        try {
            zzbbz.f24764a.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: c.d.b.d.g.a.s3

                /* renamed from: a */
                public final OutputStream f15063a;

                /* renamed from: b */
                public final byte[] f15064b;

                {
                    this.f15063a = autoCloseOutputStream;
                    this.f15064b = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzatb.m16378a(this.f15063a, this.f15064b);
                }
            });
            return createPipe[0];
        } catch (IOException e3) {
            e = e3;
            zzbbq.m15855b("Error transporting the ad response", e);
            zzp.m17965g().m16188a(e, "LargeParcelTeleporter.pipeData.2");
            IOUtils.m17075a(autoCloseOutputStream);
            return null;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m16378a(OutputStream outputStream, byte[] bArr) {
        Throwable th;
        IOException e;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        DataOutputStream dataOutputStream3 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(outputStream);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
            IOUtils.m17075a(dataOutputStream);
        } catch (IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            zzbbq.m15855b("Error transporting the ad response", e);
            dataOutputStream3 = dataOutputStream2;
            zzp.m17965g().m16188a(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream2 == null) {
                IOUtils.m17075a(outputStream);
            } else {
                IOUtils.m17075a(dataOutputStream2);
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream3 = dataOutputStream;
            if (dataOutputStream3 == null) {
                IOUtils.m17075a(outputStream);
            } else {
                IOUtils.m17075a(dataOutputStream3);
            }
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends SafeParcelable> T m16379a(Parcelable.Creator<T> creator) {
        if (this.f24446c) {
            if (this.f24444a == null) {
                zzbbq.m15856b("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.f24444a));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    IOUtils.m17075a(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, readInt);
                        obtain.setDataPosition(0);
                        this.f24445b = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.f24446c = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzbbq.m15855b("Could not read from parcel file descriptor", e);
                    IOUtils.m17075a(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.m17075a(dataInputStream);
                throw th2;
            }
        }
        return (T) ((SafeParcelable) this.f24445b);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public final ParcelFileDescriptor m16376f() {
        if (this.f24444a == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f24445b.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.f24444a = m16377a(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.f24444a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        m16376f();
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f24444a, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
