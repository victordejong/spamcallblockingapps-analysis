package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.bumptech.glide.load.data.e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder.class */
public final class ParcelFileDescriptorRewinder implements e<ParcelFileDescriptor> {

    /* renamed from: a  reason: collision with root package name */
    public final InternalRewinder f7381a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder.class */
    public static final class InternalRewinder {

        /* renamed from: a  reason: collision with root package name */
        private final ParcelFileDescriptor f7382a;

        InternalRewinder(ParcelFileDescriptor parcelFileDescriptor) {
            this.f7382a = parcelFileDescriptor;
        }

        public final ParcelFileDescriptor rewind() throws IOException {
            try {
                Os.lseek(this.f7382a.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.f7382a;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a.class */
    public static final class a implements e.a<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.data.e.a
        public final /* synthetic */ e<ParcelFileDescriptor> a(ParcelFileDescriptor parcelFileDescriptor) {
            return new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final Class<ParcelFileDescriptor> a() {
            return ParcelFileDescriptor.class;
        }
    }

    public ParcelFileDescriptorRewinder(ParcelFileDescriptor parcelFileDescriptor) {
        this.f7381a = new InternalRewinder(parcelFileDescriptor);
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // com.bumptech.glide.load.data.e
    public final /* synthetic */ ParcelFileDescriptor a() throws IOException {
        return this.f7381a.rewind();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
    }
}
