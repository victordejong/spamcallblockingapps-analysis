package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbh.class */
public final class zzcbh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcbh> CREATOR = new zzcbi();
    @SafeParcelable.Field
    public ParcelFileDescriptor zza;
    private Parcelable zzb = null;
    private boolean zzc = true;

    @SafeParcelable.Constructor
    public zzcbh(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.zza = parcelFileDescriptor;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelFileDescriptor parcelFileDescriptor;
        IOException e;
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        if (this.zza == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzb.writeToParcel(obtain, 0);
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
                    zzchg.zza.execute(new Runnable(autoCloseOutputStream, marshall) { // from class: com.google.android.gms.internal.ads.zzcbg
                        private final OutputStream zza;
                        private final byte[] zzb;

                        {
                            this.zza = autoCloseOutputStream;
                            this.zzb = marshall;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            Throwable th;
                            DataOutputStream dataOutputStream;
                            IOException e3;
                            OutputStream outputStream = this.zza;
                            byte[] bArr = this.zzb;
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
                                try {
                                    dataOutputStream.close();
                                } catch (IOException e5) {
                                }
                            } catch (IOException e6) {
                                e3 = e6;
                                zzcgt.zzg("Error transporting the ad response", e3);
                                dataOutputStream2 = dataOutputStream;
                                zzt.zzg().zzk(e3, "LargeParcelTeleporter.pipeData.1");
                                if (dataOutputStream != null) {
                                    try {
                                        dataOutputStream.close();
                                    } catch (IOException e7) {
                                    }
                                } else if (outputStream == null) {
                                } else {
                                    try {
                                        outputStream.close();
                                    } catch (IOException e8) {
                                    }
                                }
                            } catch (Throwable th3) {
                                dataOutputStream2 = dataOutputStream;
                                th = th3;
                                if (dataOutputStream2 == null) {
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    throw th;
                                }
                                dataOutputStream2.close();
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = createPipe[0];
                } catch (IOException e3) {
                    e = e3;
                    zzcgt.zzg("Error transporting the ad response", e);
                    zzt.zzg().zzk(e, "LargeParcelTeleporter.pipeData.2");
                    parcelFileDescriptor = null;
                    if (autoCloseOutputStream != null) {
                        try {
                            autoCloseOutputStream.close();
                            parcelFileDescriptor = null;
                        } catch (IOException e4) {
                            parcelFileDescriptor = null;
                        }
                    }
                    this.zza = parcelFileDescriptor;
                    int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
                    SafeParcelWriter.m38847p(parcel, 2, this.zza, i, false);
                    SafeParcelWriter.m38840w(parcel, m38841v);
                }
                this.zza = parcelFileDescriptor;
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        int m38841v2 = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 2, this.zza, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v2);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0094 -> B:12:0x003f). Please submit an issue!!! */
    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzc) {
            ParcelFileDescriptor parcelFileDescriptor = this.zza;
            if (parcelFileDescriptor == null) {
                zzcgt.zzf("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    try {
                        dataInputStream.close();
                    } catch (IOException e) {
                    }
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
                } catch (Throwable th2) {
                    try {
                        dataInputStream.close();
                    } catch (IOException e2) {
                    }
                    throw th2;
                }
            } catch (IOException e3) {
                zzcgt.zzg("Could not read from parcel file descriptor", e3);
                try {
                    dataInputStream.close();
                    return null;
                } catch (IOException e4) {
                    return null;
                }
            }
        }
        return (T) this.zzb;
    }
}
