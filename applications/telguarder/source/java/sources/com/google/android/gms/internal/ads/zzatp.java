package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatp.class */
public final class zzatp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatp> CREATOR = new zzatr();
    private ParcelFileDescriptor zzdxf;
    private Parcelable zzdxg = null;
    private boolean zzdxh = true;

    public zzatp(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzdxf = parcelFileDescriptor;
    }

    public static final /* synthetic */ void zza(OutputStream outputStream, byte[] bArr) {
        Throwable th;
        IOException e;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        DataOutputStream dataOutputStream3 = null;
        try {
            try {
                dataOutputStream2 = new DataOutputStream(outputStream);
            } catch (IOException e2) {
                e = e2;
                dataOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            dataOutputStream2.writeInt(bArr.length);
            dataOutputStream2.write(bArr);
            IOUtils.closeQuietly(dataOutputStream2);
        } catch (IOException e3) {
            dataOutputStream = dataOutputStream2;
            e = e3;
            zzd.zzc("Error transporting the ad response", e);
            dataOutputStream3 = dataOutputStream;
            zzr.zzkv().zza(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream == null) {
                IOUtils.closeQuietly(outputStream);
            } else {
                IOUtils.closeQuietly(dataOutputStream);
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream3 = dataOutputStream2;
            if (dataOutputStream3 == null) {
                IOUtils.closeQuietly(outputStream);
            } else {
                IOUtils.closeQuietly(dataOutputStream3);
            }
            throw th;
        }
    }

    private static <T> ParcelFileDescriptor zzh(byte[] bArr) {
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
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
            zzazp.zzeic.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: com.google.android.gms.internal.ads.zzato
                private final OutputStream zzdxd;
                private final byte[] zzdxe;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdxd = autoCloseOutputStream;
                    this.zzdxe = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzatp.zza(this.zzdxd, this.zzdxe);
                }
            });
            return createPipe[0];
        } catch (IOException e3) {
            e = e3;
            zzd.zzc("Error transporting the ad response", e);
            zzr.zzkv().zza(e, "LargeParcelTeleporter.pipeData.2");
            IOUtils.closeQuietly(autoCloseOutputStream);
            return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    private final ParcelFileDescriptor zzwj() {
        if (this.zzdxf == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzdxg.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.zzdxf = zzh(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.zzdxf;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzwj();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdxf, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX WARN: Finally extract failed */
    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzdxh) {
            if (this.zzdxf == null) {
                zzd.zzev("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzdxf));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    IOUtils.closeQuietly(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, readInt);
                        obtain.setDataPosition(0);
                        this.zzdxg = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.zzdxh = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzd.zzc("Could not read from parcel file descriptor", e);
                    IOUtils.closeQuietly(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.closeQuietly(dataInputStream);
                throw th2;
            }
        }
        return (T) this.zzdxg;
    }
}
