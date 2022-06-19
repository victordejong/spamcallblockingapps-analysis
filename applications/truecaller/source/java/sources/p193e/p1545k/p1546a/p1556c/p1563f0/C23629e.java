package p193e.p1545k.p1546a.p1556c.p1563f0;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.spi.FileSystemProvider;
import java.util.Iterator;
import java.util.ServiceLoader;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0;
/* renamed from: e.k.a.c.f0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/f0/e.class */
public class C23629e extends AbstractC23552e0<Path> {

    /* renamed from: d */
    public static final boolean f65492d;

    static {
        boolean z;
        File[] listRoots = File.listRoots();
        int length = listRoots.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            }
            String path = listRoots[i].getPath();
            if (path.length() >= 2 && Character.isLetter(path.charAt(0)) && path.charAt(1) == ':') {
                z = true;
                break;
            }
            i++;
        }
        f65492d = z;
    }

    public C23629e() {
        super(Path.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        Path path;
        FileSystemProvider fileSystemProvider;
        if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            abstractC23632g.m6496J(Path.class, abstractC23376j);
            throw null;
        }
        String mo5817U0 = abstractC23376j.mo5817U0();
        if (mo5817U0.indexOf(58) < 0) {
            path = Paths.get(mo5817U0, new String[0]);
        } else if (!f65492d || mo5817U0.length() < 2 || !Character.isLetter(mo5817U0.charAt(0)) || mo5817U0.charAt(1) != ':') {
            try {
                URI uri = new URI(mo5817U0);
                try {
                    path = Paths.get(uri);
                } catch (FileSystemNotFoundException th) {
                    try {
                        String scheme = uri.getScheme();
                        Iterator it = ServiceLoader.load(FileSystemProvider.class).iterator();
                        do {
                            if (!it.hasNext()) {
                                throw null;
                            }
                            fileSystemProvider = (FileSystemProvider) it.next();
                        } while (!fileSystemProvider.getScheme().equalsIgnoreCase(scheme));
                        path = fileSystemProvider.getPath(uri);
                    } catch (Throwable th2) {
                        th2.addSuppressed(th2);
                        throw null;
                    }
                } finally {
                    abstractC23632g.m6502D(this.f65309a, mo5817U0, th2);
                    Throwable th3 = null;
                }
            } catch (URISyntaxException th22) {
                throw null;
            }
        } else {
            path = Paths.get(mo5817U0, new String[0]);
        }
        return path;
    }
}
