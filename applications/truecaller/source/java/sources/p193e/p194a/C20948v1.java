package p193e.p194a;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
import p1727n3.p1849n.p1851p.p1852a.C26882a;
import p193e.p194a.p1399z.C21831e;
import p193e.p194a.p294b.C7914h;
import p193e.p194a.p739f0.C13871b;
import p193e.p194a.p852i.C15216p;
/* renamed from: e.a.v1 */
/* loaded from: classes4-dex2jar.jar:e/a/v1.class */
public class C20948v1 extends AbstractC26863d {

    /* renamed from: a */
    public static final SparseIntArray f58898a = new SparseIntArray(0);

    /* renamed from: e.a.v1$a */
    /* loaded from: classes4-dex2jar.jar:e/a/v1$a.class */
    public static class C20949a {

        /* renamed from: a */
        public static final SparseArray<String> f58899a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(19);
            f58899a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "bgIcon");
            sparseArray.put(2, "buildingName");
            sparseArray.put(3, "city");
            sparseArray.put(4, "clickListener");
            sparseArray.put(5, "collectionAd");
            sparseArray.put(6, "desc");
            sparseArray.put(7, RemoteMessageConst.Notification.ICON);
            sparseArray.put(8, "imgDrawable");
            sparseArray.put(9, "landmark");
            sparseArray.put(10, "onDismissClick");
            sparseArray.put(11, "onLearnMoreClick");
            sparseArray.put(12, "onSocialMediaItemClick");
            sparseArray.put(13, "pinCode");
            sparseArray.put(14, "positiveCTAText");
            sparseArray.put(15, "state");
            sparseArray.put(16, "title");
            sparseArray.put(17, "viewModel");
            sparseArray.put(18, "viewmodel");
        }
    }

    /* renamed from: e.a.v1$b */
    /* loaded from: classes4-dex2jar.jar:e/a/v1$b.class */
    public static class C20950b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f58900a = new HashMap<>(0);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(new C26882a());
        arrayList.add(new C15216p());
        arrayList.add(new C7914h());
        arrayList.add(new C21831e());
        arrayList.add(new C13871b());
        return arrayList;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C20949a.f58899a.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        if (f58898a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f58898a.get(i) <= 0 || viewArr[0].getTag() != null) {
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
        Integer num = C20950b.f58900a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
