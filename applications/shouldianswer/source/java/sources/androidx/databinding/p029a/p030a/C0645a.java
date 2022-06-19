package androidx.databinding.p029a.p030a;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.AbstractC0648c;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.databinding.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/databinding/a/a/a.class */
public class C0645a extends AbstractC0648c {

    /* renamed from: a */
    private static final SparseIntArray f2120a = new SparseIntArray(0);

    @Override // androidx.databinding.AbstractC0648c
    /* renamed from: a */
    public ViewDataBinding mo1797a(AbstractC0650e abstractC0650e, View view, int i) {
        if (f2120a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.AbstractC0648c
    /* renamed from: a */
    public ViewDataBinding mo1795a(AbstractC0650e abstractC0650e, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f2120a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.AbstractC0648c
    /* renamed from: a */
    public List<AbstractC0648c> mo1798a() {
        return new ArrayList(0);
    }
}
