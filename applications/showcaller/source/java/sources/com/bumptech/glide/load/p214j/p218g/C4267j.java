package com.bumptech.glide.load.p214j.p218g;

import android.util.Log;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C3991b;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.bumptech.glide.load.j.g.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/j.class */
public class C4267j implements AbstractC4146f<InputStream, C4255c> {

    /* renamed from: a */
    private final List<ImageHeaderParser> f13193a;

    /* renamed from: b */
    private final AbstractC4146f<ByteBuffer, C4255c> f13194b;

    /* renamed from: c */
    private final AbstractC4091b f13195c;

    public C4267j(List<ImageHeaderParser> list, AbstractC4146f<ByteBuffer, C4255c> abstractC4146f, AbstractC4091b abstractC4091b) {
        this.f13193a = list;
        this.f13194b = abstractC4146f;
        this.f13195c = abstractC4091b;
    }

    /* renamed from: e */
    private static byte[] m22995e(InputStream inputStream) {
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

    /* renamed from: c */
    public AbstractC4083s<C4255c> mo22861b(InputStream inputStream, int i, int i2, C4032e c4032e) {
        byte[] m22995e = m22995e(inputStream);
        if (m22995e == null) {
            return null;
        }
        return this.f13194b.mo22861b(ByteBuffer.wrap(m22995e), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo22862a(InputStream inputStream, C4032e c4032e) {
        return !((Boolean) c4032e.m23457c(C4266i.f13192b)).booleanValue() && C3991b.m23520e(this.f13193a, inputStream, this.f13195c) == ImageHeaderParser.ImageType.GIF;
    }
}
