package androidx.media2.common;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem.class */
public class FileMediaItem extends MediaItem {

    /* renamed from: e */
    public ParcelFileDescriptor f1512e;

    /* renamed from: f */
    public long f1513f = 0;

    /* renamed from: g */
    public long f1514g = 576460752303423487L;

    /* renamed from: h */
    public Integer f1515h = new Integer(0);

    /* renamed from: i */
    public boolean f1516i;

    /* renamed from: k */
    public void m38240k() {
        synchronized (this.f1515h) {
            try {
                if (this.f1516i) {
                    Log.w("FileMediaItem", "ParcelFileDescriptorClient is already closed.");
                    return;
                }
                Integer valueOf = Integer.valueOf(this.f1515h.intValue() - 1);
                this.f1515h = valueOf;
                if (valueOf.intValue() <= 0) {
                    try {
                        if (this.f1512e != null) {
                            this.f1512e.close();
                        }
                    } catch (IOException e) {
                        Log.e("FileMediaItem", "Failed to close the ParcelFileDescriptor " + this.f1512e, e);
                    }
                    this.f1516i = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: l */
    public long m38239l() {
        return this.f1514g;
    }

    /* renamed from: m */
    public long m38238m() {
        return this.f1513f;
    }

    /* renamed from: n */
    public ParcelFileDescriptor m38237n() {
        return this.f1512e;
    }

    /* renamed from: o */
    public void m38236o() {
        synchronized (this.f1515h) {
            if (this.f1516i) {
                Log.w("FileMediaItem", "ParcelFileDescriptorClient is already closed.");
            } else {
                this.f1515h = Integer.valueOf(this.f1515h.intValue() + 1);
            }
        }
    }

    /* renamed from: p */
    public boolean m38235p() {
        boolean z;
        synchronized (this.f1515h) {
            z = this.f1516i;
        }
        return z;
    }
}
