package p131c.p161d.p282e.p289l.p290d.p298l;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: c.d.e.l.d.l.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/l/a.class */
public final /* synthetic */ class C5397a implements FilenameFilter {

    /* renamed from: a */
    public final String f18315a;

    public C5397a(String str) {
        this.f18315a = str;
    }

    /* renamed from: a */
    public static FilenameFilter m23920a(String str) {
        return new C5397a(str);
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(this.f18315a);
        return startsWith;
    }
}
