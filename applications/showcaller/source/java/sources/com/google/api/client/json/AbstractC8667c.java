package com.google.api.client.json;

import com.google.api.client.util.C8709h;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
/* renamed from: com.google.api.client.json.c */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/c.class */
public abstract class AbstractC8667c {
    /* renamed from: h */
    private ByteArrayOutputStream m3027h(Object obj, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        AbstractC8668d mo3001a = mo3001a(byteArrayOutputStream, C8709h.f38508a);
        if (z) {
            mo3001a.mo2988a();
        }
        mo3001a.m3023e(obj);
        mo3001a.flush();
        return byteArrayOutputStream;
    }

    /* renamed from: k */
    private String m3024k(Object obj, boolean z) {
        return m3027h(obj, z).toString("UTF-8");
    }

    /* renamed from: a */
    public abstract AbstractC8668d mo3001a(OutputStream outputStream, Charset charset);

    /* renamed from: b */
    public abstract AbstractC8671f mo3000b(InputStream inputStream);

    /* renamed from: c */
    public abstract AbstractC8671f mo2999c(InputStream inputStream, Charset charset);

    /* renamed from: d */
    public abstract AbstractC8671f mo2998d(Reader reader);

    /* renamed from: e */
    public abstract AbstractC8671f mo2997e(String str);

    /* renamed from: f */
    public final <T> T m3029f(InputStream inputStream, Class<T> cls) {
        return (T) mo3000b(inputStream).m3011Q(cls);
    }

    /* renamed from: g */
    public final <T> T m3028g(Reader reader, Class<T> cls) {
        return (T) mo2998d(reader).m3011Q(cls);
    }

    /* renamed from: i */
    public final String m3026i(Object obj) {
        return m3024k(obj, true);
    }

    /* renamed from: j */
    public final String m3025j(Object obj) {
        return m3024k(obj, false);
    }
}
