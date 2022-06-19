package p135j5;

import java.io.File;
import java.io.FilenameFilter;
import java.nio.charset.Charset;
/* renamed from: j5.c */
/* loaded from: classes2-dex2jar.jar:j5/c.class */
public final /* synthetic */ class C3273c implements FilenameFilter {

    /* renamed from: a */
    public static final /* synthetic */ C3273c f11084a = new C3273c();

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        Charset charset = C3276f.f11087g;
        return str.startsWith("event") && !str.endsWith("_");
    }
}
