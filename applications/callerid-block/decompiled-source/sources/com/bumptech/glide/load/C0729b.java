package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.bumptech.glide.load.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b.class */
public final class C0729b {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$f.class */
    public interface AbstractC0730f {
        /* renamed from: a */
        int m11203a(ImageHeaderParser imageHeaderParser);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$g.class */
    public interface AbstractC0731g {
        /* renamed from: a */
        ImageHeaderParser.ImageType m11202a(ImageHeaderParser imageHeaderParser);
    }

    /* renamed from: a */
    public static int m11210a(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC0768b bVar) {
        return m11208c(list, new e(parcelFileDescriptorRewinder, bVar));
    }

    /* renamed from: b */
    public static int m11209b(List<ImageHeaderParser> list, InputStream inputStream, AbstractC0768b bVar) {
        if (inputStream == null) {
            return -1;
        }
        InputStream inputStream2 = inputStream;
        if (!inputStream.markSupported()) {
            inputStream2 = new RecyclableBufferedInputStream(inputStream, bVar);
        }
        inputStream2.mark(5242880);
        return m11208c(list, new d(inputStream2, bVar));
    }

    /* renamed from: c */
    private static int m11208c(List<ImageHeaderParser> list, AbstractC0730f fVar) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int a = fVar.m11203a(list.get(i));
            if (a != -1) {
                return a;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static ImageHeaderParser.ImageType m11207d(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC0768b bVar) {
        return m11204g(list, new c(parcelFileDescriptorRewinder, bVar));
    }

    /* renamed from: e */
    public static ImageHeaderParser.ImageType m11206e(List<ImageHeaderParser> list, InputStream inputStream, AbstractC0768b bVar) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        InputStream inputStream2 = inputStream;
        if (!inputStream.markSupported()) {
            inputStream2 = new RecyclableBufferedInputStream(inputStream, bVar);
        }
        inputStream2.mark(5242880);
        return m11204g(list, new a(inputStream2));
    }

    /* renamed from: f */
    public static ImageHeaderParser.ImageType m11205f(List<ImageHeaderParser> list, ByteBuffer byteBuffer) {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : m11204g(list, new b(byteBuffer));
    }

    /* renamed from: g */
    private static ImageHeaderParser.ImageType m11204g(List<ImageHeaderParser> list, AbstractC0731g gVar) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType a = gVar.m11202a(list.get(i));
            if (a != ImageHeaderParser.ImageType.UNKNOWN) {
                return a;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
