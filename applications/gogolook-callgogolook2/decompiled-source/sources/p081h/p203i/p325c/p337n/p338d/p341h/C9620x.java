package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.h.x */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/x.class */
public class C9620x implements AbstractC9537c0 {
    @NonNull

    /* renamed from: a */
    public final File f21917a;
    @NonNull

    /* renamed from: b */
    public final String f21918b;
    @NonNull

    /* renamed from: c */
    public final String f21919c;

    public C9620x(@NonNull String str, @NonNull String str2, @NonNull File file) {
        this.f21918b = str;
        this.f21919c = str2;
        this.f21917a = file;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9537c0
    @Nullable
    /* renamed from: a */
    public AbstractC9715v.AbstractC9719c.AbstractC9721b mo14693a() {
        AbstractC9715v.AbstractC9719c.AbstractC9721b bVar;
        byte[] c = m14691c();
        if (c != null) {
            AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a c2 = AbstractC9715v.AbstractC9719c.AbstractC9721b.m14578c();
            c2.mo14575a(c);
            c2.mo14576a(this.f21918b);
            bVar = c2.mo14577a();
        } else {
            bVar = null;
        }
        return bVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9537c0
    @NonNull
    /* renamed from: b */
    public String mo14692b() {
        return this.f21919c;
    }

    @Nullable
    /* renamed from: c */
    public final byte[] m14691c() {
        byte[] bArr = new byte[8192];
        try {
            InputStream stream = getStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                if (stream == null) {
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    if (stream == null) {
                        return null;
                    }
                    stream.close();
                    return null;
                }
                while (true) {
                    int read = stream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    gZIPOutputStream.write(bArr, 0, read);
                }
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (stream != null) {
                    stream.close();
                }
                return byteArray;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9537c0
    @Nullable
    public InputStream getStream() {
        if (!this.f21917a.exists() || !this.f21917a.isFile()) {
            return null;
        }
        try {
            return new FileInputStream(this.f21917a);
        } catch (FileNotFoundException e) {
            return null;
        }
    }
}
