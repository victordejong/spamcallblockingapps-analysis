package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.databinding.g */
/* loaded from: classes-dex2jar.jar:androidx/databinding/g.class */
public class C0652g extends AbstractC0648c {

    /* renamed from: a */
    private Set<Class<? extends AbstractC0648c>> f2128a = new HashSet();

    /* renamed from: b */
    private List<AbstractC0648c> f2129b = new CopyOnWriteArrayList();

    /* renamed from: c */
    private List<String> f2130c = new CopyOnWriteArrayList();

    /* renamed from: b */
    private boolean m5837b() {
        boolean z = false;
        for (String str : this.f2130c) {
            try {
                Class<?> cls = Class.forName(str);
                if (AbstractC0648c.class.isAssignableFrom(cls)) {
                    m5838a((AbstractC0648c) cls.newInstance());
                    this.f2130c.remove(str);
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

    @Override // androidx.databinding.AbstractC0648c
    /* renamed from: a */
    public ViewDataBinding mo1797a(AbstractC0650e abstractC0650e, View view, int i) {
        for (AbstractC0648c abstractC0648c : this.f2129b) {
            ViewDataBinding mo1797a = abstractC0648c.mo1797a(abstractC0650e, view, i);
            if (mo1797a != null) {
                return mo1797a;
            }
        }
        if (m5837b()) {
            return mo1797a(abstractC0650e, view, i);
        }
        return null;
    }

    @Override // androidx.databinding.AbstractC0648c
    /* renamed from: a */
    public ViewDataBinding mo1795a(AbstractC0650e abstractC0650e, View[] viewArr, int i) {
        for (AbstractC0648c abstractC0648c : this.f2129b) {
            ViewDataBinding mo1795a = abstractC0648c.mo1795a(abstractC0650e, viewArr, i);
            if (mo1795a != null) {
                return mo1795a;
            }
        }
        if (m5837b()) {
            return mo1795a(abstractC0650e, viewArr, i);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m5838a(AbstractC0648c abstractC0648c) {
        if (this.f2128a.add(abstractC0648c.getClass())) {
            this.f2129b.add(abstractC0648c);
            for (AbstractC0648c abstractC0648c2 : abstractC0648c.mo1798a()) {
                m5838a(abstractC0648c2);
            }
        }
    }
}
