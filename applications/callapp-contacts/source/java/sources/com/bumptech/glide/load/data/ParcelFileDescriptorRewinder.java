package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.bumptech.glide.load.data.AbstractC3675e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder.class */
public final class ParcelFileDescriptorRewinder implements AbstractC3675e<ParcelFileDescriptor> {

    /* renamed from: a */
    public final InternalRewinder f13801a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder.class */
    public static final class InternalRewinder {

        /* renamed from: a */
        private final ParcelFileDescriptor f13802a;

        InternalRewinder(ParcelFileDescriptor parcelFileDescriptor) {
            this.f13802a = parcelFileDescriptor;
        }

        public final ParcelFileDescriptor rewind() throws IOException {
            try {
                Os.lseek(this.f13802a.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.f13802a;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.data.ParcelFileDescriptorRewinder$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a.class */
    public static final class C3662a implements AbstractC3675e.AbstractC3676a<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final /* synthetic */ AbstractC3675e<ParcelFileDescriptor> mo37315a(ParcelFileDescriptor parcelFileDescriptor) {
            return new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final Class<ParcelFileDescriptor> mo37316a() {
            return ParcelFileDescriptor.class;
        }
    }

    public ParcelFileDescriptorRewinder(ParcelFileDescriptor parcelFileDescriptor) {
        this.f13801a = new InternalRewinder(parcelFileDescriptor);
    }

    /* renamed from: c */
    public static boolean m37537c() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3675e
    /* renamed from: a */
    public final /* synthetic */ ParcelFileDescriptor mo37318a() throws IOException {
        return this.f13801a.rewind();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3675e
    /* renamed from: b */
    public final void mo37317b() {
    }
}
