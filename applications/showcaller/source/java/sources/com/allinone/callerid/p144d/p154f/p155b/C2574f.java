package com.allinone.callerid.p144d.p154f.p155b;

import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C3991b;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.p212i.C4208t;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.d.f.b.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/b/f.class */
public class C2574f implements AbstractC4146f<InputStream, C2570b> {

    /* renamed from: a */
    private final AbstractC4091b f8992a;

    /* renamed from: b */
    private final Registry f8993b;

    /* renamed from: c */
    private final C4208t f8994c;

    /* renamed from: d */
    private final File f8995d;

    /* renamed from: e */
    private List<C2570b> f8996e;

    public C2574f(ComponentCallbacks2C3958c componentCallbacks2C3958c, File file) {
        this.f8993b = componentCallbacks2C3958c.m23688j();
        AbstractC4091b m23693e = componentCallbacks2C3958c.m23693e();
        this.f8992a = m23693e;
        this.f8994c = new C4208t(m23693e);
        this.f8995d = file;
    }

    /* renamed from: d */
    private C2570b m27089d() {
        m27087f();
        C2570b remove = this.f8996e.isEmpty() ? null : this.f8996e.remove(0);
        C2570b c2570b = remove;
        if (remove == null) {
            c2570b = new C2570b(this, new File(this.f8995d, String.valueOf(System.currentTimeMillis())));
        }
        File m27092a = c2570b.m27092a();
        if (m27092a.exists() || m27092a.createNewFile()) {
            c2570b.m27091b(false);
            return c2570b;
        }
        throw new IOException("can not create file bridge in " + this.f8995d.getAbsolutePath());
    }

    /* renamed from: f */
    private void m27087f() {
        if (this.f8996e != null) {
            return;
        }
        this.f8996e = new ArrayList();
        File[] listFiles = this.f8995d.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            this.f8996e.add(new C2570b(this, file));
        }
        Log.d("<ytr>", "inflateFileBridgeIfNeeded: " + this.f8996e);
    }

    /* renamed from: c */
    public AbstractC4083s<C2570b> mo22861b(InputStream inputStream, int i, int i2, C4032e c4032e) {
        C2570b m27089d = m27089d();
        boolean mo22950a = this.f8994c.mo22950a(inputStream, m27089d.m27092a(), c4032e);
        Log.d("<ytr>", "decode: " + mo22950a);
        if (mo22950a) {
            return new C2571c(m27089d);
        }
        return null;
    }

    /* renamed from: e */
    public boolean mo22862a(InputStream inputStream, C4032e c4032e) {
        return C3991b.m23520e(this.f8993b.m23711g(), inputStream, this.f8992a) == ImageHeaderParser.ImageType.GIF;
    }

    /* renamed from: g */
    public void m27086g(C2570b c2570b) {
        List<C2570b> list = this.f8996e;
        if (list != null) {
            list.add(c2570b);
        }
    }
}
