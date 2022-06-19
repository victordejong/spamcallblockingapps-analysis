package org.xutils.view;

import android.app.Activity;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import org.xutils.C9682x;
import org.xutils.ViewInjector;
import org.xutils.common.util.LogUtil;
import org.xutils.view.annotation.ContentView;
import org.xutils.view.annotation.Event;
import org.xutils.view.annotation.ViewInject;
/* loaded from: classes2-dex2jar.jar:org/xutils/view/ViewInjectorImpl.class */
public final class ViewInjectorImpl implements ViewInjector {

    /* renamed from: a */
    private static final HashSet<Class<?>> f40888a;

    /* renamed from: b */
    private static final Object f40889b;

    /* renamed from: c */
    private static volatile ViewInjectorImpl f40890c;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0040 -> B:4:0x0035). Please submit an issue!!! */
    static {
        HashSet<Class<?>> hashSet = new HashSet<>();
        f40888a = hashSet;
        hashSet.add(Object.class);
        hashSet.add(Activity.class);
        hashSet.add(Fragment.class);
        try {
            hashSet.add(Class.forName("androidx.fragment.app.Fragment"));
            hashSet.add(Class.forName("androidx.fragment.app.FragmentActivity"));
        } catch (Throwable th) {
        }
        f40889b = new Object();
    }

    private ViewInjectorImpl() {
    }

    /* renamed from: a */
    private static ContentView m132a(Class<?> cls) {
        if (cls == null || f40888a.contains(cls) || cls.getName().startsWith("androidx.")) {
            return null;
        }
        ContentView contentView = (ContentView) cls.getAnnotation(ContentView.class);
        return contentView == null ? m132a(cls.getSuperclass()) : contentView;
    }

    /* renamed from: b */
    private static void m131b(Object obj, Class<?> cls, C9680a c9680a) {
        Event event;
        ViewInject viewInject;
        if (cls == null || f40888a.contains(cls) || cls.getName().startsWith("androidx.")) {
            return;
        }
        m131b(obj, cls.getSuperclass(), c9680a);
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                Class<?> type = field.getType();
                if (!Modifier.isStatic(field.getModifiers()) && !Modifier.isFinal(field.getModifiers()) && !type.isPrimitive() && !type.isArray() && (viewInject = (ViewInject) field.getAnnotation(ViewInject.class)) != null) {
                    try {
                        View m129b = c9680a.m129b(viewInject.value(), viewInject.parentId());
                        if (m129b == null) {
                            throw new RuntimeException("Invalid @ViewInject for " + cls.getSimpleName() + "." + field.getName());
                            break;
                        }
                        field.setAccessible(true);
                        field.set(obj, m129b);
                    } catch (Throwable th) {
                        LogUtil.m258e(th.getMessage(), th);
                    }
                }
            }
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (declaredMethods == null || declaredMethods.length <= 0) {
            return;
        }
        for (Method method : declaredMethods) {
            if (!Modifier.isStatic(method.getModifiers()) && Modifier.isPrivate(method.getModifiers()) && (event = (Event) method.getAnnotation(Event.class)) != null) {
                try {
                    int[] value = event.value();
                    int[] parentId = event.parentId();
                    int length = parentId == null ? 0 : parentId.length;
                    int i = 0;
                    while (i < value.length) {
                        int i2 = value[i];
                        if (i2 > 0) {
                            C9681b c9681b = new C9681b();
                            c9681b.f40893a = i2;
                            c9681b.f40894b = length > i ? parentId[i] : 0;
                            method.setAccessible(true);
                            EventListenerManager.m133b(c9680a, c9681b, event, obj, method);
                        }
                        i++;
                    }
                } catch (Throwable th2) {
                    LogUtil.m258e(th2.getMessage(), th2);
                }
            }
        }
    }

    public static void registerInstance() {
        if (f40890c == null) {
            synchronized (f40889b) {
                if (f40890c == null) {
                    f40890c = new ViewInjectorImpl();
                }
            }
        }
        C9682x.Ext.setViewInjector(f40890c);
    }

    @Override // org.xutils.ViewInjector
    public View inject(Object obj, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View view;
        Class<?> cls = obj.getClass();
        try {
            ContentView m132a = m132a(cls);
            view = null;
            if (m132a != null) {
                int value = m132a.value();
                view = null;
                if (value > 0) {
                    view = layoutInflater.inflate(value, viewGroup, false);
                }
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
            view = null;
        }
        m131b(obj, cls, new C9680a(view));
        return view;
    }

    @Override // org.xutils.ViewInjector
    public void inject(Activity activity) {
        int value;
        Class<?> cls = activity.getClass();
        try {
            ContentView m132a = m132a(cls);
            if (m132a != null && (value = m132a.value()) > 0) {
                activity.setContentView(value);
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        m131b(activity, cls, new C9680a(activity));
    }

    @Override // org.xutils.ViewInjector
    public void inject(View view) {
        m131b(view, view.getClass(), new C9680a(view));
    }

    @Override // org.xutils.ViewInjector
    public void inject(Object obj, View view) {
        m131b(obj, obj.getClass(), new C9680a(view));
    }
}
