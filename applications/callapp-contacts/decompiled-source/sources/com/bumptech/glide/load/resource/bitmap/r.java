package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.resource.bitmap.v;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r.class */
interface r {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$a.class */
    public static final class a implements r {

        /* renamed from: a  reason: collision with root package name */
        private final k f7683a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.a.b f7684b;

        /* renamed from: c  reason: collision with root package name */
        private final List<ImageHeaderParser> f7685c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(InputStream inputStream, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.a.b bVar) {
            this.f7684b = (com.bumptech.glide.load.engine.a.b) j.a(bVar, "Argument must not be null");
            this.f7685c = (List) j.a(list, "Argument must not be null");
            this.f7683a = new k(inputStream, bVar);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f7683a.a(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final ImageHeaderParser.ImageType a() throws IOException {
            return e.a(this.f7685c, this.f7683a.a(), this.f7684b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final int b() throws IOException {
            return e.b(this.f7685c, this.f7683a.a(), this.f7684b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final void c() {
            this.f7683a.f7412a.a();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$b.class */
    public static final class b implements r {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.load.engine.a.b f7686a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ImageHeaderParser> f7687b;

        /* renamed from: c  reason: collision with root package name */
        private final ParcelFileDescriptorRewinder f7688c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.a.b bVar) {
            this.f7686a = (com.bumptech.glide.load.engine.a.b) j.a(bVar, "Argument must not be null");
            this.f7687b = (List) j.a(list, "Argument must not be null");
            this.f7688c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f7688c.f7381a.rewind().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final ImageHeaderParser.ImageType a() throws IOException {
            List<ImageHeaderParser> list = this.f7687b;
            final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.f7688c;
            final com.bumptech.glide.load.engine.a.b bVar = this.f7686a;
            return e.a(list, new e.b() { // from class: com.bumptech.glide.load.e.3
                @Override // com.bumptech.glide.load.e.b
                public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
                    Throwable th;
                    v vVar = null;
                    try {
                        v vVar2 = new v(new FileInputStream(parcelFileDescriptorRewinder.f7381a.rewind().getFileDescriptor()), bVar);
                        try {
                            ImageHeaderParser.ImageType a2 = imageHeaderParser.a(vVar2);
                            try {
                                vVar2.close();
                            } catch (IOException e) {
                            }
                            parcelFileDescriptorRewinder.f7381a.rewind();
                            return a2;
                        } catch (Throwable th2) {
                            th = th2;
                            vVar = vVar2;
                            if (vVar != null) {
                                try {
                                    vVar.close();
                                } catch (IOException e2) {
                                }
                            }
                            parcelFileDescriptorRewinder.f7381a.rewind();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            });
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final int b() throws IOException {
            List<ImageHeaderParser> list = this.f7687b;
            final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.f7688c;
            final com.bumptech.glide.load.engine.a.b bVar = this.f7686a;
            return e.a(list, new e.a() { // from class: com.bumptech.glide.load.e.5
                @Override // com.bumptech.glide.load.e.a
                public final int a(ImageHeaderParser imageHeaderParser) throws IOException {
                    Throwable th;
                    v vVar = null;
                    try {
                        v vVar2 = new v(new FileInputStream(parcelFileDescriptorRewinder.f7381a.rewind().getFileDescriptor()), bVar);
                        try {
                            int a2 = imageHeaderParser.a(vVar2, bVar);
                            try {
                                vVar2.close();
                            } catch (IOException e) {
                            }
                            parcelFileDescriptorRewinder.f7381a.rewind();
                            return a2;
                        } catch (Throwable th2) {
                            th = th2;
                            vVar = vVar2;
                            if (vVar != null) {
                                try {
                                    vVar.close();
                                } catch (IOException e2) {
                                }
                            }
                            parcelFileDescriptorRewinder.f7381a.rewind();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            });
        }

        @Override // com.bumptech.glide.load.resource.bitmap.r
        public final void c() {
        }
    }

    Bitmap a(BitmapFactory.Options options) throws IOException;

    ImageHeaderParser.ImageType a() throws IOException;

    int b() throws IOException;

    void c();
}
