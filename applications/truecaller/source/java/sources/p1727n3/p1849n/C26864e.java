package p1727n3.p1849n;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import p193e.p194a.C20948v1;
/* renamed from: n3.n.e */
/* loaded from: classes-dex2jar.jar:n3/n/e.class */
public class C26864e extends AbstractC26863d {

    /* renamed from: a */
    public Set<Class<? extends AbstractC26863d>> f75134a = new HashSet();

    /* renamed from: b */
    public List<AbstractC26863d> f75135b = new CopyOnWriteArrayList();

    /* renamed from: c */
    public List<String> f75136c = new CopyOnWriteArrayList();

    public C26864e() {
        m1258a(new C20948v1());
        List<String> list = this.f75136c;
        list.add("com.truecaller.callhero_assistant.DataBinderMapperImpl");
        this.f75136c.add("com.truecaller.banuba.DataBinderMapperImpl");
    }

    /* renamed from: b */
    public String convertBrIdToString(int i) {
        for (AbstractC26863d abstractC26863d : this.f75135b) {
            String convertBrIdToString = abstractC26863d.convertBrIdToString(i);
            if (convertBrIdToString != null) {
                return convertBrIdToString;
            }
        }
        if (m1253f()) {
            return convertBrIdToString(i);
        }
        return null;
    }

    /* renamed from: c */
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View view, int i) {
        for (AbstractC26863d abstractC26863d : this.f75135b) {
            ViewDataBinding dataBinder = abstractC26863d.getDataBinder(abstractC26865f, view, i);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (m1253f()) {
            return getDataBinder(abstractC26865f, view, i);
        }
        return null;
    }

    /* renamed from: d */
    public ViewDataBinding getDataBinder(AbstractC26865f abstractC26865f, View[] viewArr, int i) {
        for (AbstractC26863d abstractC26863d : this.f75135b) {
            ViewDataBinding dataBinder = abstractC26863d.getDataBinder(abstractC26865f, viewArr, i);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (m1253f()) {
            return getDataBinder(abstractC26865f, viewArr, i);
        }
        return null;
    }

    /* renamed from: e */
    public int getLayoutId(String str) {
        for (AbstractC26863d abstractC26863d : this.f75135b) {
            int layoutId = abstractC26863d.getLayoutId(str);
            if (layoutId != 0) {
                return layoutId;
            }
        }
        if (m1253f()) {
            return getLayoutId(str);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m1258a(AbstractC26863d abstractC26863d) {
        if (this.f75134a.add(abstractC26863d.getClass())) {
            this.f75135b.add(abstractC26863d);
            for (AbstractC26863d abstractC26863d2 : abstractC26863d.collectDependencies()) {
                m1258a(abstractC26863d2);
            }
        }
    }

    /* renamed from: f */
    public final boolean m1253f() {
        boolean z = false;
        for (String str : this.f75136c) {
            try {
                Class<?> cls = Class.forName(str);
                if (AbstractC26863d.class.isAssignableFrom(cls)) {
                    m1258a((AbstractC26863d) cls.newInstance());
                    this.f75136c.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            }
        }
        return z;
    }
}
