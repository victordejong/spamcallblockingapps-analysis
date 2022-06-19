package p1727n3.p1758e.p1759a.p1761e;

import android.util.Size;
import java.util.Comparator;
/* renamed from: n3.e.a.e.i0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/i0.class */
public final /* synthetic */ class C25751i0 implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C25751i0 f72132a = new C25751i0();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Size size = (Size) obj;
        Size size2 = (Size) obj2;
        return Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
    }
}
