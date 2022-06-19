package com.google.api.client.json.p289i;

import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.AbstractC8668d;
import com.google.api.client.json.AbstractC8671f;
import com.google.api.client.util.C8709h;
import com.google.gson.stream.C9331a;
import com.google.gson.stream.C9333b;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
/* renamed from: com.google.api.client.json.i.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/i/a.class */
public class C8676a extends AbstractC8667c {
    @Override // com.google.api.client.json.AbstractC8667c
    /* renamed from: a */
    public AbstractC8668d mo3001a(OutputStream outputStream, Charset charset) {
        return m2996l(new OutputStreamWriter(outputStream, charset));
    }

    @Override // com.google.api.client.json.AbstractC8667c
    /* renamed from: b */
    public AbstractC8671f mo3000b(InputStream inputStream) {
        return mo2998d(new InputStreamReader(inputStream, C8709h.f38508a));
    }

    @Override // com.google.api.client.json.AbstractC8667c
    /* renamed from: c */
    public AbstractC8671f mo2999c(InputStream inputStream, Charset charset) {
        return charset == null ? mo3000b(inputStream) : mo2998d(new InputStreamReader(inputStream, charset));
    }

    @Override // com.google.api.client.json.AbstractC8667c
    /* renamed from: d */
    public AbstractC8671f mo2998d(Reader reader) {
        return new C8678c(this, new C9331a(reader));
    }

    @Override // com.google.api.client.json.AbstractC8667c
    /* renamed from: e */
    public AbstractC8671f mo2997e(String str) {
        return mo2998d(new StringReader(str));
    }

    /* renamed from: l */
    public AbstractC8668d m2996l(Writer writer) {
        return new C8677b(this, new C9333b(writer));
    }
}
