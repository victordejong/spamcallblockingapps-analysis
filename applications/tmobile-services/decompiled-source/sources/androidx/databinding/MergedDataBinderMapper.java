package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/databinding/MergedDataBinderMapper.class */
public class MergedDataBinderMapper extends DataBinderMapper {

    /* renamed from: a */
    private Set<Class<? extends DataBinderMapper>> f3525a = new HashSet();

    /* renamed from: b */
    private List<DataBinderMapper> f3526b = new CopyOnWriteArrayList();

    /* renamed from: c */
    private List<String> f3527c = new CopyOnWriteArrayList();

    /* renamed from: e */
    private boolean m18663e() {
        boolean z = false;
        for (String str : this.f3527c) {
            try {
                Class<?> cls = Class.forName(str);
                if (DataBinderMapper.class.isAssignableFrom(cls)) {
                    m18664d((DataBinderMapper) cls.newInstance());
                    this.f3527c.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException e) {
            } catch (IllegalAccessException e2) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e2);
            } catch (InstantiationException e3) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e3);
            }
        }
        return z;
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: b */
    public ViewDataBinding mo7660b(DataBindingComponent dataBindingComponent, View view, int i) {
        for (DataBinderMapper dataBinderMapper : this.f3526b) {
            ViewDataBinding b = dataBinderMapper.mo7660b(dataBindingComponent, view, i);
            if (b != null) {
                return b;
            }
        }
        if (m18663e()) {
            return mo7660b(dataBindingComponent, view, i);
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: c */
    public ViewDataBinding mo7659c(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        for (DataBinderMapper dataBinderMapper : this.f3526b) {
            ViewDataBinding c = dataBinderMapper.mo7659c(dataBindingComponent, viewArr, i);
            if (c != null) {
                return c;
            }
        }
        if (m18663e()) {
            return mo7659c(dataBindingComponent, viewArr, i);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public void m18664d(DataBinderMapper dataBinderMapper) {
        if (this.f3525a.add(dataBinderMapper.getClass())) {
            this.f3526b.add(dataBinderMapper);
            for (DataBinderMapper dataBinderMapper2 : dataBinderMapper.mo7661a()) {
                m18664d(dataBinderMapper2);
            }
        }
    }
}
