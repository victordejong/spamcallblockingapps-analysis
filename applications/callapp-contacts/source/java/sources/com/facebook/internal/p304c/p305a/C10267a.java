package com.facebook.internal.p304c.p305a;

import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u00112\u00020\u0001:\u0004\u0011\u0012\u0013\u0014B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\b\u0010\r\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;", "", "()V", "initialized", "", "paramsField", "Ljava/lang/reflect/Field;", "viewsField", "windowManagerObj", "attachActiveRootListener", "", "listener", "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Listener;", "initialize", "listActiveRoots", "", "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;", "Companion", "ListenableArrayList", "Listener", "Root", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.c.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/a.class */
public final class C10267a {

    /* renamed from: a */
    public static final C10268a f33775a = new C10268a(null);

    /* renamed from: f */
    private static final String f33776f;

    /* renamed from: b */
    private boolean f33777b;

    /* renamed from: c */
    private Object f33778c;

    /* renamed from: d */
    private Field f33779d;

    /* renamed from: e */
    private Field f33780e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Companion;", "", "()V", "GET_DEFAULT_IMPL", "", "GET_GLOBAL_INSTANCE", "TAG", "VIEWS_FIELD", "WINDOW_MANAGER_GLOBAL_CLAZZ", "WINDOW_MANAGER_IMPL_CLAZZ", "WINDOW_PARAMS_FIELD", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/a$a.class */
    public static final class C10268a {
        private C10268a() {
        }

        public /* synthetic */ C10268a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;", "", "view", "Landroid/view/View;", "param", "Landroid/view/WindowManager$LayoutParams;", "(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V", "getParam", "()Landroid/view/WindowManager$LayoutParams;", "getView", "()Landroid/view/View;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c.a.a$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/a$b.class */
    public static final class C10269b {

        /* renamed from: a */
        public final View f33781a;

        /* renamed from: b */
        public final WindowManager.LayoutParams f33782b;

        public C10269b(View view, WindowManager.LayoutParams param) {
            C18524p.m3840d(view, "view");
            C18524p.m3840d(param, "param");
            this.f33781a = view;
            this.f33782b = param;
        }
    }

    static {
        String simpleName = C10267a.class.getSimpleName();
        C18524p.m3843b(simpleName, "AndroidRootResolver::class.java.simpleName");
        f33776f = simpleName;
    }

    /* renamed from: a */
    public final List<C10269b> m23085a() {
        List list;
        List list2;
        if (!this.f33777b) {
            this.f33777b = true;
            String str = Build.VERSION.SDK_INT > 16 ? "android.view.WindowManagerGlobal" : "android.view.WindowManagerImpl";
            String str2 = Build.VERSION.SDK_INT > 16 ? "getInstance" : "getDefault";
            try {
                Class<?> cls = Class.forName(str);
                C18524p.m3843b(cls, "Class.forName(accessClass)");
                Method method = cls.getMethod(str2, new Class[0]);
                C18524p.m3843b(method, "clazz.getMethod(instanceMethod)");
                this.f33778c = method.invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mViews");
                this.f33779d = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                }
                Field declaredField2 = cls.getDeclaredField("mParams");
                this.f33780e = declaredField2;
                if (declaredField2 != null) {
                    declaredField2.setAccessible(true);
                }
            } catch (ClassNotFoundException e) {
                C18500ag c18500ag = C18500ag.f63594a;
                C18524p.m3843b(String.format("could not find class: %s", Arrays.copyOf(new Object[]{str}, 1)), "java.lang.String.format(format, *args)");
            } catch (IllegalAccessException e2) {
                C18500ag c18500ag2 = C18500ag.f63594a;
                C18524p.m3843b(String.format("reflective setup failed using obj: %s method: %s field: %s", Arrays.copyOf(new Object[]{str, str2, "mViews"}, 3)), "java.lang.String.format(format, *args)");
            } catch (NoSuchFieldException e3) {
                C18500ag c18500ag3 = C18500ag.f63594a;
                C18524p.m3843b(String.format("could not find field: %s or %s on %s", Arrays.copyOf(new Object[]{"mParams", "mViews", str}, 3)), "java.lang.String.format(format, *args)");
            } catch (NoSuchMethodException e4) {
                C18500ag c18500ag4 = C18500ag.f63594a;
                C18524p.m3843b(String.format("could not find method: %s on %s", Arrays.copyOf(new Object[]{str2, str}, 2)), "java.lang.String.format(format, *args)");
            } catch (RuntimeException e5) {
                C18500ag c18500ag5 = C18500ag.f63594a;
                C18524p.m3843b(String.format("reflective setup failed using obj: %s method: %s field: %s", Arrays.copyOf(new Object[]{str, str2, "mViews"}, 3)), "java.lang.String.format(format, *args)");
            } catch (InvocationTargetException e6) {
                C18500ag c18500ag6 = C18500ag.f63594a;
                C18524p.m3843b(String.format("could not invoke: %s on %s", Arrays.copyOf(new Object[]{str2, str}, 2)), "java.lang.String.format(format, *args)");
                e6.getCause();
            }
        }
        if (this.f33778c == null || this.f33779d == null || this.f33780e == null) {
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT < 19) {
                Field field = this.f33779d;
                View[] viewArr = field != null ? field.get(this.f33778c) : null;
                List i = viewArr != null ? C18273i.m4183i(viewArr) : null;
                Field field2 = this.f33780e;
                WindowManager.LayoutParams[] layoutParamsArr = field2 != null ? field2.get(this.f33778c) : null;
                list = i;
                list2 = null;
                if (layoutParamsArr != null) {
                    list2 = C18273i.m4183i(layoutParamsArr);
                    list = i;
                }
            } else {
                Field field3 = this.f33779d;
                list = field3 != null ? field3.get(this.f33778c) : null;
                Field field4 = this.f33780e;
                list2 = field4 != null ? field4.get(this.f33778c) : null;
            }
            ArrayList arrayList = new ArrayList();
            List list3 = list;
            if (list == null) {
                list3 = C18297z.f63400a;
            }
            for (C18538n c18538n : C18282n.m4127d(list3, list2 != null ? list2 : C18297z.f63400a)) {
                arrayList.add(new C10269b((View) c18538n.f63624a, (WindowManager.LayoutParams) c18538n.f63625b));
            }
            return arrayList;
        } catch (IllegalAccessException e7) {
            C18500ag c18500ag7 = C18500ag.f63594a;
            C18524p.m3843b(String.format("Reflective access to %s or %s on %s failed.", Arrays.copyOf(new Object[]{this.f33779d, this.f33780e, this.f33778c}, 3)), "java.lang.String.format(format, *args)");
            return null;
        } catch (RuntimeException e8) {
            C18500ag c18500ag8 = C18500ag.f63594a;
            C18524p.m3843b(String.format("Reflective access to %s or %s on %s failed.", Arrays.copyOf(new Object[]{this.f33779d, this.f33780e, this.f33778c}, 3)), "java.lang.String.format(format, *args)");
            return null;
        }
    }
}
