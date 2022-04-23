package com.inmobi.commons.core.utilities;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.AdError;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.p508a.C8326a;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.inmobi.commons.core.utilities.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/a.class */
public class C8388a {

    /* renamed from: a */
    public static final String f32631a = "a";

    /* renamed from: c */
    public static Object f32633c;

    /* renamed from: g */
    public static volatile C8388a f32637g;

    /* renamed from: b */
    public static List<AbstractC8392b> f32632b = new ArrayList();

    /* renamed from: d */
    public static boolean f32634d = false;

    /* renamed from: e */
    public static HandlerThread f32635e = null;

    /* renamed from: f */
    public static final Object f32636f = new Object();

    /* renamed from: com.inmobi.commons.core.utilities.a$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/a$a.class */
    public static final class HandlerC8391a extends Handler {

        /* renamed from: a */
        public boolean f32642a = true;

        public HandlerC8391a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (!C8388a.f32634d) {
                if (message.what == 1001 && this.f32642a) {
                    this.f32642a = false;
                    C8388a.m5720a(false);
                    String unused = C8388a.f32631a;
                } else if (message.what == 1002 && !this.f32642a) {
                    this.f32642a = true;
                    C8388a.m5720a(true);
                    String unused2 = C8388a.f32631a;
                }
            }
        }
    }

    /* renamed from: com.inmobi.commons.core.utilities.a$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/a$b.class */
    public interface AbstractC8392b {
        /* renamed from: a */
        void mo5463a(boolean z);
    }

    /* renamed from: a */
    public static C8388a m5722a() {
        C8388a aVar = f32637g;
        C8388a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32636f) {
                C8388a aVar3 = f32637g;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8388a();
                    f32637g = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: a */
    public static /* synthetic */ void m5720a(final boolean z) {
        Context b = C8326a.m5891b();
        if (b != null) {
            new Handler(b.getMainLooper()).post(new Runnable() { // from class: com.inmobi.commons.core.utilities.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    for (AbstractC8392b bVar : C8388a.f32632b) {
                        try {
                            bVar.mo5463a(z);
                        } catch (Exception e) {
                            String unused = C8388a.f32631a;
                            new StringBuilder("SDK encountered an unexpected error in handling focus change event; ").append(e.getMessage());
                        }
                    }
                }
            });
        }
    }

    /* renamed from: b */
    public static void m5719b() {
        f32634d = true;
    }

    /* renamed from: c */
    public static void m5718c() {
        f32634d = false;
    }

    /* renamed from: a */
    public final void m5721a(AbstractC8392b bVar) {
        Class<?>[] declaredClasses;
        f32632b.add(bVar);
        if (f32632b.size() == 1 && C8326a.m5899a()) {
            HandlerThread handlerThread = new HandlerThread("ApplicationFocusChangeObserverHandler");
            f32635e = handlerThread;
            handlerThread.start();
            Class<?> cls = null;
            for (Class<?> cls2 : Application.class.getDeclaredClasses()) {
                if (cls2.getSimpleName().equalsIgnoreCase("ActivityLifecycleCallbacks")) {
                    cls = cls2;
                }
            }
            f32633c = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.inmobi.commons.core.utilities.a.1

                /* renamed from: b */
                public final Handler f32639b = new HandlerC8391a(C8388a.f32635e.getLooper());

                /* renamed from: c */
                public WeakReference<Activity> f32640c;

                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                    if (objArr == null) {
                        return null;
                    }
                    String name = method.getName();
                    char c = 65535;
                    int hashCode = name.hashCode();
                    if (hashCode != 195654633) {
                        if (hashCode != 1495889555) {
                            if (hashCode == 1508755423 && name.equals("onActivityStopped")) {
                                c = 2;
                            }
                        } else if (name.equals("onActivityStarted")) {
                            c = 0;
                        }
                    } else if (name.equals("onActivityResumed")) {
                        c = 1;
                    }
                    if (c == 0 || c == 1) {
                        Activity activity = (Activity) objArr[0];
                        WeakReference<Activity> weakReference = this.f32640c;
                        if (weakReference == null || weakReference.get() != activity) {
                            this.f32640c = new WeakReference<>(activity);
                        }
                        this.f32639b.removeMessages(AdError.NO_FILL_ERROR_CODE);
                        this.f32639b.sendEmptyMessage(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
                        return null;
                    } else if (c != 2) {
                        return null;
                    } else {
                        Activity activity2 = (Activity) objArr[0];
                        WeakReference<Activity> weakReference2 = this.f32640c;
                        if (weakReference2 == null || weakReference2.get() != activity2) {
                            return null;
                        }
                        this.f32639b.sendEmptyMessageDelayed(AdError.NO_FILL_ERROR_CODE, 3000L);
                        return null;
                    }
                }
            });
            Application application = (Application) C8326a.m5891b();
            if (f32633c != null) {
                try {
                    Application.class.getMethod("registerActivityLifecycleCallbacks", cls).invoke(application, f32633c);
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                } catch (Exception e2) {
                    try {
                        HashMap hashMap = new HashMap();
                        hashMap.put("type", "GenericException");
                        hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e2.getMessage());
                        C8366b.m5794a();
                        C8366b.m5789a("root", "ExceptionCaught", hashMap);
                    } catch (Exception e3) {
                        StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                        sb.append(e2.getMessage());
                        sb.append(")");
                    }
                }
            }
        }
    }
}
