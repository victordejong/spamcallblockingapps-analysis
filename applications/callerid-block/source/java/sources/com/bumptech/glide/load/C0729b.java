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

    /* renamed from: com.bumptech.glide.load.b$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$f.class */
    public interface AbstractC0730f {
        /* renamed from: a */
        int m11203a(ImageHeaderParser imageHeaderParser);
    }

    /* renamed from: com.bumptech.glide.load.b$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b$g.class */
    public interface AbstractC0731g {
        /* renamed from: a */
        ImageHeaderParser.ImageType m11202a(ImageHeaderParser imageHeaderParser);
    }

    /* renamed from: a */
    public static int m11210a(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC0768b abstractC0768b) {
        return m11208c(list, new e(parcelFileDescriptorRewinder, abstractC0768b));
    }

    /* renamed from: b */
    public static int m11209b(List<ImageHeaderParser> list, InputStream inputStream, AbstractC0768b abstractC0768b) {
        if (inputStream == null) {
            return -1;
        }
        RecyclableBufferedInputStream recyclableBufferedInputStream = inputStream;
        if (!inputStream.markSupported()) {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, abstractC0768b);
        }
        recyclableBufferedInputStream.mark(5242880);
        return m11208c(list, new d(recyclableBufferedInputStream, abstractC0768b));
    }

    /* renamed from: c */
    private static int m11208c(List<ImageHeaderParser> list, AbstractC0730f abstractC0730f) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int m11203a = abstractC0730f.m11203a(list.get(i));
            if (m11203a != -1) {
                return m11203a;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static ImageHeaderParser.ImageType m11207d(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, AbstractC0768b abstractC0768b) {
        return m11204g(list, new c(parcelFileDescriptorRewinder, abstractC0768b));
    }

    /* renamed from: e */
    public static ImageHeaderParser.ImageType m11206e(List<ImageHeaderParser> list, InputStream inputStream, AbstractC0768b abstractC0768b) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        RecyclableBufferedInputStream recyclableBufferedInputStream = inputStream;
        if (!inputStream.markSupported()) {
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, abstractC0768b);
        }
        recyclableBufferedInputStream.mark(5242880);
        return m11204g(list, new a(recyclableBufferedInputStream));
    }

    /* renamed from: f */
    public static ImageHeaderParser.ImageType m11205f(List<ImageHeaderParser> list, ByteBuffer byteBuffer) {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : m11204g(list, new b(byteBuffer));
    }

    /* renamed from: g */
    private static ImageHeaderParser.ImageType m11204g(List<ImageHeaderParser> list, AbstractC0731g abstractC0731g) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType m11202a = abstractC0731g.m11202a(list.get(i));
            if (m11202a != ImageHeaderParser.ImageType.UNKNOWN) {
                return m11202a;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
