package com.bumptech.glide.load.resource.d;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/j.class */
public final class j implements com.bumptech.glide.load.j<InputStream, c> {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f7734a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.j<ByteBuffer, c> f7735b;

    /* renamed from: c  reason: collision with root package name */
    private final b f7736c;

    public j(List<ImageHeaderParser> list, com.bumptech.glide.load.j<ByteBuffer, c> jVar, b bVar) {
        this.f7734a = list;
        this.f7735b = jVar;
        this.f7736c = bVar;
    }

    private static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            if (!Log.isLoggable("StreamGifDecoder", 5)) {
                return null;
            }
            Log.w("StreamGifDecoder", "Error reading data from stream", e);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ u<c> a(InputStream inputStream, int i, int i2, h hVar) throws IOException {
        byte[] a2 = a(inputStream);
        if (a2 == null) {
            return null;
        }
        return this.f7735b.a(ByteBuffer.wrap(a2), i, i2, hVar);
    }

    @Override // com.bumptech.glide.load.j
    public final /* synthetic */ boolean a(InputStream inputStream, h hVar) throws IOException {
        return !((Boolean) hVar.a(i.f7733b)).booleanValue() && e.a(this.f7734a, inputStream, this.f7736c) == ImageHeaderParser.ImageType.GIF;
    }
}
