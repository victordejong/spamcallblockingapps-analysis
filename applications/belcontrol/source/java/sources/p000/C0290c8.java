package p000;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.p001v4.app.INotificationSideChannel;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: c8 */
/* loaded from: classes-dex2jar.jar:c8.class */
public final class C0290c8 {

    /* renamed from: d */
    public static String f2191d;

    /* renamed from: g */
    public static ServiceConnectionC0292d f2194g;

    /* renamed from: a */
    public final Context f2195a;

    /* renamed from: b */
    public final NotificationManager f2196b;

    /* renamed from: c */
    public static final Object f2190c = new Object();

    /* renamed from: e */
    public static Set<String> f2192e = new HashSet();

    /* renamed from: f */
    public static final Object f2193f = new Object();

    /* renamed from: c8$c */
    /* loaded from: classes-dex2jar.jar:c8$c.class */
    public static class C0291c {

        /* renamed from: a */
        public final ComponentName f2197a;

        /* renamed from: b */
        public final IBinder f2198b;

        public C0291c(ComponentName componentName, IBinder iBinder) {
            this.f2197a = componentName;
            this.f2198b = iBinder;
        }
    }

    /* renamed from: c8$d */
    /* loaded from: classes-dex2jar.jar:c8$d.class */
    public static class ServiceConnectionC0292d implements Handler.Callback, ServiceConnection {

        /* renamed from: a */
        public final Context f2199a;

        /* renamed from: b */
        public final HandlerThread f2200b;

        /* renamed from: c */
        public final Handler f2201c;

        /* renamed from: d */
        public final Map<ComponentName, C0293a> f2202d = new HashMap();

        /* renamed from: f */
        public Set<String> f2203f = new HashSet();

        /* renamed from: c8$d$a */
        /* loaded from: classes-dex2jar.jar:c8$d$a.class */
        public static class C0293a {

            /* renamed from: a */
            public final ComponentName f2204a;

            /* renamed from: c */
            public INotificationSideChannel f2206c;

            /* renamed from: b */
            public boolean f2205b = false;

            /* renamed from: d */
            public ArrayDeque<AbstractC0294e> f2207d = new ArrayDeque<>();

            /* renamed from: e */
            public int f2208e = 0;

            public C0293a(ComponentName componentName) {
                this.f2204a = componentName;
            }
        }

        public ServiceConnectionC0292d(Context context) {
            this.f2199a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f2200b = handlerThread;
            handlerThread.start();
            this.f2201c = new Handler(handlerThread.getLooper(), this);
        }

        /* renamed from: a */
        public final boolean m5428a(C0293a c0293a) {
            if (c0293a.f2205b) {
                return true;
            }
            boolean bindService = this.f2199a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(c0293a.f2204a), this, 33);
            c0293a.f2205b = bindService;
            if (bindService) {
                c0293a.f2208e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + c0293a.f2204a);
                this.f2199a.unbindService(this);
            }
            return c0293a.f2205b;
        }

        /* renamed from: b */
        public final void m5427b(C0293a c0293a) {
            if (c0293a.f2205b) {
                this.f2199a.unbindService(this);
                c0293a.f2205b = false;
            }
            c0293a.f2206c = null;
        }

        /* renamed from: c */
        public final void m5426c(AbstractC0294e abstractC0294e) {
            m5419j();
            for (C0293a c0293a : this.f2202d.values()) {
                c0293a.f2207d.add(abstractC0294e);
                m5422g(c0293a);
            }
        }

        /* renamed from: d */
        public final void m5425d(ComponentName componentName) {
            C0293a c0293a = this.f2202d.get(componentName);
            if (c0293a != null) {
                m5422g(c0293a);
            }
        }

        /* renamed from: e */
        public final void m5424e(ComponentName componentName, IBinder iBinder) {
            C0293a c0293a = this.f2202d.get(componentName);
            if (c0293a != null) {
                c0293a.f2206c = INotificationSideChannel.Stub.asInterface(iBinder);
                c0293a.f2208e = 0;
                m5422g(c0293a);
            }
        }

        /* renamed from: f */
        public final void m5423f(ComponentName componentName) {
            C0293a c0293a = this.f2202d.get(componentName);
            if (c0293a != null) {
                m5427b(c0293a);
            }
        }

        /* renamed from: g */
        public final void m5422g(C0293a c0293a) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + c0293a.f2204a + ", " + c0293a.f2207d.size() + " queued tasks");
            }
            if (c0293a.f2207d.isEmpty()) {
                return;
            }
            if (!m5428a(c0293a) || c0293a.f2206c == null) {
                m5420i(c0293a);
                return;
            }
            while (true) {
                AbstractC0294e peek = c0293a.f2207d.peek();
                if (peek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + peek);
                    }
                    peek.m5418a(c0293a.f2206c);
                    c0293a.f2207d.remove();
                } catch (DeadObjectException e) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + c0293a.f2204a);
                    }
                } catch (RemoteException e2) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + c0293a.f2204a, e2);
                }
            }
            if (c0293a.f2207d.isEmpty()) {
                return;
            }
            m5420i(c0293a);
        }

        /* renamed from: h */
        public void m5421h(AbstractC0294e abstractC0294e) {
            this.f2201c.obtainMessage(0, abstractC0294e).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m5426c((AbstractC0294e) message.obj);
                return true;
            } else if (i == 1) {
                C0291c c0291c = (C0291c) message.obj;
                m5424e(c0291c.f2197a, c0291c.f2198b);
                return true;
            } else if (i == 2) {
                m5423f((ComponentName) message.obj);
                return true;
            } else if (i != 3) {
                return false;
            } else {
                m5425d((ComponentName) message.obj);
                return true;
            }
        }

        /* renamed from: i */
        public final void m5420i(C0293a c0293a) {
            if (this.f2201c.hasMessages(3, c0293a.f2204a)) {
                return;
            }
            int i = c0293a.f2208e + 1;
            c0293a.f2208e = i;
            if (i <= 6) {
                int i2 = (1 << (i - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i2 + " ms");
                }
                this.f2201c.sendMessageDelayed(this.f2201c.obtainMessage(3, c0293a.f2204a), i2);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + c0293a.f2207d.size() + " tasks to " + c0293a.f2204a + " after " + c0293a.f2208e + " retries");
            c0293a.f2207d.clear();
        }

        /* renamed from: j */
        public final void m5419j() {
            Set<String> m5433e = C0290c8.m5433e(this.f2199a);
            if (m5433e.equals(this.f2203f)) {
                return;
            }
            this.f2203f = m5433e;
            List<ResolveInfo> queryIntentServices = this.f2199a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (m5433e.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f2202d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f2202d.put(componentName2, new C0293a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, C0293a>> it = this.f2202d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, C0293a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    m5427b(next.getValue());
                    it.remove();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f2201c.obtainMessage(1, new C0291c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f2201c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* renamed from: c8$e */
    /* loaded from: classes-dex2jar.jar:c8$e.class */
    public interface AbstractC0294e {
        /* renamed from: a */
        void m5418a(INotificationSideChannel iNotificationSideChannel);
    }

    public C0290c8(Context context) {
        this.f2195a = context;
        this.f2196b = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: d */
    public static C0290c8 m5434d(Context context) {
        return new C0290c8(context);
    }

    /* renamed from: e */
    public static Set<String> m5433e(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f2190c) {
            if (string != null) {
                if (!string.equals(f2191d)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f2192e = hashSet;
                    f2191d = string;
                }
            }
            set = f2192e;
        }
        return set;
    }

    /* renamed from: i */
    public static boolean m5429i(Notification notification) {
        Bundle a = z7.a(notification);
        return a != null && a.getBoolean("android.support.useSideChannel");
    }

    /* renamed from: a */
    public boolean m5437a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return this.f2196b.areNotificationsEnabled();
        }
        boolean z = true;
        if (i >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) this.f2195a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f2195a.getApplicationInfo();
            String packageName = this.f2195a.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                z = ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m5436b(int i) {
        m5435c(null, i);
    }

    /* renamed from: c */
    public void m5435c(String str, int i) {
        this.f2196b.cancel(str, i);
        if (Build.VERSION.SDK_INT <= 19) {
            m5430h(new a(this.f2195a.getPackageName(), i, str));
        }
    }

    /* renamed from: f */
    public void m5432f(int i, Notification notification) {
        m5431g(null, i, notification);
    }

    /* renamed from: g */
    public void m5431g(String str, int i, Notification notification) {
        if (!m5429i(notification)) {
            this.f2196b.notify(str, i, notification);
            return;
        }
        m5430h(new b(this.f2195a.getPackageName(), i, str, notification));
        this.f2196b.cancel(str, i);
    }

    /* renamed from: h */
    public final void m5430h(AbstractC0294e abstractC0294e) {
        synchronized (f2193f) {
            if (f2194g == null) {
                f2194g = new ServiceConnectionC0292d(this.f2195a.getApplicationContext());
            }
            f2194g.m5421h(abstractC0294e);
        }
    }
}
