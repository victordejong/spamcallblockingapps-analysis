package p193e.p1512i.p1516b.p1537z1;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1531s2.C23080f;
/* renamed from: e.i.b.z1.y */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/y.class */
public class C23213y {

    /* renamed from: a */
    public final Context f64268a;

    /* renamed from: b */
    public final C23080f f64269b;

    /* renamed from: c */
    public final C23170a0 f64270c;

    /* renamed from: e.i.b.z1.y$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/y$a.class */
    public class C23214a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".csm");
        }
    }

    public C23213y(Context context, C23080f c23080f, C23170a0 c23170a0) {
        this.f64268a = context;
        this.f64269b = c23080f;
        this.f64270c = c23170a0;
    }

    /* renamed from: a */
    public File m7357a(String str) {
        String m8543z2 = C22128a.m8543z2(str, ".csm");
        Context context = this.f64268a;
        Objects.requireNonNull(this.f64269b);
        return new File(context.getDir("criteo_metrics", 0), m8543z2);
    }

    /* renamed from: b */
    public Collection<File> m7356b() {
        Context context = this.f64268a;
        Objects.requireNonNull(this.f64269b);
        File[] listFiles = context.getDir("criteo_metrics", 0).listFiles(new C23214a());
        return listFiles == null ? Collections.emptyList() : Arrays.asList(listFiles);
    }
}
