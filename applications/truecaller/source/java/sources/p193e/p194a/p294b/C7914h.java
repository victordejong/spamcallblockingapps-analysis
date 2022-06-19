package p193e.p194a.p294b;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.truecaller.bizmon.C3478R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
import p1727n3.p1849n.p1851p.p1852a.C26882a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p294b.p355m.C8066g0;
import p193e.p194a.p294b.p355m.C8071i;
import p193e.p194a.p294b.p355m.C8077k;
import p193e.p194a.p294b.p355m.C8081l0;
import p193e.p194a.p294b.p355m.C8088m;
import p193e.p194a.p294b.p355m.C8094p;
/* renamed from: e.a.b.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/h.class */
public class C7914h extends AbstractC26863d {

    /* renamed from: a */
    public static final SparseIntArray f24535a;

    /* renamed from: e.a.b.h$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/h$a.class */
    public static class C7915a {

        /* renamed from: a */
        public static final SparseArray<String> f24536a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(10);
            f24536a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "buildingName");
            sparseArray.put(2, "city");
            sparseArray.put(3, "clickListener");
            sparseArray.put(4, "collectionAd");
            sparseArray.put(5, "landmark");
            sparseArray.put(6, "pinCode");
            sparseArray.put(7, "state");
            sparseArray.put(8, "viewModel");
            sparseArray.put(9, "viewmodel");
        }
    }

    /* renamed from: e.a.b.h$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/h$b.class */
    public static class C7916b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f24537a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(6);
            f24537a = hashMap;
            hashMap.put("layout/bottomsheet_biz_delete_0", Integer.valueOf(C3478R.layout.bottomsheet_biz_delete));
            hashMap.put("layout/bottomsheet_biz_description_0", Integer.valueOf(C3478R.layout.bottomsheet_biz_description));
            hashMap.put("layout/bottomsheet_biz_email_0", Integer.valueOf(C3478R.layout.bottomsheet_biz_email));
            hashMap.put("layout/bottomsheet_biz_name_0", Integer.valueOf(C3478R.layout.bottomsheet_biz_name));
            hashMap.put("layout/fragment_biz_profile_0", Integer.valueOf(C3478R.layout.fragment_biz_profile));
            hashMap.put("layout/fragment_edit_biz_address_0", Integer.valueOf(C3478R.layout.fragment_edit_biz_address));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(6);
        f24535a = sparseIntArray;
        sparseIntArray.put(C3478R.layout.bottomsheet_biz_delete, 1);
        sparseIntArray.put(C3478R.layout.bottomsheet_biz_description, 2);
        sparseIntArray.put(C3478R.layout.bottomsheet_biz_email, 3);
        sparseIntArray.put(C3478R.layout.bottomsheet_biz_name, 4);
        sparseIntArray.put(C3478R.layout.fragment_biz_profile, 5);
        sparseIntArray.put(C3478R.layout.fragment_edit_biz_address, 6);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new C26882a());
        return arrayList;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C7915a.f24536a.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        int i2 = f24535a.get(i);
        if (i2 > 0) {
            Object tag = view.getTag();
            if (tag == null) {
                throw new RuntimeException("view must have a tag");
            }
            switch (i2) {
                case 1:
                    if (!"layout/bottomsheet_biz_delete_0".equals(tag)) {
                        throw new IllegalArgumentException(C22128a.m8551x2("The tag for bottomsheet_biz_delete is invalid. Received: ", tag));
                    }
                    return new C8071i(abstractC26865f, view);
                case 2:
                    if (!"layout/bottomsheet_biz_description_0".equals(tag)) {
                        throw new IllegalArgumentException(C22128a.m8551x2("The tag for bottomsheet_biz_description is invalid. Received: ", tag));
                    }
                    return new C8077k(abstractC26865f, view);
                case 3:
                    if (!"layout/bottomsheet_biz_email_0".equals(tag)) {
                        throw new IllegalArgumentException(C22128a.m8551x2("The tag for bottomsheet_biz_email is invalid. Received: ", tag));
                    }
                    return new C8088m(abstractC26865f, view);
                case 4:
                    if (!"layout/bottomsheet_biz_name_0".equals(tag)) {
                        throw new IllegalArgumentException(C22128a.m8551x2("The tag for bottomsheet_biz_name is invalid. Received: ", tag));
                    }
                    return new C8094p(abstractC26865f, view);
                case 5:
                    if (!"layout/fragment_biz_profile_0".equals(tag)) {
                        throw new IllegalArgumentException(C22128a.m8551x2("The tag for fragment_biz_profile is invalid. Received: ", tag));
                    }
                    return new C8066g0(abstractC26865f, view);
                case 6:
                    if (!"layout/fragment_edit_biz_address_0".equals(tag)) {
                        throw new IllegalArgumentException(C22128a.m8551x2("The tag for fragment_edit_biz_address is invalid. Received: ", tag));
                    }
                    return new C8081l0(abstractC26865f, view);
                default:
                    return null;
            }
        }
        return null;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f24535a.get(i) <= 0 || viewArr[0].getTag() != null) {
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
        Integer num = C7916b.f24537a.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
