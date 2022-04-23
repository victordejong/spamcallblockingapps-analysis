package com.facebook.internal.c.a;

import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import kotlin.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u00112\u00020\u0001:\u0004\u0011\u0012\u0013\u0014B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\b\u0010\r\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;", "", "()V", "initialized", "", "paramsField", "Ljava/lang/reflect/Field;", "viewsField", "windowManagerObj", "attachActiveRootListener", "", "listener", "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Listener;", "initialize", "listActiveRoots", "", "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;", "Companion", "ListenableArrayList", "Listener", "Root", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0401a f19903a = new C0401a(null);
    private static final String f;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19904b;

    /* renamed from: c  reason: collision with root package name */
    private Object f19905c;

    /* renamed from: d  reason: collision with root package name */
    private Field f19906d;
    private Field e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Companion;", "", "()V", "GET_DEFAULT_IMPL", "", "GET_GLOBAL_INSTANCE", "TAG", "VIEWS_FIELD", "WINDOW_MANAGER_GLOBAL_CLAZZ", "WINDOW_MANAGER_IMPL_CLAZZ", "WINDOW_PARAMS_FIELD", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/a$a.class */
    public static final class C0401a {
        private C0401a() {
        }

        public /* synthetic */ C0401a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;", "", "view", "Landroid/view/View;", "param", "Landroid/view/WindowManager$LayoutParams;", "(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V", "getParam", "()Landroid/view/WindowManager$LayoutParams;", "getView", "()Landroid/view/View;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final View f19907a;

        /* renamed from: b  reason: collision with root package name */
        public final WindowManager.LayoutParams f19908b;

        public b(View view, WindowManager.LayoutParams param) {
            p.d(view, "view");
            p.d(param, "param");
            this.f19907a = view;
            this.f19908b = param;
        }
    }

    static {
        String simpleName = a.class.getSimpleName();
        p.b(simpleName, "AndroidRootResolver::class.java.simpleName");
        f = simpleName;
    }

    public final List<b> a() {
        List list;
        List list2 = null;
        if (!this.f19904b) {
            this.f19904b = true;
            String str = Build.VERSION.SDK_INT > 16 ? "android.view.WindowManagerGlobal" : "android.view.WindowManagerImpl";
            String str2 = Build.VERSION.SDK_INT > 16 ? "getInstance" : "getDefault";
            try {
                Class<?> cls = Class.forName(str);
                p.b(cls, "Class.forName(accessClass)");
                Method method = cls.getMethod(str2, new Class[0]);
                p.b(method, "clazz.getMethod(instanceMethod)");
                this.f19905c = method.invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mViews");
                this.f19906d = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                }
                Field declaredField2 = cls.getDeclaredField("mParams");
                this.e = declaredField2;
                if (declaredField2 != null) {
                    declaredField2.setAccessible(true);
                }
            } catch (ClassNotFoundException e) {
                ag agVar = ag.f36785a;
                p.b(String.format("could not find class: %s", Arrays.copyOf(new Object[]{str}, 1)), "java.lang.String.format(format, *args)");
            } catch (IllegalAccessException e2) {
                ag agVar2 = ag.f36785a;
                p.b(String.format("reflective setup failed using obj: %s method: %s field: %s", Arrays.copyOf(new Object[]{str, str2, "mViews"}, 3)), "java.lang.String.format(format, *args)");
            } catch (NoSuchFieldException e3) {
                ag agVar3 = ag.f36785a;
                p.b(String.format("could not find field: %s or %s on %s", Arrays.copyOf(new Object[]{"mParams", "mViews", str}, 3)), "java.lang.String.format(format, *args)");
            } catch (NoSuchMethodException e4) {
                ag agVar4 = ag.f36785a;
                p.b(String.format("could not find method: %s on %s", Arrays.copyOf(new Object[]{str2, str}, 2)), "java.lang.String.format(format, *args)");
            } catch (RuntimeException e5) {
                ag agVar5 = ag.f36785a;
                p.b(String.format("reflective setup failed using obj: %s method: %s field: %s", Arrays.copyOf(new Object[]{str, str2, "mViews"}, 3)), "java.lang.String.format(format, *args)");
            } catch (InvocationTargetException e6) {
                ag agVar6 = ag.f36785a;
                p.b(String.format("could not invoke: %s on %s", Arrays.copyOf(new Object[]{str2, str}, 2)), "java.lang.String.format(format, *args)");
                e6.getCause();
            }
        }
        if (this.f19905c == null || this.f19906d == null || this.e == null) {
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT < 19) {
                Field field = this.f19906d;
                View[] viewArr = (View[]) (field != null ? field.get(this.f19905c) : null);
                List i = viewArr != null ? i.i(viewArr) : null;
                Field field2 = this.e;
                WindowManager.LayoutParams[] layoutParamsArr = (WindowManager.LayoutParams[]) (field2 != null ? field2.get(this.f19905c) : null);
                list = i;
                if (layoutParamsArr != null) {
                    list2 = i.i(layoutParamsArr);
                    list = i;
                }
            } else {
                Field field3 = this.f19906d;
                list = (List) (field3 != null ? field3.get(this.f19905c) : null);
                Field field4 = this.e;
                list2 = (List) (field4 != null ? field4.get(this.f19905c) : null);
            }
            ArrayList arrayList = new ArrayList();
            z zVar = list;
            if (list == null) {
                zVar = z.f36608a;
            }
            for (n nVar : kotlin.a.n.d((Iterable) zVar, list2 != null ? list2 : z.f36608a)) {
                arrayList.add(new b((View) nVar.f36810a, (WindowManager.LayoutParams) nVar.f36811b));
            }
            return arrayList;
        } catch (IllegalAccessException e7) {
            ag agVar7 = ag.f36785a;
            p.b(String.format("Reflective access to %s or %s on %s failed.", Arrays.copyOf(new Object[]{this.f19906d, this.e, this.f19905c}, 3)), "java.lang.String.format(format, *args)");
            return null;
        } catch (RuntimeException e8) {
            ag agVar8 = ag.f36785a;
            p.b(String.format("Reflective access to %s or %s on %s failed.", Arrays.copyOf(new Object[]{this.f19906d, this.e, this.f19905c}, 3)), "java.lang.String.format(format, *args)");
            return null;
        }
    }
}
