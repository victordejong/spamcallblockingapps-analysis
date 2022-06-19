package androidx.media2.common;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.p036e.C0833d;
import androidx.media2.common.MediaItem;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem.class */
public class FileMediaItem extends MediaItem {

    /* renamed from: a */
    public final ParcelFileDescriptor f5017a;

    /* renamed from: b */
    public final long f5018b;

    /* renamed from: c */
    public final long f5019c;

    /* renamed from: g */
    private final Object f5020g = new Object();

    /* renamed from: h */
    private int f5021h;

    /* renamed from: i */
    private boolean f5022i;

    /* renamed from: androidx.media2.common.FileMediaItem$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem$a.class */
    public static final class C1344a extends MediaItem.C1346a {

        /* renamed from: a */
        ParcelFileDescriptor f5023a;

        /* renamed from: b */
        long f5024b;

        /* renamed from: c */
        long f5025c;

        public C1344a(ParcelFileDescriptor parcelFileDescriptor) {
            this.f5024b = 0L;
            this.f5025c = 576460752303423487L;
            C0833d.m44410a(parcelFileDescriptor);
            this.f5023a = parcelFileDescriptor;
            this.f5024b = 0L;
            this.f5025c = 576460752303423487L;
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43176a(long j) {
            return (C1344a) super.mo43176a(j);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43175a(MediaMetadata mediaMetadata) {
            return (C1344a) super.mo43175a(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* synthetic */ MediaItem mo43177a() {
            return new FileMediaItem(this);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43173b(long j) {
            return (C1344a) super.mo43173b(j);
        }
    }

    FileMediaItem(C1344a c1344a) {
        super(c1344a);
        this.f5017a = c1344a.f5023a;
        this.f5018b = c1344a.f5024b;
        this.f5019c = c1344a.f5025c;
    }

    /* renamed from: a */
    public final void m43206a() {
        synchronized (this.f5020g) {
            if (this.f5022i) {
                Log.w("FileMediaItem", "ParcelFileDescriptorClient is already closed.");
            } else {
                this.f5021h++;
            }
        }
    }

    /* renamed from: b */
    public final void m43205b() {
        synchronized (this.f5020g) {
            if (this.f5022i) {
                Log.w("FileMediaItem", "ParcelFileDescriptorClient is already closed.");
                return;
            }
            int i = this.f5021h - 1;
            this.f5021h = i;
            if (i <= 0) {
                try {
                    ParcelFileDescriptor parcelFileDescriptor = this.f5017a;
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                } catch (IOException e) {
                    Log.e("FileMediaItem", "Failed to close the ParcelFileDescriptor " + this.f5017a, e);
                }
                this.f5022i = true;
            }
        }
    }

    /* renamed from: c */
    public final boolean m43204c() {
        boolean z;
        synchronized (this.f5020g) {
            z = this.f5022i;
        }
        return z;
    }
}
