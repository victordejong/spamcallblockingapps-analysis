package leakcanary;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.Process;
import android.os.UserManager;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.r;
import kotlin.t;
import kotlin.v;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0087\u0001\u0018�� \u00172\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0018"}, d2 = {"Lleakcanary/AndroidLeakFixes;", "", "(Ljava/lang/String;I)V", "applied", "", "apply", "", "application", "Landroid/app/Application;", "MEDIA_SESSION_LEGACY_HELPER", "TEXT_LINE_POOL", "USER_MANAGER", "FLUSH_HANDLER_THREADS", "ACCESSIBILITY_NODE_INFO", "CONNECTIVITY_MANAGER", "SAMSUNG_CLIPBOARD_MANAGER", "BUBBLE_POPUP", "LAST_HOVERED_VIEW", "ACTIVITY_MANAGER", "VIEW_LOCATION_HOLDER", "IMM_FOCUSED_VIEW", "IMM_CUR_ROOT_VIEW", "SPELL_CHECKER", "Companion", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:leakcanary/a.class */
public abstract class a extends Enum<a> {
    private static final /* synthetic */ a[] $VALUES;
    public static final a ACCESSIBILITY_NODE_INFO;
    public static final a ACTIVITY_MANAGER;
    public static final a BUBBLE_POPUP;
    public static final a CONNECTIVITY_MANAGER;
    public static final a FLUSH_HANDLER_THREADS;
    public static final a IMM_CUR_ROOT_VIEW;
    public static final a IMM_FOCUSED_VIEW;
    public static final a LAST_HOVERED_VIEW;
    private static final String LG = "LGE";
    public static final a MEDIA_SESSION_LEGACY_HELPER;
    private static final String SAMSUNG = "samsung";
    public static final a SAMSUNG_CLIPBOARD_MANAGER;
    public static final a SPELL_CHECKER;
    public static final a TEXT_LINE_POOL;
    public static final a USER_MANAGER;
    public static final a VIEW_LOCATION_HOLDER;
    private boolean applied;
    public static final e Companion = new e(null);
    private static final ScheduledExecutorService backgroundExecutor = Executors.newSingleThreadScheduledExecutor(f.f39044a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¨\u0006\u0006"}, d2 = {"Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$b.class */
    static final class b extends a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$b$a.class */
        static final class RunnableC0731a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Application f39029b;

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "activity", "Landroid/app/Activity;", "invoke"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$b$a$1  reason: invalid class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$b$a$1.class */
            static final class AnonymousClass1 extends r implements Function1<Activity, v> {

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Field f39031b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Field field) {
                    super(1);
                    this.f39031b = field;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ v invoke(Activity activity) {
                    Activity activity2 = activity;
                    kotlin.jvm.internal.p.c(activity2, "activity");
                    try {
                        if (kotlin.jvm.internal.p.a(this.f39031b.get(null), activity2)) {
                            this.f39031b.set(null, null);
                        }
                    } catch (Exception e) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(b.this.name());
                            sb.append(" leak");
                        }
                    }
                    return v.f38654a;
                }
            }

            RunnableC0731a(Application application) {
                this.f39029b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Field declaredField = this.f39029b.getSystemService("activity").getClass().getDeclaredField("mContext");
                    kotlin.jvm.internal.p.a((Object) declaredField, "application\n            …DeclaredField(\"mContext\")");
                    declaredField.setAccessible(true);
                    if ((declaredField.getModifiers() | 8) != declaredField.getModifiers()) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(b.this.name());
                            sb.append(" leak, contextField=");
                            sb.append(declaredField);
                            return;
                        }
                        return;
                    }
                    e eVar = a.Companion;
                    e.a(this.f39029b, new AnonymousClass1(declaredField));
                } catch (Exception e) {
                    d.a aVar2 = d.a.f36146a;
                    if (d.a.a() != null) {
                        StringBuilder sb2 = new StringBuilder("Could not fix the ");
                        sb2.append(b.this.name());
                        sb2.append(" leak");
                    }
                }
            }
        }

        b(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.a
        protected final void apply(Application application) {
            kotlin.jvm.internal.p.c(application, "application");
            if (!(!kotlin.jvm.internal.p.a((Object) Build.MANUFACTURER, (Object) a.SAMSUNG)) && Build.VERSION.SDK_INT == 22) {
                a.backgroundExecutor.execute(new RunnableC0731a(application));
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¨\u0006\u0006"}, d2 = {"Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$c.class */
    static final class c extends a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$c$a.class */
        static final class RunnableC0732a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Application f39033b;

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/app/Activity;", "invoke"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$c$a$1  reason: invalid class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$c$a$1.class */
            static final class AnonymousClass1 extends r implements Function1<Activity, v> {

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Field f39035b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Field field) {
                    super(1);
                    this.f39035b = field;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ v invoke(Activity activity) {
                    Activity it2 = activity;
                    kotlin.jvm.internal.p.c(it2, "it");
                    try {
                        this.f39035b.set(null, null);
                    } catch (Exception e) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(c.this.name());
                            sb.append(" leak");
                        }
                    }
                    return v.f38654a;
                }
            }

            RunnableC0732a(Application application) {
                this.f39033b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Class<?> cls = Class.forName("android.widget.BubblePopupHelper");
                    kotlin.jvm.internal.p.a((Object) cls, "Class.forName(\"android.widget.BubblePopupHelper\")");
                    Field declaredField = cls.getDeclaredField("sHelper");
                    kotlin.jvm.internal.p.a((Object) declaredField, "helperClass.getDeclaredField(\"sHelper\")");
                    declaredField.setAccessible(true);
                    e eVar = a.Companion;
                    e.a(this.f39033b, new AnonymousClass1(declaredField));
                } catch (Exception e) {
                    d.a aVar = d.a.f36146a;
                    if (d.a.a() != null) {
                        StringBuilder sb = new StringBuilder("Could not fix the ");
                        sb.append(c.this.name());
                        sb.append(" leak");
                    }
                }
            }
        }

        c(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.a
        protected final void apply(Application application) {
            int i;
            kotlin.jvm.internal.p.c(application, "application");
            if (!(!kotlin.jvm.internal.p.a((Object) Build.MANUFACTURER, (Object) a.LG)) && 19 <= (i = Build.VERSION.SDK_INT) && 21 >= i) {
                a.backgroundExecutor.execute(new RunnableC0732a(application));
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001:\u0001#B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J%\u0010\u0013\u001a\u00020\n*\u00020\f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u0015H��¢\u0006\u0002\b\u0017J\u001a\u0010\u0018\u001a\u00020\n*\u00020\u00192\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u001a\u0010\u001c\u001a\u00020\n*\u00020\u00192\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\u001a\u0010\u001e\u001a\u00020\n*\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\f\u0010!\u001a\u00020\"*\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lleakcanary/AndroidLeakFixes$Companion;", "", "()V", "LG", "", "SAMSUNG", "backgroundExecutor", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "applyFixes", "", "application", "Landroid/app/Application;", "fixes", "", "Lleakcanary/AndroidLeakFixes;", "findAllHandlerThreads", "", "Landroid/os/HandlerThread;", "onActivityDestroyed", "block", "Lkotlin/Function1;", "Landroid/app/Activity;", "onActivityDestroyed$plumber_android_release", "onContentChanged", "Landroid/view/Window;", "Lkotlin/Function0;", "", "onDecorViewReady", "callback", "onEachIdle", "Landroid/os/Handler;", "onIdle", "wrapCallback", "Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;", "WindowDelegateCallback", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$e.class */
    public static final class e {

        @Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fH\u0096\u0001J\u0019\u0010\u000e\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000f0\u000fH\u0096\u0001J\u0019\u0010\u0010\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000f0\u000fH\u0096\u0001J\u0019\u0010\u0011\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u00120\u0012H\u0096\u0001J\u0019\u0010\u0013\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fH\u0096\u0001J\u0019\u0010\u0014\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fH\u0096\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u00170\u0017H\u0096\u0001J\u0019\u0010\u0018\u001a\u00020\u00162\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u00170\u0017H\u0096\u0001J\t\u0010\u0019\u001a\u00020\u0016H\u0096\u0001J\b\u0010\u001a\u001a\u00020\u0016H\u0016J#\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J\u0013\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u000b\u001a\u00020\u001cH\u0097\u0001J\t\u0010!\u001a\u00020\u0016H\u0096\u0001J#\u0010\"\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010#0#H\u0096\u0001J#\u0010$\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J#\u0010%\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J5\u0010&\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010 0 2\u0010\b\u0001\u0010'\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J\t\u0010(\u001a\u00020\u0007H\u0096\u0001J\u0019\u0010(\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010)0)H\u0096\u0001J\u0019\u0010*\u001a\u00020\u00162\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010+0+H\u0096\u0001J\u0011\u0010,\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u0007H\u0096\u0001J\u001b\u0010-\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010.0.H\u0097\u0001J#\u0010-\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010.0.2\u0006\u0010\u001d\u001a\u00020\u001cH\u0097\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u001d\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006/"}, d2 = {"Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;", "Landroid/view/Window$Callback;", "delegate", "(Landroid/view/Window$Callback;)V", "onContentChangedCallbacks", "", "Lkotlin/Function0;", "", "getOnContentChangedCallbacks", "()Ljava/util/List;", "dispatchGenericMotionEvent", "p0", "Landroid/view/MotionEvent;", "kotlin.jvm.PlatformType", "dispatchKeyEvent", "Landroid/view/KeyEvent;", "dispatchKeyShortcutEvent", "dispatchPopulateAccessibilityEvent", "Landroid/view/accessibility/AccessibilityEvent;", "dispatchTouchEvent", "dispatchTrackballEvent", "onActionModeFinished", "", "Landroid/view/ActionMode;", "onActionModeStarted", "onAttachedToWindow", "onContentChanged", "onCreatePanelMenu", "", "p1", "Landroid/view/Menu;", "onCreatePanelView", "Landroid/view/View;", "onDetachedFromWindow", "onMenuItemSelected", "Landroid/view/MenuItem;", "onMenuOpened", "onPanelClosed", "onPreparePanel", "p2", "onSearchRequested", "Landroid/view/SearchEvent;", "onWindowAttributesChanged", "Landroid/view/WindowManager$LayoutParams;", "onWindowFocusChanged", "onWindowStartingActionMode", "Landroid/view/ActionMode$Callback;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$a.class */
        static final class Window$CallbackC0733a implements Window.Callback {

            /* renamed from: a  reason: collision with root package name */
            final List<Function0<Boolean>> f39036a = new ArrayList();

            /* renamed from: b  reason: collision with root package name */
            private final Window.Callback f39037b;

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "callback", "Lkotlin/Function0;", "invoke"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$a$a.class */
            static final class C0734a extends r implements Function1<Function0<? extends Boolean>, Boolean> {

                /* renamed from: a  reason: collision with root package name */
                public static final C0734a f39038a = new C0734a();

                C0734a() {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Boolean invoke(Function0<? extends Boolean> function0) {
                    Function0<? extends Boolean> callback = function0;
                    kotlin.jvm.internal.p.c(callback, "callback");
                    return Boolean.valueOf(!((Boolean) callback.invoke()).booleanValue());
                }
            }

            public Window$CallbackC0733a(Window.Callback delegate) {
                kotlin.jvm.internal.p.c(delegate, "delegate");
                this.f39037b = delegate;
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
                return this.f39037b.dispatchGenericMotionEvent(motionEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
                return this.f39037b.dispatchKeyEvent(keyEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
                return this.f39037b.dispatchKeyShortcutEvent(keyEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                return this.f39037b.dispatchPopulateAccessibilityEvent(accessibilityEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return this.f39037b.dispatchTouchEvent(motionEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
                return this.f39037b.dispatchTrackballEvent(motionEvent);
            }

            @Override // android.view.Window.Callback
            public final void onActionModeFinished(ActionMode actionMode) {
                this.f39037b.onActionModeFinished(actionMode);
            }

            @Override // android.view.Window.Callback
            public final void onActionModeStarted(ActionMode actionMode) {
                this.f39037b.onActionModeStarted(actionMode);
            }

            @Override // android.view.Window.Callback
            public final void onAttachedToWindow() {
                this.f39037b.onAttachedToWindow();
            }

            @Override // android.view.Window.Callback
            public final void onContentChanged() {
                kotlin.a.n.a((List) this.f39036a, (Function1) C0734a.f39038a);
                this.f39037b.onContentChanged();
            }

            @Override // android.view.Window.Callback
            public final boolean onCreatePanelMenu(int i, Menu menu) {
                return this.f39037b.onCreatePanelMenu(i, menu);
            }

            @Override // android.view.Window.Callback
            public final View onCreatePanelView(int i) {
                return this.f39037b.onCreatePanelView(i);
            }

            @Override // android.view.Window.Callback
            public final void onDetachedFromWindow() {
                this.f39037b.onDetachedFromWindow();
            }

            @Override // android.view.Window.Callback
            public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
                return this.f39037b.onMenuItemSelected(i, menuItem);
            }

            @Override // android.view.Window.Callback
            public final boolean onMenuOpened(int i, Menu menu) {
                return this.f39037b.onMenuOpened(i, menu);
            }

            @Override // android.view.Window.Callback
            public final void onPanelClosed(int i, Menu menu) {
                this.f39037b.onPanelClosed(i, menu);
            }

            @Override // android.view.Window.Callback
            public final boolean onPreparePanel(int i, View view, Menu menu) {
                return this.f39037b.onPreparePanel(i, view, menu);
            }

            @Override // android.view.Window.Callback
            public final boolean onSearchRequested() {
                return this.f39037b.onSearchRequested();
            }

            @Override // android.view.Window.Callback
            public final boolean onSearchRequested(SearchEvent searchEvent) {
                return this.f39037b.onSearchRequested(searchEvent);
            }

            @Override // android.view.Window.Callback
            public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
                this.f39037b.onWindowAttributesChanged(layoutParams);
            }

            @Override // android.view.Window.Callback
            public final void onWindowFocusChanged(boolean z) {
                this.f39037b.onWindowFocusChanged(z);
            }

            @Override // android.view.Window.Callback
            public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
                return this.f39037b.onWindowStartingActionMode(callback);
            }

            @Override // android.view.Window.Callback
            public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
                return this.f39037b.onWindowStartingActionMode(callback, i);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��!\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b*\u0001��\b\n\u0018��2\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u001b\u0010\u000e\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001¨\u0006\u0010"}, d2 = {"leakcanary/AndroidLeakFixes$Companion$onActivityDestroyed$1", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "p0", "Landroid/app/Activity;", "kotlin.jvm.PlatformType", "p1", "Landroid/os/Bundle;", "onActivityDestroyed", "activity", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$b.class */
        public static final class b implements Application.ActivityLifecycleCallbacks {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function1 f39039a;

            /* renamed from: b  reason: collision with root package name */
            private final /* synthetic */ Application.ActivityLifecycleCallbacks f39040b;

            b(Function1 function1) {
                InvocationHandler invocationHandler;
                this.f39039a = function1;
                ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
                invocationHandler = leakcanary.internal.c.f39085a;
                Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
                if (newProxyInstance != null) {
                    this.f39040b = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                this.f39040b.onActivityCreated(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
                kotlin.jvm.internal.p.c(activity, "activity");
                this.f39039a.invoke(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                this.f39040b.onActivityPaused(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                this.f39040b.onActivityResumed(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                this.f39040b.onActivitySaveInstanceState(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
                this.f39040b.onActivityStarted(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                this.f39040b.onActivityStopped(activity);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$c.class */
        static final class c extends r implements Function0<Boolean> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0 f39041a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(Function0 function0) {
                super(0);
                this.f39041a = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ Boolean invoke() {
                this.f39041a.invoke();
                return Boolean.FALSE;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$d.class */
        static final class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0 f39042a;

            d(Function0 function0) {
                this.f39042a = function0;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Looper.myQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: leakcanary.a.e.d.1
                    @Override // android.os.MessageQueue.IdleHandler
                    public final boolean queueIdle() {
                        d.this.f39042a.invoke();
                        return true;
                    }
                });
            }
        }

        private e() {
        }

        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void a(Application application) {
            EnumSet allOf = EnumSet.allOf(a.class);
            kotlin.jvm.internal.p.a((Object) allOf, "EnumSet.allOf(AndroidLeakFixes::class.java)");
            EnumSet<a> fixes = allOf;
            kotlin.jvm.internal.p.c(application, "application");
            kotlin.jvm.internal.p.c(fixes, "fixes");
            leakcanary.internal.b.a();
            for (a aVar : fixes) {
                if (!aVar.applied) {
                    aVar.apply(application);
                    aVar.applied = true;
                } else {
                    d.a aVar2 = d.a.f36146a;
                    if (d.a.a() != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(aVar.name());
                        sb.append(" leak fix already applied.");
                    }
                }
            }
        }

        public static void a(Application onActivityDestroyed, Function1<? super Activity, v> block) {
            kotlin.jvm.internal.p.c(onActivityDestroyed, "$this$onActivityDestroyed");
            kotlin.jvm.internal.p.c(block, "block");
            onActivityDestroyed.registerActivityLifecycleCallbacks(new b(block));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "runnable", "Ljava/lang/Runnable;", "newThread"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$f.class */
    static final class f implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public static final f f39044a = new f();

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"leakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1", "Ljava/lang/Thread;", "run", "", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$f$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$f$a.class */
        public static final class C0735a extends Thread {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f39045a;

            C0735a(Runnable runnable) {
                this.f39045a = runnable;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Process.setThreadPriority(10);
                this.f39045a.run();
            }
        }

        f() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            C0735a aVar = new C0735a(runnable);
            aVar.setName("plumber-android-leaks");
            return aVar;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¨\u0006\u0006"}, d2 = {"Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$j.class */
    static final class j extends a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$j$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$j$a.class */
        static final class RunnableC0742a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Application f39061b;

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/app/Activity;", "invoke"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$j$a$1  reason: invalid class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$j$a$1.class */
            static final class AnonymousClass1 extends r implements Function1<Activity, v> {

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Field f39063b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Field field) {
                    super(1);
                    this.f39063b = field;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ v invoke(Activity activity) {
                    Activity it2 = activity;
                    kotlin.jvm.internal.p.c(it2, "it");
                    try {
                        this.f39063b.set(null, null);
                    } catch (Exception e) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(j.this.name());
                            sb.append(" leak");
                        }
                    }
                    return v.f38654a;
                }
            }

            RunnableC0742a(Application application) {
                this.f39061b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Field declaredField = TextView.class.getDeclaredField("mLastHoveredView");
                    kotlin.jvm.internal.p.a((Object) declaredField, "TextView::class.java.get…Field(\"mLastHoveredView\")");
                    declaredField.setAccessible(true);
                    e eVar = a.Companion;
                    e.a(this.f39061b, new AnonymousClass1(declaredField));
                } catch (Exception e) {
                    d.a aVar = d.a.f36146a;
                    if (d.a.a() != null) {
                        StringBuilder sb = new StringBuilder("Could not fix the ");
                        sb.append(j.this.name());
                        sb.append(" leak");
                    }
                }
            }
        }

        j(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.a
        protected final void apply(Application application) {
            int i;
            kotlin.jvm.internal.p.c(application, "application");
            if (!(!kotlin.jvm.internal.p.a((Object) Build.MANUFACTURER, (Object) a.SAMSUNG)) && 19 <= (i = Build.VERSION.SDK_INT) && 21 >= i) {
                a.backgroundExecutor.execute(new RunnableC0742a(application));
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¨\u0006\u0006"}, d2 = {"Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$k.class */
    static final class k extends a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$k$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$k$a.class */
        static final class RunnableC0743a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Application f39065b;

            RunnableC0743a(Application application) {
                this.f39065b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Class<?> cls = Class.forName("android.media.session.MediaSessionLegacyHelper");
                    kotlin.jvm.internal.p.a((Object) cls, "Class.forName(\"android.m…ediaSessionLegacyHelper\")");
                    Method declaredMethod = cls.getDeclaredMethod("getHelper", Context.class);
                    kotlin.jvm.internal.p.a((Object) declaredMethod, "clazz.getDeclaredMethod(…er\", Context::class.java)");
                    declaredMethod.invoke(null, this.f39065b);
                } catch (Exception e) {
                    d.a aVar = d.a.f36146a;
                    if (d.a.a() != null) {
                        StringBuilder sb = new StringBuilder("Could not fix the ");
                        sb.append(k.this.name());
                        sb.append(" leak");
                    }
                }
            }
        }

        k(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.a
        protected final void apply(Application application) {
            kotlin.jvm.internal.p.c(application, "application");
            if (Build.VERSION.SDK_INT == 21) {
                a.backgroundExecutor.execute(new RunnableC0743a(application));
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¨\u0006\u0006"}, d2 = {"Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$n.class */
    static final class n extends a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
        /* renamed from: leakcanary.a$n$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$n$a.class */
        static final class RunnableC0745a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Application f39072b;

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/app/Activity;", "invoke"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$n$a$1  reason: invalid class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$n$a$1.class */
            static final class AnonymousClass1 extends r implements Function1<Activity, v> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f39073a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(Object obj) {
                    super(1);
                    this.f39073a = obj;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ v invoke(Activity activity) {
                    Activity it2 = activity;
                    kotlin.jvm.internal.p.c(it2, "it");
                    synchronized (this.f39073a) {
                        int length = Array.getLength(this.f39073a);
                        for (int i = 0; i < length; i++) {
                            Array.set(this.f39073a, i, null);
                        }
                        v vVar = v.f38654a;
                    }
                    return v.f38654a;
                }
            }

            RunnableC0745a(Application application) {
                this.f39072b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Class<?> cls = Class.forName("android.text.TextLine");
                    kotlin.jvm.internal.p.a((Object) cls, "Class.forName(\"android.text.TextLine\")");
                    Field declaredField = cls.getDeclaredField("sCached");
                    kotlin.jvm.internal.p.a((Object) declaredField, "textLineClass.getDeclaredField(\"sCached\")");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(null);
                    if (obj == null || !obj.getClass().isArray()) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(n.this.name());
                            sb.append(" leak, sCached=");
                            sb.append(obj);
                            return;
                        }
                        return;
                    }
                    e eVar = a.Companion;
                    e.a(this.f39072b, new AnonymousClass1(obj));
                } catch (Exception e) {
                    d.a aVar2 = d.a.f36146a;
                    if (d.a.a() != null) {
                        StringBuilder sb2 = new StringBuilder("Could not fix the ");
                        sb2.append(n.this.name());
                        sb2.append(" leak");
                    }
                }
            }
        }

        n(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.a
        protected final void apply(Application application) {
            kotlin.jvm.internal.p.c(application, "application");
            if (Build.VERSION.SDK_INT < 28) {
                a.backgroundExecutor.execute(new RunnableC0745a(application));
            }
        }
    }

    static {
        k kVar = new k("MEDIA_SESSION_LEGACY_HELPER", 0);
        MEDIA_SESSION_LEGACY_HELPER = kVar;
        n nVar = new n("TEXT_LINE_POOL", 1);
        TEXT_LINE_POOL = nVar;
        a oVar = new a("USER_MANAGER", 2) { // from class: leakcanary.a.o
            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                int i2 = Build.VERSION.SDK_INT;
                if (17 <= i2 && 25 >= i2) {
                    try {
                        Method declaredMethod = UserManager.class.getDeclaredMethod("get", Context.class);
                        kotlin.jvm.internal.p.a((Object) declaredMethod, "UserManager::class.java.…et\", Context::class.java)");
                        declaredMethod.invoke(null, application);
                    } catch (Exception e2) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(name());
                            sb.append(" leak");
                        }
                    }
                }
            }
        };
        USER_MANAGER = oVar;
        a gVar = new a("FLUSH_HANDLER_THREADS", 3) { // from class: leakcanary.a.g

            @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$g$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$g$a.class */
            static final class RunnableC0736a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Set f39046a;

                @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
                /* renamed from: leakcanary.a$g$a$a  reason: collision with other inner class name */
                /* loaded from: classes5-dex2jar.jar:leakcanary/a$g$a$a.class */
                static final class C0737a extends r implements Function0<v> {

                    /* renamed from: a  reason: collision with root package name */
                    final /* synthetic */ HandlerThread f39047a;

                    /* renamed from: b  reason: collision with root package name */
                    final /* synthetic */ ab.a f39048b;

                    /* renamed from: c  reason: collision with root package name */
                    final /* synthetic */ Handler f39049c;

                    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
                    /* renamed from: leakcanary.a$g$a$a$a  reason: collision with other inner class name */
                    /* loaded from: classes5-dex2jar.jar:leakcanary/a$g$a$a$a.class */
                    static final class RunnableC0738a implements Runnable {
                        RunnableC0738a() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            C0737a.this.f39048b.f36776a = true;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0737a(HandlerThread handlerThread, ab.a aVar, Handler handler) {
                        super(0);
                        this.f39047a = handlerThread;
                        this.f39048b = aVar;
                        this.f39049c = handler;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ v invoke() {
                        if (this.f39047a.isAlive() && this.f39048b.f36776a) {
                            this.f39048b.f36776a = false;
                            try {
                                if (!this.f39049c.postDelayed(new RunnableC0738a(), 1000L)) {
                                    d.a aVar = d.a.f36146a;
                                    if (d.a.a() != null) {
                                        new StringBuilder("Failed to post to ").append(this.f39047a.getName());
                                    }
                                }
                            } catch (RuntimeException e) {
                                d.a aVar2 = d.a.f36146a;
                                if (d.a.a() != null) {
                                    new StringBuilder("Failed to post to ").append(this.f39047a.getName());
                                }
                            }
                        }
                        return v.f38654a;
                    }
                }

                RunnableC0736a(Set set) {
                    this.f39046a = set;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    e eVar = a.Companion;
                    Thread currentThread = Thread.currentThread();
                    kotlin.jvm.internal.p.a((Object) currentThread, "Thread.currentThread()");
                    ThreadGroup threadGroup = currentThread.getThreadGroup();
                    ThreadGroup threadGroup2 = threadGroup;
                    if (threadGroup == null) {
                        kotlin.jvm.internal.p.a();
                        threadGroup2 = threadGroup;
                    }
                    while (threadGroup2.getParent() != null) {
                        threadGroup2 = threadGroup2.getParent();
                        kotlin.jvm.internal.p.a((Object) threadGroup2, "rootGroup.parent");
                    }
                    Thread[] threadArr = new Thread[threadGroup2.activeCount()];
                    while (threadGroup2.enumerate(threadArr, true) == threadArr.length) {
                        threadArr = new Thread[threadArr.length * 2];
                    }
                    ArrayList arrayList = new ArrayList();
                    int length = threadArr.length;
                    int i = 0;
                    while (true) {
                        HandlerThread handlerThread = null;
                        if (i >= length) {
                            break;
                        }
                        Thread thread = threadArr[i];
                        if (thread instanceof HandlerThread) {
                            handlerThread = (HandlerThread) thread;
                        }
                        if (handlerThread != null) {
                            arrayList.add(handlerThread);
                        }
                        i++;
                    }
                    ArrayList<HandlerThread> arrayList2 = arrayList;
                    ArrayList arrayList3 = new ArrayList();
                    for (HandlerThread handlerThread2 : arrayList2) {
                        int threadId = handlerThread2.getThreadId();
                        kotlin.n a2 = (threadId == -1 || this.f39046a.contains(Integer.valueOf(threadId))) ? null : t.a(Integer.valueOf(threadId), handlerThread2);
                        if (a2 != null) {
                            arrayList3.add(a2);
                        }
                    }
                    ArrayList arrayList4 = arrayList3;
                    Set set = this.f39046a;
                    ArrayList<kotlin.n> arrayList5 = arrayList4;
                    ArrayList arrayList6 = new ArrayList(kotlin.a.n.a((Iterable) arrayList5, 10));
                    for (kotlin.n nVar : arrayList5) {
                        arrayList6.add(Integer.valueOf(((Number) nVar.f36810a).intValue()));
                    }
                    kotlin.a.n.a((Collection) set, (Iterable) arrayList6);
                    ArrayList<HandlerThread> arrayList7 = new ArrayList(kotlin.a.n.a((Iterable) arrayList5, 10));
                    for (kotlin.n nVar2 : arrayList5) {
                        arrayList7.add((HandlerThread) nVar2.f36811b);
                    }
                    for (HandlerThread handlerThread3 : arrayList7) {
                        d.a aVar = d.a.f36146a;
                        if (d.a.a() != null) {
                            new StringBuilder("Setting up flushing for ").append(handlerThread3);
                        }
                        ab.a aVar2 = new ab.a();
                        aVar2.f36776a = true;
                        Handler handler = new Handler(handlerThread3.getLooper());
                        e eVar2 = a.Companion;
                        try {
                            handler.post(new e.d(new C0737a(handlerThread3, aVar2, handler)));
                        } catch (RuntimeException e) {
                        }
                    }
                }
            }

            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                a.backgroundExecutor.scheduleWithFixedDelay(new RunnableC0736a(new LinkedHashSet()), 2L, 3L, TimeUnit.SECONDS);
            }
        };
        FLUSH_HANDLER_THREADS = gVar;
        a aVar = new a("ACCESSIBILITY_NODE_INFO", 4) { // from class: leakcanary.a.a

            @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$a$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$a$a.class */
            static final class RunnableC0730a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                public static final RunnableC0730a f39027a = new RunnableC0730a();

                RunnableC0730a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    for (int i = 0; i < 50; i++) {
                        AccessibilityNodeInfo.obtain();
                    }
                }
            }

            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                if (Build.VERSION.SDK_INT < 28) {
                    a.backgroundExecutor.scheduleAtFixedRate(RunnableC0730a.f39027a, 5L, 5L, TimeUnit.SECONDS);
                }
            }
        };
        ACCESSIBILITY_NODE_INFO = aVar;
        a dVar = new a("CONNECTIVITY_MANAGER", 5) { // from class: leakcanary.a.d
            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                if (Build.VERSION.SDK_INT <= 23) {
                    try {
                        application.getSystemService("connectivity");
                    } catch (Exception e2) {
                        d.a aVar2 = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(name());
                            sb.append(" leak");
                        }
                    }
                }
            }
        };
        CONNECTIVITY_MANAGER = dVar;
        a lVar = new a("SAMSUNG_CLIPBOARD_MANAGER", 6) { // from class: leakcanary.a.l
            @Override // leakcanary.a
            protected final void apply(Application application) {
                int i2;
                kotlin.jvm.internal.p.c(application, "application");
                if (!(!kotlin.jvm.internal.p.a((Object) Build.MANUFACTURER, (Object) a.SAMSUNG)) && 19 <= (i2 = Build.VERSION.SDK_INT) && 21 >= i2) {
                    try {
                        Class<?> cls = Class.forName("android.sec.clipboard.ClipboardUIManager");
                        kotlin.jvm.internal.p.a((Object) cls, "Class.forName(\"android.s…oard.ClipboardUIManager\")");
                        Method declaredMethod = cls.getDeclaredMethod("getInstance", Context.class);
                        kotlin.jvm.internal.p.a((Object) declaredMethod, "managerClass.getDeclared…ce\", Context::class.java)");
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(null, application);
                    } catch (Exception e2) {
                        d.a aVar2 = d.a.f36146a;
                        if (d.a.a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(name());
                            sb.append(" leak");
                        }
                    }
                }
            }
        };
        SAMSUNG_CLIPBOARD_MANAGER = lVar;
        c cVar = new c("BUBBLE_POPUP", 7);
        BUBBLE_POPUP = cVar;
        j jVar = new j("LAST_HOVERED_VIEW", 8);
        LAST_HOVERED_VIEW = jVar;
        b bVar = new b("ACTIVITY_MANAGER", 9);
        ACTIVITY_MANAGER = bVar;
        a pVar = new a("VIEW_LOCATION_HOLDER", 10) { // from class: leakcanary.a.p
            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                leakcanary.b bVar2 = leakcanary.b.f39074a;
                leakcanary.b.a(application);
            }
        };
        VIEW_LOCATION_HOLDER = pVar;
        a iVar = new a("IMM_FOCUSED_VIEW", 11) { // from class: leakcanary.a.i

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n*\u0001��\b\n\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001b\u0010\b\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u0010\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001¨\u0006\u0011"}, d2 = {"leakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "p0", "kotlin.jvm.PlatformType", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "p1", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$i$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$i$a.class */
            public static final class C0740a implements Application.ActivityLifecycleCallbacks {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ InputMethodManager f39054a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Field f39055b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Field f39056c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ Method f39057d;
                private final /* synthetic */ Application.ActivityLifecycleCallbacks e;

                @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
                /* renamed from: leakcanary.a$i$a$a  reason: collision with other inner class name */
                /* loaded from: classes5-dex2jar.jar:leakcanary/a$i$a$a.class */
                static final class C0741a extends r implements Function0<v> {

                    /* renamed from: b  reason: collision with root package name */
                    final /* synthetic */ Activity f39059b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0741a(Activity activity) {
                        super(0);
                        this.f39059b = activity;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ v invoke() {
                        leakcanary.internal.d dVar = new leakcanary.internal.d(C0740a.this.f39054a, C0740a.this.f39055b, C0740a.this.f39056c, C0740a.this.f39057d);
                        Window window = this.f39059b.getWindow();
                        kotlin.jvm.internal.p.a((Object) window, "activity.window");
                        View decorView = window.getDecorView();
                        kotlin.jvm.internal.p.a((Object) decorView, "activity.window.decorView");
                        View rootView = decorView.getRootView();
                        kotlin.jvm.internal.p.a((Object) rootView, "rootView");
                        rootView.getViewTreeObserver().addOnGlobalFocusChangeListener(dVar);
                        return v.f38654a;
                    }
                }

                C0740a(InputMethodManager inputMethodManager, Field field, Field field2, Method method) {
                    InvocationHandler invocationHandler;
                    this.f39054a = inputMethodManager;
                    this.f39055b = field;
                    this.f39056c = field2;
                    this.f39057d = method;
                    ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
                    invocationHandler = leakcanary.internal.c.f39085a;
                    Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
                    if (newProxyInstance != null) {
                        this.e = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityCreated(Activity activity, Bundle bundle) {
                    e.Window$CallbackC0733a aVar;
                    kotlin.jvm.internal.p.c(activity, "activity");
                    e eVar = a.Companion;
                    Window window = activity.getWindow();
                    kotlin.jvm.internal.p.a((Object) window, "activity.window");
                    C0741a aVar2 = new C0741a(activity);
                    if (window.peekDecorView() == null) {
                        e.c cVar = new e.c(aVar2);
                        Window.Callback currentCallback = window.getCallback();
                        if (currentCallback instanceof e.Window$CallbackC0733a) {
                            aVar = (e.Window$CallbackC0733a) currentCallback;
                        } else {
                            kotlin.jvm.internal.p.a((Object) currentCallback, "currentCallback");
                            aVar = new e.Window$CallbackC0733a(currentCallback);
                            window.setCallback(aVar);
                        }
                        aVar.f39036a.add(cVar);
                        return;
                    }
                    aVar2.invoke();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity) {
                    this.e.onActivityDestroyed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPaused(Activity activity) {
                    this.e.onActivityPaused(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityResumed(Activity activity) {
                    this.e.onActivityResumed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    this.e.onActivitySaveInstanceState(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStarted(Activity activity) {
                    this.e.onActivityStarted(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStopped(Activity activity) {
                    this.e.onActivityStopped(activity);
                }
            }

            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                if (Build.VERSION.SDK_INT <= 23) {
                    Object systemService = application.getSystemService("input_method");
                    if (systemService != null) {
                        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                        try {
                            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                            kotlin.jvm.internal.p.a((Object) declaredField, "InputMethodManager::clas…laredField(\"mServedView\")");
                            declaredField.setAccessible(true);
                            Field declaredField2 = InputMethodManager.class.getDeclaredField("mH");
                            kotlin.jvm.internal.p.a((Object) declaredField2, "InputMethodManager::clas…va.getDeclaredField(\"mH\")");
                            declaredField2.setAccessible(true);
                            Method declaredMethod = InputMethodManager.class.getDeclaredMethod("finishInputLocked", new Class[0]);
                            kotlin.jvm.internal.p.a((Object) declaredMethod, "InputMethodManager::clas…thod(\"finishInputLocked\")");
                            declaredMethod.setAccessible(true);
                            Method declaredMethod2 = InputMethodManager.class.getDeclaredMethod("focusIn", View.class);
                            kotlin.jvm.internal.p.a((Object) declaredMethod2, "InputMethodManager::clas…iew::class.java\n        )");
                            declaredMethod2.setAccessible(true);
                            application.registerActivityLifecycleCallbacks(new C0740a(inputMethodManager, declaredField2, declaredField, declaredMethod));
                        } catch (Exception e2) {
                            d.a aVar2 = d.a.f36146a;
                            if (d.a.a() != null) {
                                StringBuilder sb = new StringBuilder("Could not fix the ");
                                sb.append(name());
                                sb.append(" leak");
                            }
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                    }
                }
            }
        };
        IMM_FOCUSED_VIEW = iVar;
        a hVar = new a("IMM_CUR_ROOT_VIEW", 12) { // from class: leakcanary.a.h

            @Metadata(bv = {1, 0, 3}, d1 = {"��!\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b*\u0001��\b\n\u0018��2\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u001b\u0010\u000e\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001¨\u0006\u0010"}, d2 = {"leakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "p0", "Landroid/app/Activity;", "kotlin.jvm.PlatformType", "p1", "Landroid/os/Bundle;", "onActivityDestroyed", "activity", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$h$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$h$a.class */
            public static final class C0739a implements Application.ActivityLifecycleCallbacks {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Field f39051a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ InputMethodManager f39052b;

                /* renamed from: c  reason: collision with root package name */
                private final /* synthetic */ Application.ActivityLifecycleCallbacks f39053c;

                C0739a(Field field, InputMethodManager inputMethodManager) {
                    InvocationHandler invocationHandler;
                    this.f39051a = field;
                    this.f39052b = inputMethodManager;
                    ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
                    invocationHandler = leakcanary.internal.c.f39085a;
                    Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
                    if (newProxyInstance != null) {
                        this.f39053c = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityCreated(Activity activity, Bundle bundle) {
                    this.f39053c.onActivityCreated(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity) {
                    kotlin.jvm.internal.p.c(activity, "activity");
                    try {
                        View view = (View) this.f39051a.get(this.f39052b);
                        if (view != null && activity.getWindow() != null) {
                            Window window = activity.getWindow();
                            kotlin.jvm.internal.p.a((Object) window, "activity.window");
                            if (window.getDecorView() == view) {
                                this.f39051a.set(this.f39052b, null);
                            }
                        }
                    } catch (Exception e) {
                        d.a aVar = d.a.f36146a;
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPaused(Activity activity) {
                    this.f39053c.onActivityPaused(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityResumed(Activity activity) {
                    this.f39053c.onActivityResumed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    this.f39053c.onActivitySaveInstanceState(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStarted(Activity activity) {
                    this.f39053c.onActivityStarted(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStopped(Activity activity) {
                    this.f39053c.onActivityStopped(activity);
                }
            }

            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                if (Build.VERSION.SDK_INT < 29) {
                    Object systemService = application.getSystemService("input_method");
                    if (systemService != null) {
                        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                        try {
                            Field declaredField = InputMethodManager.class.getDeclaredField("mCurRootView");
                            kotlin.jvm.internal.p.a((Object) declaredField, "InputMethodManager::clas…aredField(\"mCurRootView\")");
                            declaredField.setAccessible(true);
                            application.registerActivityLifecycleCallbacks(new C0739a(declaredField, inputMethodManager));
                        } catch (Exception e2) {
                            d.a aVar2 = d.a.f36146a;
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                    }
                }
            }
        };
        IMM_CUR_ROOT_VIEW = hVar;
        a mVar = new a("SPELL_CHECKER", 13) { // from class: leakcanary.a.m

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "Ljava/lang/reflect/Method;", "<anonymous parameter 2>", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V"}, k = 3, mv = {1, 4, 1})
            /* renamed from: leakcanary.a$m$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$m$a.class */
            static final class C0744a implements InvocationHandler {

                /* renamed from: a  reason: collision with root package name */
                public static final C0744a f39066a = new C0744a();

                C0744a() {
                }

                @Override // java.lang.reflect.InvocationHandler
                public final /* synthetic */ Object invoke(Object obj, Method method, Object[] objArr) {
                    kotlin.jvm.internal.p.c(obj, "<anonymous parameter 0>");
                    kotlin.jvm.internal.p.c(method, "<anonymous parameter 1>");
                    d.a aVar = d.a.f36146a;
                    return v.f38654a;
                }
            }

            @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "<anonymous parameter 0>", "method", "Ljava/lang/reflect/Method;", "args", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 1})
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$m$b.class */
            static final class b implements InvocationHandler {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Field f39067a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Field f39068b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Map f39069c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ Object f39070d;
                final /* synthetic */ Field e;
                final /* synthetic */ Object f;

                b(Field field, Field field2, Map map, Object obj, Field field3, Object obj2) {
                    this.f39067a = field;
                    this.f39068b = field2;
                    this.f39069c = map;
                    this.f39070d = obj;
                    this.e = field3;
                    this.f = obj2;
                }

                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    kotlin.jvm.internal.p.c(obj, "<anonymous parameter 0>");
                    kotlin.jvm.internal.p.c(method, "method");
                    try {
                        if (kotlin.jvm.internal.p.a((Object) method.getName(), (Object) "getSpellCheckerService")) {
                            if (objArr == null) {
                                kotlin.jvm.internal.p.a();
                            }
                            Object obj2 = objArr[3];
                            Object obj3 = this.f39067a.get(obj2);
                            if (obj3 == null) {
                                kotlin.jvm.internal.p.a();
                            }
                            Object obj4 = this.f39068b.get(obj3);
                            if (obj4 == null) {
                                kotlin.jvm.internal.p.a();
                            }
                            this.f39069c.put(obj2, obj4);
                        } else if (kotlin.jvm.internal.p.a((Object) method.getName(), (Object) "finishSpellCheckerService")) {
                            if (objArr == null) {
                                kotlin.jvm.internal.p.a();
                            }
                            Object remove = this.f39069c.remove(objArr[0]);
                            if (remove == null) {
                                kotlin.jvm.internal.p.a();
                            }
                            this.e.set(remove, this.f39070d);
                        }
                    } catch (Exception e) {
                        d.a aVar = d.a.f36146a;
                    }
                    try {
                        return objArr != null ? method.invoke(this.f, Arrays.copyOf(objArr, objArr.length)) : method.invoke(this.f, new Object[0]);
                    } catch (InvocationTargetException e2) {
                        Throwable targetException = e2.getTargetException();
                        kotlin.jvm.internal.p.a((Object) targetException, "invocationException.targetException");
                        throw targetException;
                    }
                }
            }

            @Override // leakcanary.a
            protected final void apply(Application application) {
                kotlin.jvm.internal.p.c(application, "application");
                if (Build.VERSION.SDK_INT == 23) {
                    try {
                        Method declaredMethod = TextServicesManager.class.getDeclaredMethod("getInstance", new Class[0]);
                        kotlin.jvm.internal.p.a((Object) declaredMethod, "textServiceClass.getDeclaredMethod(\"getInstance\")");
                        Field declaredField = TextServicesManager.class.getDeclaredField("sService");
                        kotlin.jvm.internal.p.a((Object) declaredField, "textServiceClass.getDeclaredField(\"sService\")");
                        declaredField.setAccessible(true);
                        Class<?> cls = Class.forName("com.android.internal.textservice.ITextServicesManager");
                        kotlin.jvm.internal.p.a((Object) cls, "Class.forName(\"com.andro…ce.ITextServicesManager\")");
                        Class<?> cls2 = Class.forName("android.view.textservice.SpellCheckerSession");
                        kotlin.jvm.internal.p.a((Object) cls2, "Class.forName(\"android.v…ice.SpellCheckerSession\")");
                        Field declaredField2 = cls2.getDeclaredField("mSpellCheckerSessionListener");
                        kotlin.jvm.internal.p.a((Object) declaredField2, "spellCheckSessionClass.g…lCheckerSessionListener\")");
                        declaredField2.setAccessible(true);
                        Class<?> cls3 = Class.forName("android.view.textservice.SpellCheckerSession$SpellCheckerSessionListenerImpl");
                        kotlin.jvm.internal.p.a((Object) cls3, "Class.forName(\n         …ListenerImpl\"\n          )");
                        Field declaredField3 = cls3.getDeclaredField("mHandler");
                        kotlin.jvm.internal.p.a((Object) declaredField3, "spellCheckerSessionListe…DeclaredField(\"mHandler\")");
                        declaredField3.setAccessible(true);
                        Class<?> cls4 = Class.forName("android.view.textservice.SpellCheckerSession$1");
                        kotlin.jvm.internal.p.a((Object) cls4, "Class.forName(\"android.v….SpellCheckerSession\\$1\")");
                        Field declaredField4 = cls4.getDeclaredField("this$0");
                        kotlin.jvm.internal.p.a((Object) declaredField4, "spellCheckSessionHandler…etDeclaredField(\"this$0\")");
                        declaredField4.setAccessible(true);
                        Class<?> cls5 = Class.forName("android.view.textservice.SpellCheckerSession$SpellCheckerSessionListener");
                        kotlin.jvm.internal.p.a((Object) cls5, "Class.forName(\"android.v…lCheckerSessionListener\")");
                        Object newProxyInstance = Proxy.newProxyInstance(cls5.getClassLoader(), new Class[]{cls5}, C0744a.f39066a);
                        kotlin.jvm.internal.p.a(newProxyInstance, "Proxy.newProxyInstance(\n…ssion closed\" }\n        }");
                        declaredMethod.invoke(null, new Object[0]);
                        Object obj = declaredField.get(null);
                        if (obj == null) {
                            kotlin.jvm.internal.p.a();
                        }
                        Object newProxyInstance2 = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new b(declaredField3, declaredField4, new LinkedHashMap(), newProxyInstance, declaredField2, obj));
                        kotlin.jvm.internal.p.a(newProxyInstance2, "Proxy.newProxyInstance(\n…ion\n          }\n        }");
                        declaredField.set(null, newProxyInstance2);
                    } catch (Exception e2) {
                        d.a aVar2 = d.a.f36146a;
                    }
                }
            }
        };
        SPELL_CHECKER = mVar;
        $VALUES = new a[]{kVar, nVar, oVar, gVar, aVar, dVar, lVar, cVar, jVar, bVar, pVar, iVar, hVar, mVar};
    }

    private a(String str, int i2) {
    }

    public /* synthetic */ a(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i2);
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) $VALUES.clone();
    }

    protected abstract void apply(Application application);
}
