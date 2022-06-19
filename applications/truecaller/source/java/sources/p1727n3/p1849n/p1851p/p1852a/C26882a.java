package p1727n3.p1849n.p1851p.p1852a;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
/* renamed from: n3.n.p.a.a */
/* loaded from: classes-dex2jar.jar:n3/n/p/a/a.class */
public class C26882a extends AbstractC26863d {

    /* renamed from: a */
    public static final SparseIntArray f75144a = new SparseIntArray(0);

    /* renamed from: n3.n.p.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/n/p/a/a$a.class */
    public static class C26883a {

        /* renamed from: a */
        public static final SparseArray<String> f75145a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f75145a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: n3.n.p.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/n/p/a/a$b.class */
    public static class C26884b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f75146a = new HashMap<>(0);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        return new ArrayList(0);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C26883a.f75145a.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        if (f75144a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f75144a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public int getLayoutId(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        Integer num = C26884b.f75146a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
