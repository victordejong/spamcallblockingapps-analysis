package com.appnext.suggestedappswider;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.appnext.suggestedappswider.databinding.AnGridCollectionTemplateItemBindingImpl;
import com.appnext.suggestedappswider.databinding.AnGridCollectionTemplateLayoutBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.AbstractC26865f;
import p1727n3.p1849n.p1851p.p1852a.C26882a;
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/DataBinderMapperImpl.class */
public class DataBinderMapperImpl extends AbstractC26863d {
    private static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP;
    private static final int LAYOUT_ANGRIDCOLLECTIONTEMPLATEITEM = 1;
    private static final int LAYOUT_ANGRIDCOLLECTIONTEMPLATELAYOUT = 2;

    /* renamed from: com.appnext.suggestedappswider.DataBinderMapperImpl$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/DataBinderMapperImpl$a.class */
    public static final class C0669a {

        /* renamed from: hd */
        public static final SparseArray<String> f2056hd;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(2);
            f2056hd = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "collectionAd");
        }
    }

    /* renamed from: com.appnext.suggestedappswider.DataBinderMapperImpl$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/DataBinderMapperImpl$b.class */
    public static final class C0670b {

        /* renamed from: he */
        public static final HashMap<String, Integer> f2057he;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(2);
            f2057he = hashMap;
            hashMap.put("layout/an_grid_collection_template_item_0", Integer.valueOf(C0671R.layout.an_grid_collection_template_item));
            hashMap.put("layout/an_grid_collection_template_layout_0", Integer.valueOf(C0671R.layout.an_grid_collection_template_layout));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        INTERNAL_LAYOUT_ID_LOOKUP = sparseIntArray;
        sparseIntArray.put(C0671R.layout.an_grid_collection_template_item, 1);
        sparseIntArray.put(C0671R.layout.an_grid_collection_template_layout, 2);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public List<AbstractC26863d> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new C26882a());
        return arrayList;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public String convertBrIdToString(int i) {
        return C0669a.f2056hd.get(i);
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        int i2 = INTERNAL_LAYOUT_ID_LOOKUP.get(i);
        if (i2 > 0) {
            Object tag = view.getTag();
            if (tag == null) {
                throw new RuntimeException("view must have a tag");
            }
            if (i2 == 1) {
                if ("layout/an_grid_collection_template_item_0".equals(tag)) {
                    return new AnGridCollectionTemplateItemBindingImpl(abstractC26865f, view);
                }
                throw new IllegalArgumentException("The tag for an_grid_collection_template_item is invalid. Received: " + tag);
            } else if (i2 != 2) {
                return null;
            } else {
                if ("layout/an_grid_collection_template_layout_0".equals(tag)) {
                    return new AnGridCollectionTemplateLayoutBindingImpl(abstractC26865f, view);
                }
                throw new IllegalArgumentException("The tag for an_grid_collection_template_layout is invalid. Received: " + tag);
            }
        }
        return null;
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // p1727n3.p1849n.AbstractC26863d
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C0670b.f2057he.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
