package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.p083c.p084a.C1612s;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.bumptech.glide.load.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e.class */
public final class C1665e {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static ImageHeaderParser.ImageType m16611a(List<ImageHeaderParser> list, InputStream inputStream, AbstractC1673b abstractC1673b) {
        ImageHeaderParser.ImageType imageType;
        if (inputStream != null) {
            C1612s c1612s = inputStream;
            if (!inputStream.markSupported()) {
                c1612s = new C1612s(inputStream, abstractC1673b);
            }
            c1612s.mark(5242880);
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    imageType = ImageHeaderParser.ImageType.UNKNOWN;
                    break;
                }
                try {
                    ImageHeaderParser.ImageType mo16747a = list.get(i).mo16747a(c1612s);
                    if (mo16747a != ImageHeaderParser.ImageType.UNKNOWN) {
                        c1612s.reset();
                        imageType = mo16747a;
                        break;
                    }
                    c1612s.reset();
                    i++;
                } catch (Throwable th) {
                    c1612s.reset();
                    throw th;
                }
            }
        } else {
            imageType = ImageHeaderParser.ImageType.UNKNOWN;
        }
        return imageType;
    }

    /* renamed from: a */
    public static ImageHeaderParser.ImageType m16610a(List<ImageHeaderParser> list, ByteBuffer byteBuffer) {
        ImageHeaderParser.ImageType imageType;
        if (byteBuffer != null) {
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    imageType = ImageHeaderParser.ImageType.UNKNOWN;
                    break;
                }
                ImageHeaderParser.ImageType mo16745a = list.get(i).mo16745a(byteBuffer);
                imageType = mo16745a;
                if (mo16745a != ImageHeaderParser.ImageType.UNKNOWN) {
                    break;
                }
                i++;
            }
        } else {
            imageType = ImageHeaderParser.ImageType.UNKNOWN;
        }
        return imageType;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public static int m16609b(List<ImageHeaderParser> list, InputStream inputStream, AbstractC1673b abstractC1673b) {
        int i;
        if (inputStream != null) {
            C1612s c1612s = inputStream;
            if (!inputStream.markSupported()) {
                c1612s = new C1612s(inputStream, abstractC1673b);
            }
            c1612s.mark(5242880);
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i = -1;
                    break;
                }
                try {
                    int mo16746a = list.get(i2).mo16746a(c1612s, abstractC1673b);
                    if (mo16746a != -1) {
                        c1612s.reset();
                        i = mo16746a;
                        break;
                    }
                    c1612s.reset();
                    i2++;
                } catch (Throwable th) {
                    c1612s.reset();
                    throw th;
                }
            }
        } else {
            i = -1;
        }
        return i;
    }
}
