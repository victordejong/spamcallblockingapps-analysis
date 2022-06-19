package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.resource.bitmap.C3893v;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e.class */
public final class C3691e {

    /* renamed from: com.bumptech.glide.load.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e$a.class */
    public interface AbstractC3697a {
        /* renamed from: a */
        int mo37510a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.e$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e$b.class */
    public interface AbstractC3698b {
        /* renamed from: a */
        ImageHeaderParser.ImageType mo37509a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    private C3691e() {
    }

    /* renamed from: a */
    public static int m37514a(List<ImageHeaderParser> list, AbstractC3697a abstractC3697a) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int mo37510a = abstractC3697a.mo37510a(list.get(i));
            if (mo37510a != -1) {
                return mo37510a;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static ImageHeaderParser.ImageType m37513a(List<ImageHeaderParser> list, AbstractC3698b abstractC3698b) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType mo37509a = abstractC3698b.mo37509a(list.get(i));
            if (mo37509a != ImageHeaderParser.ImageType.UNKNOWN) {
                return mo37509a;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    /* renamed from: a */
    public static ImageHeaderParser.ImageType m37512a(List<ImageHeaderParser> list, InputStream inputStream, AbstractC3707b abstractC3707b) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        C3893v c3893v = inputStream;
        if (!inputStream.markSupported()) {
            c3893v = new C3893v(inputStream, abstractC3707b);
        }
        c3893v.mark(5242880);
        final InputStream inputStream2 = c3893v;
        return m37513a(list, new AbstractC3698b() { // from class: com.bumptech.glide.load.e.1
            @Override // com.bumptech.glide.load.C3691e.AbstractC3698b
            /* renamed from: a */
            public final ImageHeaderParser.ImageType mo37509a(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.mo37265a(inputStream2);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    /* renamed from: b */
    public static int m37511b(List<ImageHeaderParser> list, InputStream inputStream, final AbstractC3707b abstractC3707b) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        C3893v c3893v = inputStream;
        if (!inputStream.markSupported()) {
            c3893v = new C3893v(inputStream, abstractC3707b);
        }
        c3893v.mark(5242880);
        final InputStream inputStream2 = c3893v;
        return m37514a(list, new AbstractC3697a() { // from class: com.bumptech.glide.load.e.4
            @Override // com.bumptech.glide.load.C3691e.AbstractC3697a
            /* renamed from: a */
            public final int mo37510a(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.mo37264a(inputStream2, abstractC3707b);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }
}
