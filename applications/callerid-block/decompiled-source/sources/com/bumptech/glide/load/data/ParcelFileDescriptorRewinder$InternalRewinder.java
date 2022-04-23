package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder.class */
final class ParcelFileDescriptorRewinder$InternalRewinder {

    /* renamed from: a */
    private final ParcelFileDescriptor f3511a;

    ParcelFileDescriptorRewinder$InternalRewinder(ParcelFileDescriptor parcelFileDescriptor) {
        this.f3511a = parcelFileDescriptor;
    }

    ParcelFileDescriptor rewind() {
        try {
            Os.lseek(this.f3511a.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
            return this.f3511a;
        } catch (ErrnoException e) {
            throw new IOException(e);
        }
    }
}
