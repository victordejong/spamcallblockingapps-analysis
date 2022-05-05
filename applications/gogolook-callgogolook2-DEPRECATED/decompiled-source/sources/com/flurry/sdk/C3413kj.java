package com.flurry.sdk;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.flurry.sdk.kj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kj.class */
public final class C3413kj<ObjectType> extends C3412ki<ObjectType> {
    public C3413kj(AbstractC3417kl<ObjectType> klVar) {
        super(klVar);
    }

    @Override // com.flurry.sdk.C3412ki, com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final ObjectType mo32526a(InputStream inputStream) throws IOException {
        Throwable th;
        GZIPInputStream gZIPInputStream;
        GZIPInputStream gZIPInputStream2 = null;
        if (inputStream == null) {
            return null;
        }
        try {
            gZIPInputStream = new GZIPInputStream(inputStream);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ObjectType objecttype = (ObjectType) super.mo32526a(gZIPInputStream);
            C3445la.m32465a((Closeable) gZIPInputStream);
            return objecttype;
        } catch (Throwable th3) {
            th = th3;
            gZIPInputStream2 = gZIPInputStream;
            C3445la.m32465a((Closeable) gZIPInputStream2);
            throw th;
        }
    }

    @Override // com.flurry.sdk.C3412ki, com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final void mo32525a(OutputStream outputStream, ObjectType objecttype) throws IOException {
        Throwable th;
        GZIPOutputStream gZIPOutputStream;
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream2 = null;
            try {
                gZIPOutputStream = new GZIPOutputStream(outputStream);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                super.mo32525a(gZIPOutputStream, objecttype);
                C3445la.m32465a(gZIPOutputStream);
            } catch (Throwable th3) {
                th = th3;
                gZIPOutputStream2 = gZIPOutputStream;
                C3445la.m32465a(gZIPOutputStream2);
                throw th;
            }
        }
    }
}
