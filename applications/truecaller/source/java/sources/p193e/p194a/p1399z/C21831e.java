package p193e.p194a.p1399z;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.truecaller.personalsafety.C4318R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
import p1727n3.p1849n.p1851p.p1852a.C26882a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1399z.p1403l.C21842b;
/* renamed from: e.a.z.e */
/* loaded from: classes11-dex2jar.jar:e/a/z/e.class */
public class C21831e extends AbstractC26863d {

    /* renamed from: a */
    public static final SparseIntArray f60695a;

    /* renamed from: e.a.z.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/z/e$a.class */
    public static class C21832a {

        /* renamed from: a */
        public static final SparseArray<String> f60696a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(7);
            f60696a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "desc");
            sparseArray.put(2, "imgDrawable");
            sparseArray.put(3, "onDismissClick");
            sparseArray.put(4, "onLearnMoreClick");
            sparseArray.put(5, "positiveCTAText");
            sparseArray.put(6, "title");
        }
    }

    /* renamed from: e.a.z.e$b */
    /* loaded from: classes11-dex2jar.jar:e/a/z/e$b.class */
    public static class C21833b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f60697a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(1);
            f60697a = hashMap;
            hashMap.put("layout/bottomsheet_personal_safety_awareness_0", Integer.valueOf(C4318R.layout.bottomsheet_personal_safety_awareness));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(1);
        f60695a = sparseIntArray;
        sparseIntArray.put(C4318R.layout.bottomsheet_personal_safety_awareness, 1);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new C26882a());
        return arrayList;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C21832a.f60696a.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        int i2 = f60695a.get(i);
        if (i2 > 0) {
            Object tag = view.getTag();
            if (tag == null) {
                throw new RuntimeException("view must have a tag");
            }
            if (i2 != 1) {
                return null;
            }
            if (!"layout/bottomsheet_personal_safety_awareness_0".equals(tag)) {
                throw new IllegalArgumentException(C22128a.m8551x2("The tag for bottomsheet_personal_safety_awareness is invalid. Received: ", tag));
            }
            return new C21842b(abstractC26865f, view);
        }
        return null;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f60695a.get(i) <= 0 || viewArr[0].getTag() != null) {
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
        Integer num = C21833b.f60697a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
