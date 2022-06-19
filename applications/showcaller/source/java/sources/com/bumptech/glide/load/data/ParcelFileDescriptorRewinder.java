package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.bumptech.glide.load.data.AbstractC4009e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder.class */
public final class ParcelFileDescriptorRewinder implements AbstractC4009e<ParcelFileDescriptor> {

    /* renamed from: a */
    private final InternalRewinder f12639a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder.class */
    public static final class InternalRewinder {

        /* renamed from: a */
        private final ParcelFileDescriptor f12640a;

        InternalRewinder(ParcelFileDescriptor parcelFileDescriptor) {
            this.f12640a = parcelFileDescriptor;
        }

        ParcelFileDescriptor rewind() {
            try {
                Os.lseek(this.f12640a.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.f12640a;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.data.ParcelFileDescriptorRewinder$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a.class */
    public static final class C4003a implements AbstractC4009e.AbstractC4010a<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.data.AbstractC4009e.AbstractC4010a
        /* renamed from: a */
        public Class<ParcelFileDescriptor> mo23071a() {
            return ParcelFileDescriptor.class;
        }

        /* renamed from: c */
        public AbstractC4009e<ParcelFileDescriptor> mo23070b(ParcelFileDescriptor parcelFileDescriptor) {
            return new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }
    }

    public ParcelFileDescriptorRewinder(ParcelFileDescriptor parcelFileDescriptor) {
        this.f12639a = new InternalRewinder(parcelFileDescriptor);
    }

    /* renamed from: c */
    public static boolean m23508c() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4009e
    /* renamed from: b */
    public void mo23073b() {
    }

    /* renamed from: d */
    public ParcelFileDescriptor mo23074a() {
        return this.f12639a.rewind();
    }
}
