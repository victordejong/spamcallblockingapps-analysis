package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/h.class */
public final class h implements e<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final r f3608a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3609b;
    private a c;

    public h(c cVar, a aVar) {
        this(new r(), cVar, aVar);
    }

    private h(r rVar, c cVar, a aVar) {
        this.f3608a = rVar;
        this.f3609b = cVar;
        this.c = aVar;
    }

    @Override // com.bumptech.glide.load.e
    public final /* synthetic */ k<Bitmap> a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2) {
        ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
        r rVar = this.f3608a;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(parcelFileDescriptor2.getFileDescriptor());
        Bitmap frameAtTime = rVar.f3626a >= 0 ? mediaMetadataRetriever.getFrameAtTime(rVar.f3626a) : mediaMetadataRetriever.getFrameAtTime();
        mediaMetadataRetriever.release();
        parcelFileDescriptor2.close();
        return c.a(frameAtTime, this.f3609b);
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
    }
}
