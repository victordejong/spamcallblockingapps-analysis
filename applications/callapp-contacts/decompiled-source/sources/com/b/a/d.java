package com.b.a;

import com.b.a.a.b;
import com.b.a.a.r;
import com.googlecode.mp4parser.c.f;
import com.googlecode.mp4parser.e;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/b/a/d.class */
public class d extends com.googlecode.mp4parser.d implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static f f7169a = f.a(d.class);

    public d(e eVar) throws IOException {
        this(eVar, new g(new String[0]));
    }

    public d(e eVar, b bVar) throws IOException {
        a(eVar, eVar.a(), bVar);
    }

    public d(String str) throws IOException {
        this(new com.googlecode.mp4parser.f(new File(str)));
    }

    public static byte[] a(String str) {
        byte[] bArr = new byte[4];
        if (str != null) {
            for (int i = 0; i < Math.min(4, str.length()); i++) {
                bArr[i] = (byte) str.charAt(i);
            }
        }
        return bArr;
    }

    public final r a() {
        for (b bVar : b()) {
            if (bVar instanceof r) {
                return (r) bVar;
            }
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.d, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.r.close();
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "model(" + this.r.toString() + ")";
    }
}
