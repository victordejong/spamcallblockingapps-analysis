package p034c9;

import android.content.Context;
import android.database.sqlite.SQLiteStatement;
import android.support.p012v4.media.C0082b;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: c9.d */
/* loaded from: classes2-dex2jar.jar:c9/d.class */
public class C0857d extends C0856c {

    /* renamed from: b */
    public AbstractC0858e f3150b;

    /* renamed from: c */
    public final AbstractC0863i f3151c;

    public C0857d(AbstractC0858e abstractC0858e, AbstractC2116c abstractC2116c, AbstractC0863i abstractC0863i) {
        super(abstractC2116c);
        this.f3150b = abstractC0858e;
        this.f3151c = abstractC0863i;
    }

    /* renamed from: j */
    public static String m7259j(AbstractC2116c abstractC2116c) {
        StringBuilder m8752j = C0082b.m8752j("temp-");
        m8752j.append(abstractC2116c.mo3893h());
        m8752j.append(".db");
        return m8752j.toString();
    }

    @Override // p034c9.C0856c
    /* renamed from: f */
    public void mo7263f(AbstractC0859f abstractC0859f) {
        AbstractC0858e abstractC0858e = this.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7255a(abstractC0859f);
        }
        super.mo7263f(abstractC0859f);
    }

    @Override // p034c9.C0856c
    /* renamed from: g */
    public void mo7262g(AbstractC0859f abstractC0859f, int i, int i2) {
        AbstractC0858e abstractC0858e = this.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7252d(abstractC0859f, i, i2);
        }
        m7268a(abstractC0859f);
    }

    @Override // p034c9.C0856c
    /* renamed from: h */
    public void mo7261h(AbstractC0859f abstractC0859f) {
        AbstractC0858e abstractC0858e = this.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7253c(abstractC0859f);
        }
        m7268a(abstractC0859f);
    }

    @Override // p034c9.C0856c
    /* renamed from: i */
    public void mo7260i(AbstractC0859f abstractC0859f, int i, int i2) {
        AbstractC0858e abstractC0858e = this.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7254b(abstractC0859f, i, i2);
        }
        m7268a(abstractC0859f);
        m7265d(abstractC0859f);
        m7267b(abstractC0859f, i, i2);
        m7264e(abstractC0859f);
    }

    /* renamed from: k */
    public boolean m7258k(AbstractC0859f abstractC0859f) {
        C0855b c0855b;
        Throwable th;
        boolean z;
        try {
            C0854a c0854a = (C0854a) abstractC0859f;
            SQLiteStatement compileStatement = c0854a.f3147a.compileStatement("PRAGMA quick_check(1)");
            c0855b = new C0855b(compileStatement, c0854a.f3147a);
            try {
                String simpleQueryForString = compileStatement.simpleQueryForString();
                if (!simpleQueryForString.equalsIgnoreCase("ok")) {
                    C2120f.m3889a(C2120f.EnumC2122b.f7696d, "PRAGMA integrity_check on " + this.f3149a.mo3893h() + " returned: " + simpleQueryForString, null);
                    z = false;
                    if (this.f3149a.mo3897d()) {
                        z = m7257l();
                    }
                } else {
                    z = true;
                }
                compileStatement.close();
                return z;
            } catch (Throwable th2) {
                th = th2;
                if (c0855b != null) {
                    c0855b.f3148a.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            c0855b = null;
        }
    }

    /* renamed from: l */
    public boolean m7257l() {
        boolean z;
        C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7696d;
        Context m3910c = FlowManager.m3910c();
        StringBuilder m8752j = C0082b.m8752j("temp-");
        m8752j.append(this.f3149a.mo3893h());
        File databasePath = m3910c.getDatabasePath(m8752j.toString());
        File databasePath2 = FlowManager.m3910c().getDatabasePath(this.f3149a.mo3893h());
        if (databasePath2.delete()) {
            try {
                m7256m(databasePath2, new FileInputStream(databasePath));
            } catch (IOException e) {
                C2120f.m3888b(enumC2122b, e);
                z = false;
            }
        } else {
            C2120f.m3889a(enumC2122b, "Failed to delete DB", null);
        }
        z = true;
        return z;
    }

    /* renamed from: m */
    public final void m7256m(File file, InputStream inputStream) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                fileOutputStream.flush();
                fileOutputStream.close();
                inputStream.close();
                return;
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }
}
