package p135j5;

import java.io.File;
import java.nio.charset.Charset;
import java.util.Comparator;
/* renamed from: j5.d */
/* loaded from: classes2-dex2jar.jar:j5/d.class */
public final /* synthetic */ class C3274d implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C3274d f11085a = new C3274d();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Charset charset = C3276f.f11087g;
        return ((File) obj2).getName().compareTo(((File) obj).getName());
    }
}
