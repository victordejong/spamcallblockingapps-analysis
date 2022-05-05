package p081h.p203i.p325c.p337n.p338d.p346l;

import java.io.File;
import java.io.FileFilter;
/* renamed from: h.i.c.n.d.l.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/l/b.class */
public final /* synthetic */ class C9770b implements FileFilter {

    /* renamed from: a */
    public final String f22177a;

    public C9770b(String str) {
        this.f22177a = str;
    }

    /* renamed from: a */
    public static FileFilter m14336a(String str) {
        return new C9770b(str);
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return C9775g.m14315a(this.f22177a, file);
    }
}
