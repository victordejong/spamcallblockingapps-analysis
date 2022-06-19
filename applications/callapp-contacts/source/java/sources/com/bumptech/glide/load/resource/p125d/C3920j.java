package com.bumptech.glide.load.resource.p125d;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3691e;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.d.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/j.class */
public final class C3920j implements AbstractC3824j<InputStream, C3909c> {

    /* renamed from: a */
    private final List<ImageHeaderParser> f14346a;

    /* renamed from: b */
    private final AbstractC3824j<ByteBuffer, C3909c> f14347b;

    /* renamed from: c */
    private final AbstractC3707b f14348c;

    public C3920j(List<ImageHeaderParser> list, AbstractC3824j<ByteBuffer, C3909c> abstractC3824j, AbstractC3707b abstractC3707b) {
        this.f14346a = list;
        this.f14347b = abstractC3824j;
        this.f14348c = abstractC3707b;
    }

    /* renamed from: a */
    private static byte[] m37197a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            if (!Log.isLoggable("StreamGifDecoder", 5)) {
                return null;
            }
            Log.w("StreamGifDecoder", "Error reading data from stream", e);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u<C3909c> mo37196a(InputStream inputStream, int i, int i2, C3822h c3822h) throws IOException {
        byte[] m37197a = m37197a(inputStream);
        if (m37197a == null) {
            return null;
        }
        return this.f14347b.mo37196a(ByteBuffer.wrap(m37197a), i, i2, c3822h);
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final /* synthetic */ boolean mo37195a(InputStream inputStream, C3822h c3822h) throws IOException {
        return !((Boolean) c3822h.m37322a(C3919i.f14345b)).booleanValue() && C3691e.m37512a(this.f14346a, inputStream, this.f14348c) == ImageHeaderParser.ImageType.GIF;
    }
}
