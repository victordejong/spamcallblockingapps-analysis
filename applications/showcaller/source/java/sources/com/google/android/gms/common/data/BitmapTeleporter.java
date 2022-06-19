package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/BitmapTeleporter.class */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new C6091a();

    /* renamed from: d */
    final int f19389d;

    /* renamed from: e */
    ParcelFileDescriptor f19390e;

    /* renamed from: f */
    final int f19391f;

    /* renamed from: g */
    private Bitmap f19392g = null;

    /* renamed from: h */
    private boolean f19393h = false;

    /* renamed from: i */
    private File f19394i;

    public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.f19389d = i;
        this.f19390e = parcelFileDescriptor;
        this.f19391f = i2;
    }

    /* renamed from: k0 */
    private static final void m17215k0(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        if (this.f19390e == null) {
            Bitmap bitmap = (Bitmap) C6155o.m17018j(this.f19392g);
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            File file = this.f19394i;
            if (file == null) {
                throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
            }
            try {
                File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f19390e = ParcelFileDescriptor.open(createTempFile, 268435456);
                    createTempFile.delete();
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        try {
                            dataOutputStream.writeInt(array.length);
                            dataOutputStream.writeInt(bitmap.getWidth());
                            dataOutputStream.writeInt(bitmap.getHeight());
                            dataOutputStream.writeUTF(bitmap.getConfig().toString());
                            dataOutputStream.write(array);
                            m17215k0(dataOutputStream);
                        } catch (IOException e) {
                            throw new IllegalStateException("Could not write into unlinked file", e);
                        }
                    } catch (Throwable th) {
                        m17215k0(dataOutputStream);
                        throw th;
                    }
                } catch (FileNotFoundException e2) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e3) {
                throw new IllegalStateException("Could not create temporary file", e3);
            }
        }
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19389d);
        C6170a.m16931q(parcel, 2, this.f19390e, i | 1, false);
        C6170a.m16937k(parcel, 3, this.f19391f);
        C6170a.m16946b(parcel, m16947a);
        this.f19390e = null;
    }
}
