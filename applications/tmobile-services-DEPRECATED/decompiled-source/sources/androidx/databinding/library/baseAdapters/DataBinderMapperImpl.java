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

    /* renamed from: a */
    private static final SparseIntArray f3633a = new SparseIntArray(0);

    /* loaded from: classes-dex2jar.jar:androidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerBrLookup.class */
    private static class InnerBrLookup {

        /* renamed from: a */
        static final SparseArray<String> f3634a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f3634a = sparseArray;
            sparseArray.put(0, "_all");
        }

        private InnerBrLookup() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/library/baseAdapters/DataBinderMapperImpl$InnerLayoutIdLookup.class */
    private static class InnerLayoutIdLookup {
        static {
            new HashMap(0);
        }

        private InnerLayoutIdLookup() {
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: a */
    public List<DataBinderMapper> mo7661a() {
        return new ArrayList(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: b */
    public ViewDataBinding mo7660b(DataBindingComponent dataBindingComponent, View view, int i) {
        if (f3633a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: c */
    public ViewDataBinding mo7659c(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f3633a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
