package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C3691e;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.C3686k;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.resource.bitmap.C3893v;
import com.bumptech.glide.p116g.C3643j;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.bitmap.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r.class */
interface AbstractC3887r {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$a.class */
    public static final class C3888a implements AbstractC3887r {

        /* renamed from: a */
        private final C3686k f14268a;

        /* renamed from: b */
        private final AbstractC3707b f14269b;

        /* renamed from: c */
        private final List<ImageHeaderParser> f14270c;

        public C3888a(InputStream inputStream, List<ImageHeaderParser> list, AbstractC3707b abstractC3707b) {
            this.f14269b = (AbstractC3707b) C3643j.m37588a(abstractC3707b, "Argument must not be null");
            this.f14270c = (List) C3643j.m37588a(list, "Argument must not be null");
            this.f14268a = new C3686k(inputStream, abstractC3707b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: a */
        public final Bitmap mo37256a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f14268a.mo37318a(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: a */
        public final ImageHeaderParser.ImageType mo37257a() throws IOException {
            return C3691e.m37512a(this.f14270c, this.f14268a.mo37318a(), this.f14269b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: b */
        public final int mo37255b() throws IOException {
            return C3691e.m37511b(this.f14270c, this.f14268a.mo37318a(), this.f14269b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: c */
        public final void mo37254c() {
            this.f14268a.f13838a.m37252a();
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.r$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$b.class */
    public static final class C3889b implements AbstractC3887r {

        /* renamed from: a */
        private final AbstractC3707b f14271a;

        /* renamed from: b */
        private final List<ImageHeaderParser> f14272b;

        /* renamed from: c */
        private final ParcelFileDescriptorRewinder f14273c;

        public C3889b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, AbstractC3707b abstractC3707b) {
            this.f14271a = (AbstractC3707b) C3643j.m37588a(abstractC3707b, "Argument must not be null");
            this.f14272b = (List) C3643j.m37588a(list, "Argument must not be null");
            this.f14273c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: a */
        public final Bitmap mo37256a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f14273c.f13801a.rewind().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: a */
        public final ImageHeaderParser.ImageType mo37257a() throws IOException {
            List<ImageHeaderParser> list = this.f14272b;
            final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.f14273c;
            final AbstractC3707b abstractC3707b = this.f14271a;
            return C3691e.m37513a(list, new C3691e.AbstractC3698b() { // from class: com.bumptech.glide.load.e.3
                @Override // com.bumptech.glide.load.C3691e.AbstractC3698b
                /* renamed from: a */
                public final ImageHeaderParser.ImageType mo37509a(ImageHeaderParser imageHeaderParser) throws IOException {
                    Throwable th;
                    C3893v c3893v = null;
                    try {
                        C3893v c3893v2 = new C3893v(new FileInputStream(parcelFileDescriptorRewinder.f13801a.rewind().getFileDescriptor()), abstractC3707b);
                        try {
                            ImageHeaderParser.ImageType mo37265a = imageHeaderParser.mo37265a(c3893v2);
                            try {
                                c3893v2.close();
                            } catch (IOException e) {
                            }
                            parcelFileDescriptorRewinder.f13801a.rewind();
                            return mo37265a;
                        } catch (Throwable th2) {
                            th = th2;
                            c3893v = c3893v2;
                            if (c3893v != null) {
                                try {
                                    c3893v.close();
                                } catch (IOException e2) {
                                }
                            }
                            parcelFileDescriptorRewinder.f13801a.rewind();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            });
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: b */
        public final int mo37255b() throws IOException {
            List<ImageHeaderParser> list = this.f14272b;
            final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.f14273c;
            final AbstractC3707b abstractC3707b = this.f14271a;
            return C3691e.m37514a(list, new C3691e.AbstractC3697a() { // from class: com.bumptech.glide.load.e.5
                @Override // com.bumptech.glide.load.C3691e.AbstractC3697a
                /* renamed from: a */
                public final int mo37510a(ImageHeaderParser imageHeaderParser) throws IOException {
                    Throwable th;
                    C3893v c3893v = null;
                    try {
                        C3893v c3893v2 = new C3893v(new FileInputStream(parcelFileDescriptorRewinder.f13801a.rewind().getFileDescriptor()), abstractC3707b);
                        try {
                            int mo37264a = imageHeaderParser.mo37264a(c3893v2, abstractC3707b);
                            try {
                                c3893v2.close();
                            } catch (IOException e) {
                            }
                            parcelFileDescriptorRewinder.f13801a.rewind();
                            return mo37264a;
                        } catch (Throwable th2) {
                            th = th2;
                            c3893v = c3893v2;
                            if (c3893v != null) {
                                try {
                                    c3893v.close();
                                } catch (IOException e2) {
                                }
                            }
                            parcelFileDescriptorRewinder.f13801a.rewind();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            });
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3887r
        /* renamed from: c */
        public final void mo37254c() {
        }
    }

    /* renamed from: a */
    Bitmap mo37256a(BitmapFactory.Options options) throws IOException;

    /* renamed from: a */
    ImageHeaderParser.ImageType mo37257a() throws IOException;

    /* renamed from: b */
    int mo37255b() throws IOException;

    /* renamed from: c */
    void mo37254c();
}
