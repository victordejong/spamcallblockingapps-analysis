package androidx.media2.common;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.e.d;
import androidx.media2.common.MediaItem;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem.class */
public class FileMediaItem extends MediaItem {

    /* renamed from: a  reason: collision with root package name */
    public final ParcelFileDescriptor f2730a;

    /* renamed from: b  reason: collision with root package name */
    public final long f2731b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2732c;
    private final Object g = new Object();
    private int h;
    private boolean i;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem$a.class */
    public static final class a extends MediaItem.a {

        /* renamed from: a  reason: collision with root package name */
        ParcelFileDescriptor f2733a;

        /* renamed from: b  reason: collision with root package name */
        long f2734b;

        /* renamed from: c  reason: collision with root package name */
        long f2735c;

        public a(ParcelFileDescriptor parcelFileDescriptor) {
            this.f2734b = 0L;
            this.f2735c = 576460752303423487L;
            d.a(parcelFileDescriptor);
            this.f2733a = parcelFileDescriptor;
            this.f2734b = 0L;
            this.f2735c = 576460752303423487L;
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a a(long j) {
            return (a) super.a(j);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a a(MediaMetadata mediaMetadata) {
            return (a) super.a(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* synthetic */ MediaItem a() {
            return new FileMediaItem(this);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a b(long j) {
            return (a) super.b(j);
        }
    }

    FileMediaItem(a aVar) {
        super(aVar);
        this.f2730a = aVar.f2733a;
        this.f2731b = aVar.f2734b;
        this.f2732c = aVar.f2735c;
    }

    public final void a() {
        synchronized (this.g) {
            if (this.i) {
                Log.w("FileMediaItem", "ParcelFileDescriptorClient is already closed.");
            } else {
                this.h++;
            }
        }
    }

    public final void b() {
        synchronized (this.g) {
            if (this.i) {
                Log.w("FileMediaItem", "ParcelFileDescriptorClient is already closed.");
                return;
            }
            int i = this.h - 1;
            this.h = i;
            if (i <= 0) {
                try {
                    ParcelFileDescriptor parcelFileDescriptor = this.f2730a;
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                } catch (IOException e) {
                    Log.e("FileMediaItem", "Failed to close the ParcelFileDescriptor " + this.f2730a, e);
                }
                this.i = true;
            }
        }
    }

    public final boolean c() {
        boolean z;
        synchronized (this.g) {
            z = this.i;
        }
        return z;
    }
}
