package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
@SafeParcelable.Class(creator = "LargeParcelTeleporterCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdo.class */
public final class zzcdo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcdo> CREATOR = new zzcdp();
    @SafeParcelable.Field(m4805id = 2)
    public ParcelFileDescriptor zza;
    private Parcelable zzb = null;
    private boolean zzc = true;

    @SafeParcelable.Constructor
    public zzcdo(@SafeParcelable.Param(m4804id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.zza = parcelFileDescriptor;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelFileDescriptor parcelFileDescriptor;
        IOException e;
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        if (this.zza == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzb.writeToParcel(obtain, 0);
                final byte[] marshall = obtain.marshall();
                obtain.recycle();
                try {
                    createPipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
                } catch (IOException e2) {
                    e = e2;
                    autoCloseOutputStream = null;
                }
                try {
                    zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdn
                        @Override // java.lang.Runnable
                        public final void run() {
                            Throwable th;
                            DataOutputStream dataOutputStream;
                            IOException e3;
                            OutputStream outputStream = autoCloseOutputStream;
                            byte[] bArr = marshall;
                            Parcelable.Creator<zzcdo> creator = zzcdo.CREATOR;
                            DataOutputStream dataOutputStream2 = null;
                            try {
                                try {
                                    dataOutputStream = new DataOutputStream(outputStream);
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (IOException e4) {
                                e3 = e4;
                                dataOutputStream = null;
                            }
                            try {
                                dataOutputStream.writeInt(bArr.length);
                                dataOutputStream.write(bArr);
                                IOUtils.closeQuietly(dataOutputStream);
                            } catch (IOException e5) {
                                e3 = e5;
                                zzciz.zzh("Error transporting the ad response", e3);
                                DataOutputStream dataOutputStream3 = dataOutputStream;
                                zzt.zzo().zzs(e3, "LargeParcelTeleporter.pipeData.1");
                                if (dataOutputStream == null) {
                                    IOUtils.closeQuietly(outputStream);
                                } else {
                                    IOUtils.closeQuietly(dataOutputStream);
                                }
                            } catch (Throwable th3) {
                                dataOutputStream2 = dataOutputStream;
                                th = th3;
                                if (dataOutputStream2 == null) {
                                    IOUtils.closeQuietly(outputStream);
                                } else {
                                    IOUtils.closeQuietly(dataOutputStream2);
                                }
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = createPipe[0];
                } catch (IOException e3) {
                    e = e3;
                    zzciz.zzh("Error transporting the ad response", e);
                    zzt.zzo().zzs(e, "LargeParcelTeleporter.pipeData.2");
                    IOUtils.closeQuietly(autoCloseOutputStream);
                    parcelFileDescriptor = null;
                    this.zza = parcelFileDescriptor;
                    int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
                    SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
                    SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
                }
                this.zza = parcelFileDescriptor;
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        int beginObjectHeader2 = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader2);
    }

    /* JADX WARN: Finally extract failed */
    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzc) {
            ParcelFileDescriptor parcelFileDescriptor = this.zza;
            if (parcelFileDescriptor == null) {
                zzciz.zzg("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
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
                        this.zzb = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.zzc = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzciz.zzh("Could not read from parcel file descriptor", e);
                    IOUtils.closeQuietly(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.closeQuietly(dataInputStream);
                throw th2;
            }
        }
        return (T) this.zzb;
    }
}
