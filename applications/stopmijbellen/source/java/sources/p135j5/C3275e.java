package p135j5;

import java.io.File;
import java.nio.charset.Charset;
import java.util.Comparator;
/* renamed from: j5.e */
/* loaded from: classes2-dex2jar.jar:j5/e.class */
public final /* synthetic */ class C3275e implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C3275e f11086a = new C3275e();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Charset charset = C3276f.f11087g;
        String name = ((File) obj).getName();
        int i = C3276f.f11088h;
        return name.substring(0, i).compareTo(((File) obj2).getName().substring(0, i));
    }
}
