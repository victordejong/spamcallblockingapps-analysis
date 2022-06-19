package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import com.truecaller.messaging.data.types.BinaryEntity;
import java.io.IOException;
import java.io.InputStream;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
import u3.c0;
import u3.j0;
import v3.g;
/* renamed from: e.a.a.k.a.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d.class */
public final class C6527d extends j0 {

    /* renamed from: b */
    public final ContentResolver f21576b;

    /* renamed from: c */
    public final BinaryEntity f21577c;

    /* renamed from: d */
    public final String f21578d;

    public C6527d(ContentResolver contentResolver, BinaryEntity binaryEntity, String str) {
        l.e(contentResolver, "resolver");
        l.e(binaryEntity, "entity");
        l.e(str, "mimeType");
        this.f21576b = contentResolver;
        this.f21577c = binaryEntity;
        this.f21578d = str;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: a */
    public long m30808a() {
        char c;
        try {
            InputStream openInputStream = this.f21576b.openInputStream(this.f21577c.f13173i);
            c = 65535;
            if (openInputStream != null) {
                c = openInputStream.available();
            }
        } catch (IOException e) {
            c = 65535;
        }
        return c;
    }

    /* renamed from: b */
    public c0 m30807b() {
        c0.a aVar = c0.f;
        return c0.a.b(this.f21578d);
    }

    /* renamed from: c */
    public void m30806c(g gVar) {
        Throwable th;
        l.e(gVar, "sink");
        InputStream inputStream = null;
        try {
            InputStream openInputStream = this.f21576b.openInputStream(this.f21577c.f13173i);
            if (openInputStream == null) {
                throw new IOException();
            }
            try {
                C19291g.m13574X1(openInputStream, gVar.j2());
                try {
                    openInputStream.close();
                } catch (IOException e) {
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = openInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
