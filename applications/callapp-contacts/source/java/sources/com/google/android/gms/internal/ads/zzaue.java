package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.C12108l;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaue.class */
public final class zzaue extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaue> CREATOR = new C12916st();
    private ParcelFileDescriptor zzdyn;
    private Parcelable zzdyo = null;
    private boolean zzdyp = true;

    public zzaue(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzdyn = parcelFileDescriptor;
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
            C12108l.m19025a(dataOutputStream2);
        } catch (IOException e3) {
            dataOutputStream = dataOutputStream2;
            e = e3;
            zzd.zzc("Error transporting the ad response", e);
            dataOutputStream3 = dataOutputStream;
            zzr.zzkz().m13979a(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream == null) {
                C12108l.m19025a(outputStream);
            } else {
                C12108l.m19025a(dataOutputStream);
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream3 = dataOutputStream2;
            if (dataOutputStream3 == null) {
                C12108l.m19025a(outputStream);
            } else {
                C12108l.m19025a(dataOutputStream3);
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
            C13091zd.f50118a.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: com.google.android.gms.internal.ads.su

                /* renamed from: a */
                private final OutputStream f49790a;

                /* renamed from: b */
                private final byte[] f49791b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49790a = autoCloseOutputStream;
                    this.f49791b = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaue.zza(this.f49790a, this.f49791b);
                }
            });
            return createPipe[0];
        } catch (IOException e3) {
            e = e3;
            zzd.zzc("Error transporting the ad response", e);
            zzr.zzkz().m13979a(e, "LargeParcelTeleporter.pipeData.2");
            C12108l.m19025a(autoCloseOutputStream);
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 2, this.zzdyn, i, false);
        C12050a.m19095b(parcel, m19116a);
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
                    C12108l.m19025a((Closeable) dataInputStream);
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
                    C12108l.m19025a((Closeable) dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                C12108l.m19025a((Closeable) dataInputStream);
                throw th2;
            }
        }
        return (T) this.zzdyo;
    }
}
