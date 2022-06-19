package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C3991b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.C4020k;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.p223p.C4382j;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.bitmap.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r.class */
interface AbstractC4313r {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$a.class */
    public static final class C4314a implements AbstractC4313r {

        /* renamed from: a */
        private final C4020k f13284a;

        /* renamed from: b */
        private final AbstractC4091b f13285b;

        /* renamed from: c */
        private final List<ImageHeaderParser> f13286c;

        public C4314a(InputStream inputStream, List<ImageHeaderParser> list, AbstractC4091b abstractC4091b) {
            this.f13285b = (AbstractC4091b) C4382j.m22719d(abstractC4091b);
            this.f13286c = (List) C4382j.m22719d(list);
            this.f13284a = new C4020k(inputStream, abstractC4091b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: a */
        public int mo22894a() {
            return C3991b.m23523b(this.f13286c, this.f13284a.mo23074a(), this.f13285b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: b */
        public Bitmap mo22893b(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(this.f13284a.mo23074a(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: c */
        public void mo22892c() {
            this.f13284a.m23487c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: d */
        public ImageHeaderParser.ImageType mo22891d() {
            return C3991b.m23520e(this.f13286c, this.f13284a.mo23074a(), this.f13285b);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.r$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$b.class */
    public static final class C4315b implements AbstractC4313r {

        /* renamed from: a */
        private final AbstractC4091b f13287a;

        /* renamed from: b */
        private final List<ImageHeaderParser> f13288b;

        /* renamed from: c */
        private final ParcelFileDescriptorRewinder f13289c;

        public C4315b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, AbstractC4091b abstractC4091b) {
            this.f13287a = (AbstractC4091b) C4382j.m22719d(abstractC4091b);
            this.f13288b = (List) C4382j.m22719d(list);
            this.f13289c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: a */
        public int mo22894a() {
            return C3991b.m23524a(this.f13288b, this.f13289c, this.f13287a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: b */
        public Bitmap mo22893b(BitmapFactory.Options options) {
            return BitmapFactory.decodeFileDescriptor(this.f13289c.mo23074a().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: c */
        public void mo22892c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC4313r
        /* renamed from: d */
        public ImageHeaderParser.ImageType mo22891d() {
            return C3991b.m23521d(this.f13288b, this.f13289c, this.f13287a);
        }
    }

    /* renamed from: a */
    int mo22894a();

    /* renamed from: b */
    Bitmap mo22893b(BitmapFactory.Options options);

    /* renamed from: c */
    void mo22892c();

    /* renamed from: d */
    ImageHeaderParser.ImageType mo22891d();
}
