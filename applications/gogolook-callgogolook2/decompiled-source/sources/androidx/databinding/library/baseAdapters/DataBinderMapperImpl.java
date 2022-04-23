package androidx.databinding.library.baseAdapters;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/databinding/library/baseAdapters/DataBinderMapperImpl.class */
public class DataBinderMapperImpl extends DataBinderMapper {
    public static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP = new SparseIntArray(0);

    /* loaded from: classes-dex2jar.jar:androidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerBrLookup.class */
    public static class InnerBrLookup {
        public static final SparseArray<String> sKeys = new SparseArray<>(2);

        static {
            sKeys.put(0, "_all");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerLayoutIdLookup.class */
    public static class InnerLayoutIdLookup {
        public static final HashMap<String, Integer> sKeys = new HashMap<>(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        return new ArrayList(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return InnerBrLookup.sKeys.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        if (INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        Integer num = InnerLayoutIdLookup.sKeys.get(str);
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }
}
