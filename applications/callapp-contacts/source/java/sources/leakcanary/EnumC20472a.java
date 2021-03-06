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
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import leakcanary.internal.C20520b;
import leakcanary.internal.C20522c;
import leakcanary.internal.View$OnAttachStateChangeListenerC20524d;
import p499d.C17729a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"?????? \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0087\u0001\u0018?????? \u00172\b\u0012\u0004\u0012\u00020??????0\u0001:\u0001\u0017B\u0007\b\u0002??\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e??\u0006\u0002\n??????j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016??\u0006\u0018"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes;", "", "(Ljava/lang/String;I)V", "applied", "", "apply", "", "application", "Landroid/app/Application;", "MEDIA_SESSION_LEGACY_HELPER", "TEXT_LINE_POOL", "USER_MANAGER", "FLUSH_HANDLER_THREADS", "ACCESSIBILITY_NODE_INFO", "CONNECTIVITY_MANAGER", "SAMSUNG_CLIPBOARD_MANAGER", "BUBBLE_POPUP", "LAST_HOVERED_VIEW", "ACTIVITY_MANAGER", "VIEW_LOCATION_HOLDER", "IMM_FOCUSED_VIEW", "IMM_CUR_ROOT_VIEW", "SPELL_CHECKER", "Companion", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: leakcanary.a */
/* loaded from: classes5-dex2jar.jar:leakcanary/a.class */
public abstract class EnumC20472a extends Enum<EnumC20472a> {
    private static final /* synthetic */ EnumC20472a[] $VALUES;
    public static final EnumC20472a ACCESSIBILITY_NODE_INFO;
    public static final EnumC20472a ACTIVITY_MANAGER;
    public static final EnumC20472a BUBBLE_POPUP;
    public static final EnumC20472a CONNECTIVITY_MANAGER;
    public static final EnumC20472a FLUSH_HANDLER_THREADS;
    public static final EnumC20472a IMM_CUR_ROOT_VIEW;
    public static final EnumC20472a IMM_FOCUSED_VIEW;
    public static final EnumC20472a LAST_HOVERED_VIEW;

    /* renamed from: LG */
    private static final String f66976LG = "LGE";
    public static final EnumC20472a MEDIA_SESSION_LEGACY_HELPER;
    private static final String SAMSUNG = "samsung";
    public static final EnumC20472a SAMSUNG_CLIPBOARD_MANAGER;
    public static final EnumC20472a SPELL_CHECKER;
    public static final EnumC20472a TEXT_LINE_POOL;
    public static final EnumC20472a USER_MANAGER;
    public static final EnumC20472a VIEW_LOCATION_HOLDER;
    private boolean applied;
    public static final C20482e Companion = new C20482e(null);
    private static final ScheduledExecutorService backgroundExecutor = Executors.newSingleThreadScheduledExecutor(ThreadFactoryC20489f.f66994a);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\b??\u0001\u0018??????2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014??\u0006\u0006"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$b */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$b.class */
    public static final class C20475b extends EnumC20472a {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$b$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$b$a.class */
        public static final class RunnableC20476a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Application f66979b;

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u000e\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\u0010??????\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n??\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "activity", "Landroid/app/Activity;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$b$a$1 */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$b$a$1.class */
            static final class C204771 extends AbstractC18526r implements Function1<Activity, C20128v> {

                /* renamed from: b */
                final /* synthetic */ Field f66981b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C204771(Field field) {
                    super(1);
                    RunnableC20476a.this = r4;
                    this.f66981b = field;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ C20128v invoke(Activity activity) {
                    Activity activity2 = activity;
                    C18524p.m3841c(activity2, "activity");
                    try {
                        if (C18524p.m3850a(this.f66981b.get(null), activity2)) {
                            this.f66981b.set(null, null);
                        }
                    } catch (Exception e) {
                        C17729a c17729a = C17729a.f62585a;
                        if (C17729a.m4772a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(C20475b.this.name());
                            sb.append(" leak");
                        }
                    }
                    return C20128v.f66529a;
                }
            }

            RunnableC20476a(Application application) {
                C20475b.this = r4;
                this.f66979b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Field declaredField = this.f66979b.getSystemService("activity").getClass().getDeclaredField("mContext");
                    C18524p.m3849a((Object) declaredField, "application\n            ???DeclaredField(\"mContext\")");
                    declaredField.setAccessible(true);
                    if ((declaredField.getModifiers() | 8) == declaredField.getModifiers()) {
                        C20482e c20482e = EnumC20472a.Companion;
                        C20482e.m650a(this.f66979b, new C204771(declaredField));
                        return;
                    }
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(C20475b.this.name());
                    sb.append(" leak, contextField=");
                    sb.append(declaredField);
                } catch (Exception e) {
                    C17729a c17729a2 = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder("Could not fix the ");
                    sb2.append(C20475b.this.name());
                    sb2.append(" leak");
                }
            }
        }

        C20475b(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.EnumC20472a
        protected final void apply(Application application) {
            C18524p.m3841c(application, "application");
            if ((!C18524p.m3850a((Object) Build.MANUFACTURER, (Object) EnumC20472a.SAMSUNG)) || Build.VERSION.SDK_INT != 22) {
                return;
            }
            EnumC20472a.backgroundExecutor.execute(new RunnableC20476a(application));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\b??\u0001\u0018??????2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014??\u0006\u0006"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$c */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$c.class */
    public static final class C20478c extends EnumC20472a {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$c$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$c$a.class */
        public static final class RunnableC20479a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Application f66983b;

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u000e\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\u0010??????\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n??\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/app/Activity;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$c$a$1 */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$c$a$1.class */
            static final class C204801 extends AbstractC18526r implements Function1<Activity, C20128v> {

                /* renamed from: b */
                final /* synthetic */ Field f66985b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C204801(Field field) {
                    super(1);
                    RunnableC20479a.this = r4;
                    this.f66985b = field;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ C20128v invoke(Activity activity) {
                    Activity it2 = activity;
                    C18524p.m3841c(it2, "it");
                    try {
                        this.f66985b.set(null, null);
                    } catch (Exception e) {
                        C17729a c17729a = C17729a.f62585a;
                        if (C17729a.m4772a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(C20478c.this.name());
                            sb.append(" leak");
                        }
                    }
                    return C20128v.f66529a;
                }
            }

            RunnableC20479a(Application application) {
                C20478c.this = r4;
                this.f66983b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Class<?> cls = Class.forName("android.widget.BubblePopupHelper");
                    C18524p.m3849a((Object) cls, "Class.forName(\"android.widget.BubblePopupHelper\")");
                    Field declaredField = cls.getDeclaredField("sHelper");
                    C18524p.m3849a((Object) declaredField, "helperClass.getDeclaredField(\"sHelper\")");
                    declaredField.setAccessible(true);
                    C20482e c20482e = EnumC20472a.Companion;
                    C20482e.m650a(this.f66983b, new C204801(declaredField));
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(C20478c.this.name());
                    sb.append(" leak");
                }
            }
        }

        C20478c(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.EnumC20472a
        protected final void apply(Application application) {
            int i;
            C18524p.m3841c(application, "application");
            if ((!C18524p.m3850a((Object) Build.MANUFACTURER, (Object) EnumC20472a.f66976LG)) || 19 > (i = Build.VERSION.SDK_INT) || 21 < i) {
                return;
            }
            EnumC20472a.backgroundExecutor.execute(new RunnableC20479a(application));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????j\n\u0002\u0018\u0002\n\u0002\u0010??????\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\"\n\u0002\u0018\u0002\n??????\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018??????2\u00020\u0001:\u0001#B\u0007\b\u0002??\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J%\u0010\u0013\u001a\u00020\n*\u00020\f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u0015H????????\u0006\u0002\b\u0017J\u001a\u0010\u0018\u001a\u00020\n*\u00020\u00192\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u001a\u0010\u001c\u001a\u00020\n*\u00020\u00192\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\u001a\u0010\u001e\u001a\u00020\n*\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\f\u0010!\u001a\u00020\"*\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T??\u0006\u0002\n??????R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T??\u0006\u0002\n??????R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004??\u0006\u0002\n????????\u0006$"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$Companion;", "", "()V", "LG", "", "SAMSUNG", "backgroundExecutor", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "applyFixes", "", "application", "Landroid/app/Application;", "fixes", "", "Lleakcanary/AndroidLeakFixes;", "findAllHandlerThreads", "", "Landroid/os/HandlerThread;", "onActivityDestroyed", "block", "Lkotlin/Function1;", "Landroid/app/Activity;", "onActivityDestroyed$plumber_android_release", "onContentChanged", "Landroid/view/Window;", "Lkotlin/Function0;", "", "onDecorViewReady", "callback", "onEachIdle", "Landroid/os/Handler;", "onIdle", "wrapCallback", "Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;", "WindowDelegateCallback", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$e */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$e.class */
    public static final class C20482e {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n??????\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n??????\b\u0002\u0018??????2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001??\u0006\u0002\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fH\u0096\u0001J\u0019\u0010\u000e\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000f0\u000fH\u0096\u0001J\u0019\u0010\u0010\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000f0\u000fH\u0096\u0001J\u0019\u0010\u0011\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u00120\u0012H\u0096\u0001J\u0019\u0010\u0013\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fH\u0096\u0001J\u0019\u0010\u0014\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fH\u0096\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u00170\u0017H\u0096\u0001J\u0019\u0010\u0018\u001a\u00020\u00162\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u00170\u0017H\u0096\u0001J\t\u0010\u0019\u001a\u00020\u0016H\u0096\u0001J\b\u0010\u001a\u001a\u00020\u0016H\u0016J#\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J\u0013\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u000b\u001a\u00020\u001cH\u0097\u0001J\t\u0010!\u001a\u00020\u0016H\u0096\u0001J#\u0010\"\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010#0#H\u0096\u0001J#\u0010$\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J#\u0010%\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J5\u0010&\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u001c2\u0010\b\u0001\u0010\u001d\u001a\n \r*\u0004\u0018\u00010 0 2\u0010\b\u0001\u0010'\u001a\n \r*\u0004\u0018\u00010\u001e0\u001eH\u0096\u0001J\t\u0010(\u001a\u00020\u0007H\u0096\u0001J\u0019\u0010(\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010)0)H\u0096\u0001J\u0019\u0010*\u001a\u00020\u00162\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010+0+H\u0096\u0001J\u0011\u0010,\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u0007H\u0096\u0001J\u001b\u0010-\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010.0.H\u0097\u0001J#\u0010-\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u000b\u001a\n \r*\u0004\u0018\u00010.0.2\u0006\u0010\u001d\u001a\u00020\u001cH\u0097\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004??\u0006\u0002\n??????R\u001d\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005??\u0006\b\n??????\u001a\u0004\b\b\u0010\t??\u0006/"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;", "Landroid/view/Window$Callback;", "delegate", "(Landroid/view/Window$Callback;)V", "onContentChangedCallbacks", "", "Lkotlin/Function0;", "", "getOnContentChangedCallbacks", "()Ljava/util/List;", "dispatchGenericMotionEvent", "p0", "Landroid/view/MotionEvent;", "kotlin.jvm.PlatformType", "dispatchKeyEvent", "Landroid/view/KeyEvent;", "dispatchKeyShortcutEvent", "dispatchPopulateAccessibilityEvent", "Landroid/view/accessibility/AccessibilityEvent;", "dispatchTouchEvent", "dispatchTrackballEvent", "onActionModeFinished", "", "Landroid/view/ActionMode;", "onActionModeStarted", "onAttachedToWindow", "onContentChanged", "onCreatePanelMenu", "", "p1", "Landroid/view/Menu;", "onCreatePanelView", "Landroid/view/View;", "onDetachedFromWindow", "onMenuItemSelected", "Landroid/view/MenuItem;", "onMenuOpened", "onPanelClosed", "onPreparePanel", "p2", "onSearchRequested", "Landroid/view/SearchEvent;", "onWindowAttributesChanged", "Landroid/view/WindowManager$LayoutParams;", "onWindowFocusChanged", "onWindowStartingActionMode", "Landroid/view/ActionMode$Callback;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$e$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$a.class */
        static final class Window$CallbackC20483a implements Window.Callback {

            /* renamed from: a */
            final List<Function0<Boolean>> f66986a = new ArrayList();

            /* renamed from: b */
            private final Window.Callback f66987b;

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u000e\n??????\n\u0002\u0010\u000b\n??????\n\u0002\u0018\u0002\n??????\u0010??????\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\n??\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "callback", "Lkotlin/Function0;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$e$a$a */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$a$a.class */
            static final class C20484a extends AbstractC18526r implements Function1<Function0<? extends Boolean>, Boolean> {

                /* renamed from: a */
                public static final C20484a f66988a = new C20484a();

                C20484a() {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Boolean invoke(Function0<? extends Boolean> function0) {
                    Function0<? extends Boolean> callback = function0;
                    C18524p.m3841c(callback, "callback");
                    return Boolean.valueOf(!callback.invoke().booleanValue());
                }
            }

            public Window$CallbackC20483a(Window.Callback delegate) {
                C18524p.m3841c(delegate, "delegate");
                this.f66987b = delegate;
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
                return this.f66987b.dispatchGenericMotionEvent(motionEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
                return this.f66987b.dispatchKeyEvent(keyEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
                return this.f66987b.dispatchKeyShortcutEvent(keyEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                return this.f66987b.dispatchPopulateAccessibilityEvent(accessibilityEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return this.f66987b.dispatchTouchEvent(motionEvent);
            }

            @Override // android.view.Window.Callback
            public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
                return this.f66987b.dispatchTrackballEvent(motionEvent);
            }

            @Override // android.view.Window.Callback
            public final void onActionModeFinished(ActionMode actionMode) {
                this.f66987b.onActionModeFinished(actionMode);
            }

            @Override // android.view.Window.Callback
            public final void onActionModeStarted(ActionMode actionMode) {
                this.f66987b.onActionModeStarted(actionMode);
            }

            @Override // android.view.Window.Callback
            public final void onAttachedToWindow() {
                this.f66987b.onAttachedToWindow();
            }

            @Override // android.view.Window.Callback
            public final void onContentChanged() {
                C18282n.m4156a((List) this.f66986a, (Function1) C20484a.f66988a);
                this.f66987b.onContentChanged();
            }

            @Override // android.view.Window.Callback
            public final boolean onCreatePanelMenu(int i, Menu menu) {
                return this.f66987b.onCreatePanelMenu(i, menu);
            }

            @Override // android.view.Window.Callback
            public final View onCreatePanelView(int i) {
                return this.f66987b.onCreatePanelView(i);
            }

            @Override // android.view.Window.Callback
            public final void onDetachedFromWindow() {
                this.f66987b.onDetachedFromWindow();
            }

            @Override // android.view.Window.Callback
            public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
                return this.f66987b.onMenuItemSelected(i, menuItem);
            }

            @Override // android.view.Window.Callback
            public final boolean onMenuOpened(int i, Menu menu) {
                return this.f66987b.onMenuOpened(i, menu);
            }

            @Override // android.view.Window.Callback
            public final void onPanelClosed(int i, Menu menu) {
                this.f66987b.onPanelClosed(i, menu);
            }

            @Override // android.view.Window.Callback
            public final boolean onPreparePanel(int i, View view, Menu menu) {
                return this.f66987b.onPreparePanel(i, view, menu);
            }

            @Override // android.view.Window.Callback
            public final boolean onSearchRequested() {
                return this.f66987b.onSearchRequested();
            }

            @Override // android.view.Window.Callback
            public final boolean onSearchRequested(SearchEvent searchEvent) {
                return this.f66987b.onSearchRequested(searchEvent);
            }

            @Override // android.view.Window.Callback
            public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
                this.f66987b.onWindowAttributesChanged(layoutParams);
            }

            @Override // android.view.Window.Callback
            public final void onWindowFocusChanged(boolean z) {
                this.f66987b.onWindowFocusChanged(z);
            }

            @Override // android.view.Window.Callback
            public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
                return this.f66987b.onWindowStartingActionMode(callback);
            }

            @Override // android.view.Window.Callback
            public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
                return this.f66987b.onWindowStartingActionMode(callback, i);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????!\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b*\u0001??????\b\n\u0018??????2\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u001b\u0010\u000e\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001??\u0006\u0010"}, m4298d2 = {"leakcanary/AndroidLeakFixes$Companion$onActivityDestroyed$1", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "p0", "Landroid/app/Activity;", "kotlin.jvm.PlatformType", "p1", "Landroid/os/Bundle;", "onActivityDestroyed", "activity", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$e$b */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$b.class */
        public static final class C20485b implements Application.ActivityLifecycleCallbacks {

            /* renamed from: a */
            final /* synthetic */ Function1 f66989a;

            /* renamed from: b */
            private final /* synthetic */ Application.ActivityLifecycleCallbacks f66990b;

            C20485b(Function1 function1) {
                InvocationHandler invocationHandler;
                this.f66989a = function1;
                ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
                invocationHandler = C20522c.f67038a;
                Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
                if (newProxyInstance != null) {
                    this.f66990b = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                this.f66990b.onActivityCreated(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
                C18524p.m3841c(activity, "activity");
                this.f66989a.invoke(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                this.f66990b.onActivityPaused(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                this.f66990b.onActivityResumed(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                this.f66990b.onActivitySaveInstanceState(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
                this.f66990b.onActivityStarted(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                this.f66990b.onActivityStopped(activity);
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u000b\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$e$c */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$c.class */
        static final class C20486c extends AbstractC18526r implements Function0<Boolean> {

            /* renamed from: a */
            final /* synthetic */ Function0 f66991a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20486c(Function0 function0) {
                super(0);
                this.f66991a = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ Boolean invoke() {
                this.f66991a.invoke();
                return Boolean.FALSE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$e$d */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$e$d.class */
        public static final class RunnableC20487d implements Runnable {

            /* renamed from: a */
            final /* synthetic */ Function0 f66992a;

            RunnableC20487d(Function0 function0) {
                this.f66992a = function0;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Looper.myQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: leakcanary.a.e.d.1
                    @Override // android.os.MessageQueue.IdleHandler
                    public final boolean queueIdle() {
                        RunnableC20487d.this.f66992a.invoke();
                        return true;
                    }
                });
            }
        }

        private C20482e() {
        }

        public /* synthetic */ C20482e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m651a(Application application) {
            EnumSet allOf = EnumSet.allOf(EnumC20472a.class);
            C18524p.m3849a((Object) allOf, "EnumSet.allOf(AndroidLeakFixes::class.java)");
            EnumSet<EnumC20472a> fixes = allOf;
            C18524p.m3841c(application, "application");
            C18524p.m3841c(fixes, "fixes");
            C20520b.m644a();
            for (EnumC20472a enumC20472a : fixes) {
                if (!enumC20472a.applied) {
                    enumC20472a.apply(application);
                    enumC20472a.applied = true;
                } else {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(enumC20472a.name());
                        sb.append(" leak fix already applied.");
                    }
                }
            }
        }

        /* renamed from: a */
        public static void m650a(Application onActivityDestroyed, Function1<? super Activity, C20128v> block) {
            C18524p.m3841c(onActivityDestroyed, "$this$onActivityDestroyed");
            C18524p.m3841c(block, "block");
            onActivityDestroyed.registerActivityLifecycleCallbacks(new C20485b(block));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0010\n??????\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n??????\u0010??????\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n??\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "runnable", "Ljava/lang/Runnable;", "newThread"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$f */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$f.class */
    static final class ThreadFactoryC20489f implements ThreadFactory {

        /* renamed from: a */
        public static final ThreadFactoryC20489f f66994a = new ThreadFactoryC20489f();

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0011\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????*\u0001??????\b\n\u0018??????2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016??\u0006\u0004"}, m4298d2 = {"leakcanary/AndroidLeakFixes$Companion$backgroundExecutor$1$thread$1", "Ljava/lang/Thread;", "run", "", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$f$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$f$a.class */
        public static final class C20490a extends Thread {

            /* renamed from: a */
            final /* synthetic */ Runnable f66995a;

            C20490a(Runnable runnable) {
                this.f66995a = runnable;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Process.setThreadPriority(10);
                this.f66995a.run();
            }
        }

        ThreadFactoryC20489f() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            C20490a c20490a = new C20490a(runnable);
            c20490a.setName("plumber-android-leaks");
            return c20490a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\b??\u0001\u0018??????2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014??\u0006\u0006"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$j */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$j.class */
    public static final class C20500j extends EnumC20472a {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$j$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$j$a.class */
        public static final class RunnableC20501a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Application f67012b;

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u000e\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\u0010??????\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n??\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/app/Activity;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$j$a$1 */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$j$a$1.class */
            static final class C205021 extends AbstractC18526r implements Function1<Activity, C20128v> {

                /* renamed from: b */
                final /* synthetic */ Field f67014b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C205021(Field field) {
                    super(1);
                    RunnableC20501a.this = r4;
                    this.f67014b = field;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ C20128v invoke(Activity activity) {
                    Activity it2 = activity;
                    C18524p.m3841c(it2, "it");
                    try {
                        this.f67014b.set(null, null);
                    } catch (Exception e) {
                        C17729a c17729a = C17729a.f62585a;
                        if (C17729a.m4772a() != null) {
                            StringBuilder sb = new StringBuilder("Could not fix the ");
                            sb.append(C20500j.this.name());
                            sb.append(" leak");
                        }
                    }
                    return C20128v.f66529a;
                }
            }

            RunnableC20501a(Application application) {
                C20500j.this = r4;
                this.f67012b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Field declaredField = TextView.class.getDeclaredField("mLastHoveredView");
                    C18524p.m3849a((Object) declaredField, "TextView::class.java.get???Field(\"mLastHoveredView\")");
                    declaredField.setAccessible(true);
                    C20482e c20482e = EnumC20472a.Companion;
                    C20482e.m650a(this.f67012b, new C205021(declaredField));
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(C20500j.this.name());
                    sb.append(" leak");
                }
            }
        }

        C20500j(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.EnumC20472a
        protected final void apply(Application application) {
            int i;
            C18524p.m3841c(application, "application");
            if ((!C18524p.m3850a((Object) Build.MANUFACTURER, (Object) EnumC20472a.SAMSUNG)) || 19 > (i = Build.VERSION.SDK_INT) || 21 < i) {
                return;
            }
            EnumC20472a.backgroundExecutor.execute(new RunnableC20501a(application));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\b??\u0001\u0018??????2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014??\u0006\u0006"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$k */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$k.class */
    public static final class C20503k extends EnumC20472a {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$k$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$k$a.class */
        static final class RunnableC20504a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Application f67016b;

            RunnableC20504a(Application application) {
                C20503k.this = r4;
                this.f67016b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Class<?> cls = Class.forName("android.media.session.MediaSessionLegacyHelper");
                    C18524p.m3849a((Object) cls, "Class.forName(\"android.m???ediaSessionLegacyHelper\")");
                    Method declaredMethod = cls.getDeclaredMethod("getHelper", Context.class);
                    C18524p.m3849a((Object) declaredMethod, "clazz.getDeclaredMethod(???er\", Context::class.java)");
                    declaredMethod.invoke(null, this.f67016b);
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(C20503k.this.name());
                    sb.append(" leak");
                }
            }
        }

        C20503k(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.EnumC20472a
        protected final void apply(Application application) {
            C18524p.m3841c(application, "application");
            if (Build.VERSION.SDK_INT != 21) {
                return;
            }
            EnumC20472a.backgroundExecutor.execute(new RunnableC20504a(application));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\b??\u0001\u0018??????2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014??\u0006\u0006"}, m4298d2 = {"Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;", "Lleakcanary/AndroidLeakFixes;", "apply", "", "application", "Landroid/app/Application;", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.a$n */
    /* loaded from: classes5-dex2jar.jar:leakcanary/a$n.class */
    public static final class C20509n extends EnumC20472a {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.a$n$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/a$n$a.class */
        static final class RunnableC20510a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Application f67025b;

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u000e\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\u0010??????\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n??\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/app/Activity;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$n$a$1 */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$n$a$1.class */
            static final class C205111 extends AbstractC18526r implements Function1<Activity, C20128v> {

                /* renamed from: a */
                final /* synthetic */ Object f67026a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C205111(Object obj) {
                    super(1);
                    this.f67026a = obj;
                }

                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ C20128v invoke(Activity activity) {
                    Activity it2 = activity;
                    C18524p.m3841c(it2, "it");
                    synchronized (this.f67026a) {
                        int length = Array.getLength(this.f67026a);
                        for (int i = 0; i < length; i++) {
                            Array.set(this.f67026a, i, null);
                        }
                        C20128v c20128v = C20128v.f66529a;
                    }
                    return C20128v.f66529a;
                }
            }

            RunnableC20510a(Application application) {
                C20509n.this = r4;
                this.f67025b = application;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Class<?> cls = Class.forName("android.text.TextLine");
                    C18524p.m3849a((Object) cls, "Class.forName(\"android.text.TextLine\")");
                    Field declaredField = cls.getDeclaredField("sCached");
                    C18524p.m3849a((Object) declaredField, "textLineClass.getDeclaredField(\"sCached\")");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(null);
                    if (obj != null && obj.getClass().isArray()) {
                        C20482e c20482e = EnumC20472a.Companion;
                        C20482e.m650a(this.f67025b, new C205111(obj));
                        return;
                    }
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(C20509n.this.name());
                    sb.append(" leak, sCached=");
                    sb.append(obj);
                } catch (Exception e) {
                    C17729a c17729a2 = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder("Could not fix the ");
                    sb2.append(C20509n.this.name());
                    sb2.append(" leak");
                }
            }
        }

        C20509n(String str, int i) {
            super(str, i, null);
        }

        @Override // leakcanary.EnumC20472a
        protected final void apply(Application application) {
            C18524p.m3841c(application, "application");
            if (Build.VERSION.SDK_INT >= 28) {
                return;
            }
            EnumC20472a.backgroundExecutor.execute(new RunnableC20510a(application));
        }
    }

    static {
        C20503k c20503k = new C20503k("MEDIA_SESSION_LEGACY_HELPER", 0);
        MEDIA_SESSION_LEGACY_HELPER = c20503k;
        C20509n c20509n = new C20509n("TEXT_LINE_POOL", 1);
        TEXT_LINE_POOL = c20509n;
        EnumC20472a enumC20472a = new EnumC20472a("USER_MANAGER", 2) { // from class: leakcanary.a.o
            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                int i = Build.VERSION.SDK_INT;
                if (17 > i || 25 < i) {
                    return;
                }
                try {
                    Method declaredMethod = UserManager.class.getDeclaredMethod("get", Context.class);
                    C18524p.m3849a((Object) declaredMethod, "UserManager::class.java.???et\", Context::class.java)");
                    declaredMethod.invoke(null, application);
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(name());
                    sb.append(" leak");
                }
            }
        };
        USER_MANAGER = enumC20472a;
        EnumC20472a enumC20472a2 = new EnumC20472a("FLUSH_HANDLER_THREADS", 3) { // from class: leakcanary.a.g

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$g$a */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$g$a.class */
            static final class RunnableC20492a implements Runnable {

                /* renamed from: a */
                final /* synthetic */ Set f66996a;

                /* JADX INFO: Access modifiers changed from: package-private */
                @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
                /* renamed from: leakcanary.a$g$a$a */
                /* loaded from: classes5-dex2jar.jar:leakcanary/a$g$a$a.class */
                public static final class C20493a extends AbstractC18526r implements Function0<C20128v> {

                    /* renamed from: a */
                    final /* synthetic */ HandlerThread f66997a;

                    /* renamed from: b */
                    final /* synthetic */ C18490ab.C18491a f66998b;

                    /* renamed from: c */
                    final /* synthetic */ Handler f66999c;

                    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
                    /* renamed from: leakcanary.a$g$a$a$a */
                    /* loaded from: classes5-dex2jar.jar:leakcanary/a$g$a$a$a.class */
                    static final class RunnableC20494a implements Runnable {
                        RunnableC20494a() {
                            C20493a.this = r4;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            C20493a.this.f66998b.f63585a = true;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C20493a(HandlerThread handlerThread, C18490ab.C18491a c18491a, Handler handler) {
                        super(0);
                        this.f66997a = handlerThread;
                        this.f66998b = c18491a;
                        this.f66999c = handler;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ C20128v invoke() {
                        if (this.f66997a.isAlive() && this.f66998b.f63585a) {
                            this.f66998b.f63585a = false;
                            try {
                                if (!this.f66999c.postDelayed(new RunnableC20494a(), 1000L)) {
                                    C17729a c17729a = C17729a.f62585a;
                                    if (C17729a.m4772a() != null) {
                                        new StringBuilder("Failed to post to ").append(this.f66997a.getName());
                                    }
                                }
                            } catch (RuntimeException e) {
                                C17729a c17729a2 = C17729a.f62585a;
                                if (C17729a.m4772a() != null) {
                                    new StringBuilder("Failed to post to ").append(this.f66997a.getName());
                                }
                            }
                        }
                        return C20128v.f66529a;
                    }
                }

                RunnableC20492a(Set set) {
                    this.f66996a = set;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Thread[] threadArr;
                    C20482e c20482e = EnumC20472a.Companion;
                    Thread currentThread = Thread.currentThread();
                    C18524p.m3849a((Object) currentThread, "Thread.currentThread()");
                    ThreadGroup threadGroup = currentThread.getThreadGroup();
                    ThreadGroup threadGroup2 = threadGroup;
                    if (threadGroup == null) {
                        C18524p.m3855a();
                        threadGroup2 = threadGroup;
                    }
                    while (threadGroup2.getParent() != null) {
                        threadGroup2 = threadGroup2.getParent();
                        C18524p.m3849a((Object) threadGroup2, "rootGroup.parent");
                    }
                    Thread[] threadArr2 = new Thread[threadGroup2.activeCount()];
                    while (true) {
                        threadArr = threadArr2;
                        if (threadGroup2.enumerate(threadArr, true) != threadArr.length) {
                            break;
                        }
                        threadArr2 = new Thread[threadArr.length * 2];
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
                        C18538n m1103a = (threadId == -1 || this.f66996a.contains(Integer.valueOf(threadId))) ? null : C20126t.m1103a(Integer.valueOf(threadId), handlerThread2);
                        if (m1103a != null) {
                            arrayList3.add(m1103a);
                        }
                    }
                    ArrayList arrayList4 = arrayList3;
                    Set set = this.f66996a;
                    ArrayList<C18538n> arrayList5 = arrayList4;
                    ArrayList arrayList6 = new ArrayList(C18282n.m4163a((Iterable) arrayList5, 10));
                    for (C18538n c18538n : arrayList5) {
                        arrayList6.add(Integer.valueOf(((Number) c18538n.f63624a).intValue()));
                    }
                    C18282n.m4158a((Collection) set, (Iterable) arrayList6);
                    ArrayList<HandlerThread> arrayList7 = new ArrayList(C18282n.m4163a((Iterable) arrayList5, 10));
                    for (C18538n c18538n2 : arrayList5) {
                        arrayList7.add((HandlerThread) c18538n2.f63625b);
                    }
                    for (HandlerThread handlerThread3 : arrayList7) {
                        C17729a c17729a = C17729a.f62585a;
                        if (C17729a.m4772a() != null) {
                            new StringBuilder("Setting up flushing for ").append(handlerThread3);
                        }
                        C18490ab.C18491a c18491a = new C18490ab.C18491a();
                        c18491a.f63585a = true;
                        Handler handler = new Handler(handlerThread3.getLooper());
                        C20482e c20482e2 = EnumC20472a.Companion;
                        try {
                            handler.post(new C20482e.RunnableC20487d(new C20493a(handlerThread3, c18491a, handler)));
                        } catch (RuntimeException e) {
                        }
                    }
                }
            }

            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                EnumC20472a.backgroundExecutor.scheduleWithFixedDelay(new RunnableC20492a(new LinkedHashSet()), 2L, 3L, TimeUnit.SECONDS);
            }
        };
        FLUSH_HANDLER_THREADS = enumC20472a2;
        EnumC20472a enumC20472a3 = new EnumC20472a("ACCESSIBILITY_NODE_INFO", 4) { // from class: leakcanary.a.a

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$a$a */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$a$a.class */
            static final class RunnableC20474a implements Runnable {

                /* renamed from: a */
                public static final RunnableC20474a f66977a = new RunnableC20474a();

                RunnableC20474a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    for (int i = 0; i < 50; i++) {
                        AccessibilityNodeInfo.obtain();
                    }
                }
            }

            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                EnumC20472a.backgroundExecutor.scheduleAtFixedRate(RunnableC20474a.f66977a, 5L, 5L, TimeUnit.SECONDS);
            }
        };
        ACCESSIBILITY_NODE_INFO = enumC20472a3;
        EnumC20472a enumC20472a4 = new EnumC20472a("CONNECTIVITY_MANAGER", 5) { // from class: leakcanary.a.d
            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                if (Build.VERSION.SDK_INT > 23) {
                    return;
                }
                try {
                    application.getSystemService("connectivity");
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(name());
                    sb.append(" leak");
                }
            }
        };
        CONNECTIVITY_MANAGER = enumC20472a4;
        EnumC20472a enumC20472a5 = new EnumC20472a("SAMSUNG_CLIPBOARD_MANAGER", 6) { // from class: leakcanary.a.l
            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                int i;
                C18524p.m3841c(application, "application");
                if ((!C18524p.m3850a((Object) Build.MANUFACTURER, (Object) EnumC20472a.SAMSUNG)) || 19 > (i = Build.VERSION.SDK_INT) || 21 < i) {
                    return;
                }
                try {
                    Class<?> cls = Class.forName("android.sec.clipboard.ClipboardUIManager");
                    C18524p.m3849a((Object) cls, "Class.forName(\"android.s???oard.ClipboardUIManager\")");
                    Method declaredMethod = cls.getDeclaredMethod("getInstance", Context.class);
                    C18524p.m3849a((Object) declaredMethod, "managerClass.getDeclared???ce\", Context::class.java)");
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(null, application);
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(name());
                    sb.append(" leak");
                }
            }
        };
        SAMSUNG_CLIPBOARD_MANAGER = enumC20472a5;
        C20478c c20478c = new C20478c("BUBBLE_POPUP", 7);
        BUBBLE_POPUP = c20478c;
        C20500j c20500j = new C20500j("LAST_HOVERED_VIEW", 8);
        LAST_HOVERED_VIEW = c20500j;
        C20475b c20475b = new C20475b("ACTIVITY_MANAGER", 9);
        ACTIVITY_MANAGER = c20475b;
        EnumC20472a enumC20472a6 = new EnumC20472a("VIEW_LOCATION_HOLDER", 10) { // from class: leakcanary.a.p
            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                C20514b c20514b = C20514b.f67027a;
                C20514b.m649a(application);
            }
        };
        VIEW_LOCATION_HOLDER = enumC20472a6;
        EnumC20472a enumC20472a7 = new EnumC20472a("IMM_FOCUSED_VIEW", 11) { // from class: leakcanary.a.i

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u001f\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0018\u0002\n\u0002\b\n*\u0001??????\b\n\u0018??????2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001b\u0010\b\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u0010\u001a\u00020\u00032\u0010\b\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001??\u0006\u0011"}, m4298d2 = {"leakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "p0", "kotlin.jvm.PlatformType", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "p1", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$i$a */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$i$a.class */
            public static final class C20498a implements Application.ActivityLifecycleCallbacks {

                /* renamed from: a */
                final /* synthetic */ InputMethodManager f67004a;

                /* renamed from: b */
                final /* synthetic */ Field f67005b;

                /* renamed from: c */
                final /* synthetic */ Field f67006c;

                /* renamed from: d */
                final /* synthetic */ Method f67007d;

                /* renamed from: e */
                private final /* synthetic */ Application.ActivityLifecycleCallbacks f67008e;

                @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\b\n??????\n\u0002\u0010\u0002\n??????\u0010??????\u001a\u00020\u0001H\n??\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
                /* renamed from: leakcanary.a$i$a$a */
                /* loaded from: classes5-dex2jar.jar:leakcanary/a$i$a$a.class */
                static final class C20499a extends AbstractC18526r implements Function0<C20128v> {

                    /* renamed from: b */
                    final /* synthetic */ Activity f67010b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C20499a(Activity activity) {
                        super(0);
                        C20498a.this = r4;
                        this.f67010b = activity;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ C20128v invoke() {
                        View$OnAttachStateChangeListenerC20524d view$OnAttachStateChangeListenerC20524d = new View$OnAttachStateChangeListenerC20524d(C20498a.this.f67004a, C20498a.this.f67005b, C20498a.this.f67006c, C20498a.this.f67007d);
                        Window window = this.f67010b.getWindow();
                        C18524p.m3849a((Object) window, "activity.window");
                        View decorView = window.getDecorView();
                        C18524p.m3849a((Object) decorView, "activity.window.decorView");
                        View rootView = decorView.getRootView();
                        C18524p.m3849a((Object) rootView, "rootView");
                        rootView.getViewTreeObserver().addOnGlobalFocusChangeListener(view$OnAttachStateChangeListenerC20524d);
                        return C20128v.f66529a;
                    }
                }

                C20498a(InputMethodManager inputMethodManager, Field field, Field field2, Method method) {
                    InvocationHandler invocationHandler;
                    this.f67004a = inputMethodManager;
                    this.f67005b = field;
                    this.f67006c = field2;
                    this.f67007d = method;
                    ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
                    invocationHandler = C20522c.f67038a;
                    Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
                    if (newProxyInstance != null) {
                        this.f67008e = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityCreated(Activity activity, Bundle bundle) {
                    C20482e.Window$CallbackC20483a window$CallbackC20483a;
                    C18524p.m3841c(activity, "activity");
                    C20482e c20482e = EnumC20472a.Companion;
                    Window window = activity.getWindow();
                    C18524p.m3849a((Object) window, "activity.window");
                    C20499a c20499a = new C20499a(activity);
                    if (window.peekDecorView() != null) {
                        c20499a.invoke();
                        return;
                    }
                    C20482e.C20486c c20486c = new C20482e.C20486c(c20499a);
                    Window.Callback currentCallback = window.getCallback();
                    if (currentCallback instanceof C20482e.Window$CallbackC20483a) {
                        window$CallbackC20483a = (C20482e.Window$CallbackC20483a) currentCallback;
                    } else {
                        C18524p.m3849a((Object) currentCallback, "currentCallback");
                        window$CallbackC20483a = new C20482e.Window$CallbackC20483a(currentCallback);
                        window.setCallback(window$CallbackC20483a);
                    }
                    window$CallbackC20483a.f66986a.add(c20486c);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity) {
                    this.f67008e.onActivityDestroyed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPaused(Activity activity) {
                    this.f67008e.onActivityPaused(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityResumed(Activity activity) {
                    this.f67008e.onActivityResumed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    this.f67008e.onActivitySaveInstanceState(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStarted(Activity activity) {
                    this.f67008e.onActivityStarted(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStopped(Activity activity) {
                    this.f67008e.onActivityStopped(activity);
                }
            }

            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                if (Build.VERSION.SDK_INT > 23) {
                    return;
                }
                Object systemService = application.getSystemService("input_method");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                }
                InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                try {
                    Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                    C18524p.m3849a((Object) declaredField, "InputMethodManager::clas???laredField(\"mServedView\")");
                    declaredField.setAccessible(true);
                    Field declaredField2 = InputMethodManager.class.getDeclaredField("mH");
                    C18524p.m3849a((Object) declaredField2, "InputMethodManager::clas???va.getDeclaredField(\"mH\")");
                    declaredField2.setAccessible(true);
                    Method declaredMethod = InputMethodManager.class.getDeclaredMethod("finishInputLocked", new Class[0]);
                    C18524p.m3849a((Object) declaredMethod, "InputMethodManager::clas???thod(\"finishInputLocked\")");
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = InputMethodManager.class.getDeclaredMethod("focusIn", View.class);
                    C18524p.m3849a((Object) declaredMethod2, "InputMethodManager::clas???iew::class.java\n        )");
                    declaredMethod2.setAccessible(true);
                    application.registerActivityLifecycleCallbacks(new C20498a(inputMethodManager, declaredField2, declaredField, declaredMethod));
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                    if (C17729a.m4772a() == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Could not fix the ");
                    sb.append(name());
                    sb.append(" leak");
                }
            }
        };
        IMM_FOCUSED_VIEW = enumC20472a7;
        EnumC20472a enumC20472a8 = new EnumC20472a("IMM_CUR_ROOT_VIEW", 12) { // from class: leakcanary.a.h

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????!\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b*\u0001??????\b\n\u0018??????2\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\b0\bH\u0096\u0001J\u001b\u0010\u000e\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001??\u0006\u0010"}, m4298d2 = {"leakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "p0", "Landroid/app/Activity;", "kotlin.jvm.PlatformType", "p1", "Landroid/os/Bundle;", "onActivityDestroyed", "activity", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$h$a */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$h$a.class */
            public static final class C20496a implements Application.ActivityLifecycleCallbacks {

                /* renamed from: a */
                final /* synthetic */ Field f67001a;

                /* renamed from: b */
                final /* synthetic */ InputMethodManager f67002b;

                /* renamed from: c */
                private final /* synthetic */ Application.ActivityLifecycleCallbacks f67003c;

                C20496a(Field field, InputMethodManager inputMethodManager) {
                    InvocationHandler invocationHandler;
                    this.f67001a = field;
                    this.f67002b = inputMethodManager;
                    ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
                    invocationHandler = C20522c.f67038a;
                    Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
                    if (newProxyInstance != null) {
                        this.f67003c = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityCreated(Activity activity, Bundle bundle) {
                    this.f67003c.onActivityCreated(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity) {
                    C18524p.m3841c(activity, "activity");
                    try {
                        View view = (View) this.f67001a.get(this.f67002b);
                        if (view == null || activity.getWindow() == null) {
                            return;
                        }
                        Window window = activity.getWindow();
                        C18524p.m3849a((Object) window, "activity.window");
                        if (window.getDecorView() != view) {
                            return;
                        }
                        this.f67001a.set(this.f67002b, null);
                    } catch (Exception e) {
                        C17729a c17729a = C17729a.f62585a;
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPaused(Activity activity) {
                    this.f67003c.onActivityPaused(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityResumed(Activity activity) {
                    this.f67003c.onActivityResumed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    this.f67003c.onActivitySaveInstanceState(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStarted(Activity activity) {
                    this.f67003c.onActivityStarted(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityStopped(Activity activity) {
                    this.f67003c.onActivityStopped(activity);
                }
            }

            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                if (Build.VERSION.SDK_INT >= 29) {
                    return;
                }
                Object systemService = application.getSystemService("input_method");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                }
                InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                try {
                    Field declaredField = InputMethodManager.class.getDeclaredField("mCurRootView");
                    C18524p.m3849a((Object) declaredField, "InputMethodManager::clas???aredField(\"mCurRootView\")");
                    declaredField.setAccessible(true);
                    application.registerActivityLifecycleCallbacks(new C20496a(declaredField, inputMethodManager));
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                }
            }
        };
        IMM_CUR_ROOT_VIEW = enumC20472a8;
        EnumC20472a enumC20472a9 = new EnumC20472a("SPELL_CHECKER", 13) { // from class: leakcanary.a.m

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u001c\n??????\n\u0002\u0010\u0002\n??????\n\u0002\u0010??????\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010??????\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007H\n??\u0006\u0004\b\b\u0010\t"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "Ljava/lang/reflect/Method;", "<anonymous parameter 2>", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$m$a */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$m$a.class */
            static final class C20507a implements InvocationHandler {

                /* renamed from: a */
                public static final C20507a f67017a = new C20507a();

                C20507a() {
                }

                @Override // java.lang.reflect.InvocationHandler
                public final /* synthetic */ Object invoke(Object obj, Method method, Object[] objArr) {
                    C18524p.m3841c(obj, "<anonymous parameter 0>");
                    C18524p.m3841c(method, "<anonymous parameter 1>");
                    C17729a c17729a = C17729a.f62585a;
                    return C20128v.f66529a;
                }
            }

            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????\u0018\n??????\n\u0002\u0010??????\n\u0002\b\u0003\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010??????\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007H\n??\u0006\u0004\b\b\u0010\t"}, m4298d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "<anonymous parameter 0>", "method", "Ljava/lang/reflect/Method;", "args", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
            /* renamed from: leakcanary.a$m$b */
            /* loaded from: classes5-dex2jar.jar:leakcanary/a$m$b.class */
            static final class C20508b implements InvocationHandler {

                /* renamed from: a */
                final /* synthetic */ Field f67018a;

                /* renamed from: b */
                final /* synthetic */ Field f67019b;

                /* renamed from: c */
                final /* synthetic */ Map f67020c;

                /* renamed from: d */
                final /* synthetic */ Object f67021d;

                /* renamed from: e */
                final /* synthetic */ Field f67022e;

                /* renamed from: f */
                final /* synthetic */ Object f67023f;

                C20508b(Field field, Field field2, Map map, Object obj, Field field3, Object obj2) {
                    this.f67018a = field;
                    this.f67019b = field2;
                    this.f67020c = map;
                    this.f67021d = obj;
                    this.f67022e = field3;
                    this.f67023f = obj2;
                }

                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    C18524p.m3841c(obj, "<anonymous parameter 0>");
                    C18524p.m3841c(method, "method");
                    try {
                        if (C18524p.m3850a((Object) method.getName(), (Object) "getSpellCheckerService")) {
                            if (objArr == null) {
                                C18524p.m3855a();
                            }
                            Object obj2 = objArr[3];
                            Object obj3 = this.f67018a.get(obj2);
                            if (obj3 == null) {
                                C18524p.m3855a();
                            }
                            Object obj4 = this.f67019b.get(obj3);
                            if (obj4 == null) {
                                C18524p.m3855a();
                            }
                            this.f67020c.put(obj2, obj4);
                        } else if (C18524p.m3850a((Object) method.getName(), (Object) "finishSpellCheckerService")) {
                            if (objArr == null) {
                                C18524p.m3855a();
                            }
                            Object remove = this.f67020c.remove(objArr[0]);
                            if (remove == null) {
                                C18524p.m3855a();
                            }
                            this.f67022e.set(remove, this.f67021d);
                        }
                    } catch (Exception e) {
                        C17729a c17729a = C17729a.f62585a;
                    }
                    try {
                        return objArr != null ? method.invoke(this.f67023f, Arrays.copyOf(objArr, objArr.length)) : method.invoke(this.f67023f, new Object[0]);
                    } catch (InvocationTargetException e2) {
                        Throwable targetException = e2.getTargetException();
                        C18524p.m3849a((Object) targetException, "invocationException.targetException");
                        throw targetException;
                    }
                }
            }

            @Override // leakcanary.EnumC20472a
            protected final void apply(Application application) {
                C18524p.m3841c(application, "application");
                if (Build.VERSION.SDK_INT != 23) {
                    return;
                }
                try {
                    Method declaredMethod = TextServicesManager.class.getDeclaredMethod("getInstance", new Class[0]);
                    C18524p.m3849a((Object) declaredMethod, "textServiceClass.getDeclaredMethod(\"getInstance\")");
                    Field declaredField = TextServicesManager.class.getDeclaredField("sService");
                    C18524p.m3849a((Object) declaredField, "textServiceClass.getDeclaredField(\"sService\")");
                    declaredField.setAccessible(true);
                    Class<?> cls = Class.forName("com.android.internal.textservice.ITextServicesManager");
                    C18524p.m3849a((Object) cls, "Class.forName(\"com.andro???ce.ITextServicesManager\")");
                    Class<?> cls2 = Class.forName("android.view.textservice.SpellCheckerSession");
                    C18524p.m3849a((Object) cls2, "Class.forName(\"android.v???ice.SpellCheckerSession\")");
                    Field declaredField2 = cls2.getDeclaredField("mSpellCheckerSessionListener");
                    C18524p.m3849a((Object) declaredField2, "spellCheckSessionClass.g???lCheckerSessionListener\")");
                    declaredField2.setAccessible(true);
                    Class<?> cls3 = Class.forName("android.view.textservice.SpellCheckerSession$SpellCheckerSessionListenerImpl");
                    C18524p.m3849a((Object) cls3, "Class.forName(\n         ???ListenerImpl\"\n          )");
                    Field declaredField3 = cls3.getDeclaredField("mHandler");
                    C18524p.m3849a((Object) declaredField3, "spellCheckerSessionListe???DeclaredField(\"mHandler\")");
                    declaredField3.setAccessible(true);
                    Class<?> cls4 = Class.forName("android.view.textservice.SpellCheckerSession$1");
                    C18524p.m3849a((Object) cls4, "Class.forName(\"android.v???.SpellCheckerSession\\$1\")");
                    Field declaredField4 = cls4.getDeclaredField("this$0");
                    C18524p.m3849a((Object) declaredField4, "spellCheckSessionHandler???etDeclaredField(\"this$0\")");
                    declaredField4.setAccessible(true);
                    Class<?> cls5 = Class.forName("android.view.textservice.SpellCheckerSession$SpellCheckerSessionListener");
                    C18524p.m3849a((Object) cls5, "Class.forName(\"android.v???lCheckerSessionListener\")");
                    Object newProxyInstance = Proxy.newProxyInstance(cls5.getClassLoader(), new Class[]{cls5}, C20507a.f67017a);
                    C18524p.m3849a(newProxyInstance, "Proxy.newProxyInstance(\n???ssion closed\" }\n        }");
                    declaredMethod.invoke(null, new Object[0]);
                    Object obj = declaredField.get(null);
                    if (obj == null) {
                        C18524p.m3855a();
                    }
                    Object newProxyInstance2 = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C20508b(declaredField3, declaredField4, new LinkedHashMap(), newProxyInstance, declaredField2, obj));
                    C18524p.m3849a(newProxyInstance2, "Proxy.newProxyInstance(\n???ion\n          }\n        }");
                    declaredField.set(null, newProxyInstance2);
                } catch (Exception e) {
                    C17729a c17729a = C17729a.f62585a;
                }
            }
        };
        SPELL_CHECKER = enumC20472a9;
        $VALUES = new EnumC20472a[]{c20503k, c20509n, enumC20472a, enumC20472a2, enumC20472a3, enumC20472a4, enumC20472a5, c20478c, c20500j, c20475b, enumC20472a6, enumC20472a7, enumC20472a8, enumC20472a9};
    }

    private EnumC20472a(String str, int i) {
        super(str, i);
    }

    public /* synthetic */ EnumC20472a(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i);
    }

    public static EnumC20472a valueOf(String str) {
        return (EnumC20472a) Enum.valueOf(EnumC20472a.class, str);
    }

    public static EnumC20472a[] values() {
        return (EnumC20472a[]) $VALUES.clone();
    }

    protected abstract void apply(Application application);
}
