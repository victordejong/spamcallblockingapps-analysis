package com.bumptech.glide.load.p083c.p088e;

import android.util.Log;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1665e;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.bumptech.glide.load.c.e.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/j.class */
public class C1655j implements AbstractC1782i<InputStream, C1643c> {

    /* renamed from: a */
    private final List<ImageHeaderParser> f5080a;

    /* renamed from: b */
    private final AbstractC1782i<ByteBuffer, C1643c> f5081b;

    /* renamed from: c */
    private final AbstractC1673b f5082c;

    public C1655j(List<ImageHeaderParser> list, AbstractC1782i<ByteBuffer, C1643c> abstractC1782i, AbstractC1673b abstractC1673b) {
        this.f5080a = list;
        this.f5081b = abstractC1782i;
        this.f5082c = abstractC1673b;
    }

    /* renamed from: a */
    private static byte[] m16622a(InputStream inputStream) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            bArr = null;
        }
        return bArr;
    }

    /* renamed from: a */
    public AbstractC1771t<C1643c> mo16319a(InputStream inputStream, int i, int i2, C1781h c1781h) {
        AbstractC1771t<C1643c> mo16319a;
        byte[] m16622a = m16622a(inputStream);
        if (m16622a == null) {
            mo16319a = null;
        } else {
            mo16319a = this.f5081b.mo16319a(ByteBuffer.wrap(m16622a), i, i2, c1781h);
        }
        return mo16319a;
    }

    /* renamed from: a */
    public boolean mo16318a(InputStream inputStream, C1781h c1781h) {
        return !((Boolean) c1781h.m16324a(C1654i.f5079b)).booleanValue() && C1665e.m16611a(this.f5080a, inputStream, this.f5082c) == ImageHeaderParser.ImageType.GIF;
    }
}
