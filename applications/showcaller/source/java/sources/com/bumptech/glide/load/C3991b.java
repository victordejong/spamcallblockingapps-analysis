package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.bumptech.glide.load.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b.class */
public final class C3991b {

    /* renamed from: com.bumptech.glide.load.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$a.class */
    public class C3992a implements AbstractC3998g {

        /* renamed from: a */
        final /* synthetic */ InputStream f12625a;

        C3992a(InputStream inputStream) {
            this.f12625a = inputStream;
        }

        @Override // com.bumptech.glide.load.C3991b.AbstractC3998g
        /* renamed from: a */
        public ImageHeaderParser.ImageType mo23516a(ImageHeaderParser imageHeaderParser) {
            try {
                return imageHeaderParser.mo22906b(this.f12625a);
            } finally {
                this.f12625a.reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$b.class */
    public class C3993b implements AbstractC3998g {

        /* renamed from: a */
        final /* synthetic */ ByteBuffer f12626a;

        C3993b(ByteBuffer byteBuffer) {
            this.f12626a = byteBuffer;
        }

        @Override // com.bumptech.glide.load.C3991b.AbstractC3998g
        /* renamed from: a */
        public ImageHeaderParser.ImageType mo23516a(ImageHeaderParser imageHeaderParser) {
            return imageHeaderParser.mo22907a(this.f12626a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$c.class */
    public class C3994c implements AbstractC3998g {

        /* renamed from: a */
        final /* synthetic */ ParcelFileDescriptorRewinder f12627a;

        /* renamed from: b */
        final /* synthetic */ AbstractC4091b f12628b;

        C3994c(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC4091b abstractC4091b) {
            this.f12627a = parcelFileDescriptorRewinder;
            this.f12628b = abstractC4091b;
        }

        @Override // com.bumptech.glide.load.C3991b.AbstractC3998g
        /* renamed from: a */
        public ImageHeaderParser.ImageType mo23516a(ImageHeaderParser imageHeaderParser) {
            Throwable th;
            RecyclableBufferedInputStream recyclableBufferedInputStream;
            RecyclableBufferedInputStream recyclableBufferedInputStream2 = null;
            try {
                recyclableBufferedInputStream = new RecyclableBufferedInputStream(new FileInputStream(this.f12627a.mo23074a().getFileDescriptor()), this.f12628b);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                ImageHeaderParser.ImageType mo22906b = imageHeaderParser.mo22906b(recyclableBufferedInputStream);
                try {
                    recyclableBufferedInputStream.close();
                } catch (IOException e) {
                }
                this.f12627a.mo23074a();
                return mo22906b;
            } catch (Throwable th3) {
                th = th3;
                recyclableBufferedInputStream2 = recyclableBufferedInputStream;
                if (recyclableBufferedInputStream2 != null) {
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException e2) {
                    }
                }
                this.f12627a.mo23074a();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$d.class */
    public class C3995d implements AbstractC3997f {

        /* renamed from: a */
        final /* synthetic */ InputStream f12629a;

        /* renamed from: b */
        final /* synthetic */ AbstractC4091b f12630b;

        C3995d(InputStream inputStream, AbstractC4091b abstractC4091b) {
            this.f12629a = inputStream;
            this.f12630b = abstractC4091b;
        }

        @Override // com.bumptech.glide.load.C3991b.AbstractC3997f
        /* renamed from: a */
        public int mo23517a(ImageHeaderParser imageHeaderParser) {
            try {
                return imageHeaderParser.mo22905c(this.f12629a, this.f12630b);
            } finally {
                this.f12629a.reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$e.class */
    public class C3996e implements AbstractC3997f {

        /* renamed from: a */
        final /* synthetic */ ParcelFileDescriptorRewinder f12631a;

        /* renamed from: b */
        final /* synthetic */ AbstractC4091b f12632b;

        C3996e(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC4091b abstractC4091b) {
            this.f12631a = parcelFileDescriptorRewinder;
            this.f12632b = abstractC4091b;
        }

        @Override // com.bumptech.glide.load.C3991b.AbstractC3997f
        /* renamed from: a */
        public int mo23517a(ImageHeaderParser imageHeaderParser) {
            Throwable th;
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(this.f12631a.mo23074a().getFileDescriptor()), this.f12632b);
                try {
                    int mo22905c = imageHeaderParser.mo22905c(recyclableBufferedInputStream2, this.f12632b);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException e) {
                    }
                    this.f12631a.mo23074a();
                    return mo22905c;
                } catch (Throwable th2) {
                    th = th2;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    this.f12631a.mo23074a();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.b$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$f.class */
    public interface AbstractC3997f {
        /* renamed from: a */
        int mo23517a(ImageHeaderParser imageHeaderParser);
    }

    /* renamed from: com.bumptech.glide.load.b$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$g.class */
    public interface AbstractC3998g {
        /* renamed from: a */
        ImageHeaderParser.ImageType mo23516a(ImageHeaderParser imageHeaderParser);
    }

    /* renamed from: a */
    public static int m23524a(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC4091b abstractC4091b) {
        return m23522c(list, new C3996e(parcelFileDescriptorRewinder, abstractC4091b));
    }

    /* renamed from: b */
    public static int m23523b(List<ImageHeaderParser> list, InputStream inputStream, AbstractC4091b abstractC4091b) {
        if (inputStream == null) {
            return -1;
        }
        RecyclableBufferedInputStream recyclableBufferedInputStream = inputStream;
        if (!inputStream.markSupported()) {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, abstractC4091b);
        }
        recyclableBufferedInputStream.mark(5242880);
        return m23522c(list, new C3995d(recyclableBufferedInputStream, abstractC4091b));
    }

    /* renamed from: c */
    private static int m23522c(List<ImageHeaderParser> list, AbstractC3997f abstractC3997f) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int mo23517a = abstractC3997f.mo23517a(list.get(i));
            if (mo23517a != -1) {
                return mo23517a;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static ImageHeaderParser.ImageType m23521d(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC4091b abstractC4091b) {
        return m23518g(list, new C3994c(parcelFileDescriptorRewinder, abstractC4091b));
    }

    /* renamed from: e */
    public static ImageHeaderParser.ImageType m23520e(List<ImageHeaderParser> list, InputStream inputStream, AbstractC4091b abstractC4091b) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        RecyclableBufferedInputStream recyclableBufferedInputStream = inputStream;
        if (!inputStream.markSupported()) {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, abstractC4091b);
        }
        recyclableBufferedInputStream.mark(5242880);
        return m23518g(list, new C3992a(recyclableBufferedInputStream));
    }

    /* renamed from: f */
    public static ImageHeaderParser.ImageType m23519f(List<ImageHeaderParser> list, ByteBuffer byteBuffer) {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : m23518g(list, new C3993b(byteBuffer));
    }

    /* renamed from: g */
    private static ImageHeaderParser.ImageType m23518g(List<ImageHeaderParser> list, AbstractC3998g abstractC3998g) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType mo23516a = abstractC3998g.mo23516a(list.get(i));
            if (mo23516a != ImageHeaderParser.ImageType.UNKNOWN) {
                return mo23516a;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
