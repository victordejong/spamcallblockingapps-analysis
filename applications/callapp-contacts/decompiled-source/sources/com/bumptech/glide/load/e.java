package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.v;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e.class */
public final class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e$a.class */
    public interface a {
        int a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e$b.class */
    public interface b {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    private e() {
    }

    public static int a(List<ImageHeaderParser> list, a aVar) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int a2 = aVar.a(list.get(i));
            if (a2 != -1) {
                return a2;
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType a(List<ImageHeaderParser> list, b bVar) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType a2 = bVar.a(list.get(i));
            if (a2 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a2;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static ImageHeaderParser.ImageType a(List<ImageHeaderParser> list, InputStream inputStream, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        final InputStream inputStream2 = inputStream;
        if (!inputStream.markSupported()) {
            inputStream2 = new v(inputStream, bVar);
        }
        inputStream2.mark(5242880);
        return a(list, new b() { // from class: com.bumptech.glide.load.e.1
            @Override // com.bumptech.glide.load.e.b
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.a(inputStream2);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static int b(List<ImageHeaderParser> list, InputStream inputStream, final com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        final InputStream inputStream2 = inputStream;
        if (!inputStream.markSupported()) {
            inputStream2 = new v(inputStream, bVar);
        }
        inputStream2.mark(5242880);
        return a(list, new a() { // from class: com.bumptech.glide.load.e.4
            @Override // com.bumptech.glide.load.e.a
            public final int a(ImageHeaderParser imageHeaderParser) throws IOException {
                try {
                    return imageHeaderParser.a(inputStream2, bVar);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }
}
