package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.util.l;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaue.class */
public final class zzaue extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaue> CREATOR = new st();
    private ParcelFileDescriptor zzdyn;
    private Parcelable zzdyo = null;
    private boolean zzdyp = true;

    public zzaue(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzdyn = parcelFileDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(OutputStream outputStream, byte[] bArr) {
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
            l.a(dataOutputStream);
        } catch (IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            zzd.zzc("Error transporting the ad response", e);
            dataOutputStream3 = dataOutputStream2;
            zzr.zzkz().a(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream2 == null) {
                l.a(outputStream);
            } else {
                l.a(dataOutputStream2);
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream3 = dataOutputStream;
            if (dataOutputStream3 == null) {
                l.a(outputStream);
            } else {
                l.a(dataOutputStream3);
            }
            throw th;
        }
    }

    private static <T> ParcelFileDescriptor zzh(final byte[] bArr) {
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
            zd.f28573a.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: com.google.android.gms.internal.ads.su

                /* renamed from: a  reason: collision with root package name */
                private final OutputStream f28379a;

                /* renamed from: b  reason: collision with root package name */
                private final byte[] f28380b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28379a = autoCloseOutputStream;
                    this.f28380b = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaue.zza(this.f28379a, this.f28380b);
                }
            });
            return createPipe[0];
        } catch (IOException e3) {
            e = e3;
            zzd.zzc("Error transporting the ad response", e);
            zzr.zzkz().a(e, "LargeParcelTeleporter.pipeData.2");
            l.a(autoCloseOutputStream);
            return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    private final ParcelFileDescriptor zzwu() {
        if (this.zzdyn == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzdyo.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.zzdyn = zzh(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.zzdyn;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzwu();
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzdyn, i, false);
        a.b(parcel, a2);
    }

    /* JADX WARN: Finally extract failed */
    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzdyp) {
            if (this.zzdyn == null) {
                zzd.zzex("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzdyn));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    l.a((Closeable) dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, readInt);
                        obtain.setDataPosition(0);
                        this.zzdyo = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.zzdyp = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzd.zzc("Could not read from parcel file descriptor", e);
                    l.a((Closeable) dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                l.a((Closeable) dataInputStream);
                throw th2;
            }
        }
        return (T) ((SafeParcelable) this.zzdyo);
    }
}
