package com.p102b.p103a;

import com.googlecode.mp4parser.AbstractC16294e;
import com.googlecode.mp4parser.C16292d;
import com.googlecode.mp4parser.C16295f;
import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.C3501r;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
/* renamed from: com.b.a.d */
/* loaded from: classes-dex2jar.jar:com/b/a/d.class */
public class C3514d extends C16292d implements Closeable {

    /* renamed from: a */
    private static AbstractC16287f f13382a = AbstractC16287f.m7514a(C3514d.class);

    public C3514d(AbstractC16294e abstractC16294e) throws IOException {
        this(abstractC16294e, new C3517g(new String[0]));
    }

    public C3514d(AbstractC16294e abstractC16294e, AbstractC3512b abstractC3512b) throws IOException {
        mo7495a(abstractC16294e, abstractC16294e.mo7489a(), abstractC3512b);
    }

    public C3514d(String str) throws IOException {
        this(new C16295f(new File(str)));
    }

    /* renamed from: a */
    public static byte[] m37853a(String str) {
        byte[] bArr = new byte[4];
        if (str != null) {
            for (int i = 0; i < Math.min(4, str.length()); i++) {
                bArr[i] = (byte) str.charAt(i);
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public final C3501r m37854a() {
        for (AbstractC3476b abstractC3476b : mo7491b()) {
            if (abstractC3476b instanceof C3501r) {
                return (C3501r) abstractC3476b;
            }
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.C16292d, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f57555r.close();
    }

    @Override // com.googlecode.mp4parser.C16292d
    public String toString() {
        return "model(" + this.f57555r.toString() + ")";
    }
}
