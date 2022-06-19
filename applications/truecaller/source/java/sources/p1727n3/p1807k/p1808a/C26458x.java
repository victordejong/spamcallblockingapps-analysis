package p1727n3.p1807k.p1808a;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p1719m3.p1720a.p1722b.p1723a.AbstractC25357a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.a.x */
/* loaded from: classes-dex2jar.jar:n3/k/a/x.class */
public final class C26458x {

    /* renamed from: d */
    public static String f74194d;

    /* renamed from: g */
    public static ServiceConnectionC26461c f74197g;

    /* renamed from: a */
    public final Context f74198a;

    /* renamed from: b */
    public final NotificationManager f74199b;

    /* renamed from: c */
    public static final Object f74193c = new Object();

    /* renamed from: e */
    public static Set<String> f74195e = new HashSet();

    /* renamed from: f */
    public static final Object f74196f = new Object();

    /* renamed from: n3.k.a.x$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/x$a.class */
    public static class C26459a implements AbstractC26463d {

        /* renamed from: a */
        public final String f74200a;

        /* renamed from: b */
        public final int f74201b;

        /* renamed from: c */
        public final String f74202c;

        /* renamed from: d */
        public final Notification f74203d;

        public C26459a(String str, int i, String str2, Notification notification) {
            this.f74200a = str;
            this.f74201b = i;
            this.f74202c = str2;
            this.f74203d = notification;
        }

        @Override // p1727n3.p1807k.p1808a.C26458x.AbstractC26463d
        /* renamed from: a */
        public void mo1806a(AbstractC25357a abstractC25357a) throws RemoteException {
            abstractC25357a.mo3697p0(this.f74200a, this.f74201b, this.f74202c, this.f74203d);
        }

        public String toString() {
            StringBuilder m8704I = C22128a.m8704I("NotifyTask[", "packageName:");
            m8704I.append(this.f74200a);
            m8704I.append(", id:");
            m8704I.append(this.f74201b);
            m8704I.append(", tag:");
            return C22128a.m8618h(m8704I, this.f74202c, "]");
        }
    }

    /* renamed from: n3.k.a.x$b */
    /* loaded from: classes-dex2jar.jar:n3/k/a/x$b.class */
    public static class C26460b {

        /* renamed from: a */
        public final ComponentName f74204a;

        /* renamed from: b */
        public final IBinder f74205b;

        public C26460b(ComponentName componentName, IBinder iBinder) {
            this.f74204a = componentName;
            this.f74205b = iBinder;
        }
    }

    /* renamed from: n3.k.a.x$c */
    /* loaded from: classes-dex2jar.jar:n3/k/a/x$c.class */
    public static class ServiceConnectionC26461c implements Handler.Callback, ServiceConnection {

        /* renamed from: a */
        public final Context f74206a;

        /* renamed from: b */
        public final HandlerThread f74207b;

        /* renamed from: c */
        public final Handler f74208c;

        /* renamed from: d */
        public final Map<ComponentName, C26462a> f74209d = new HashMap();

        /* renamed from: e */
        public Set<String> f74210e = new HashSet();

        /* renamed from: n3.k.a.x$c$a */
        /* loaded from: classes-dex2jar.jar:n3/k/a/x$c$a.class */
        public static class C26462a {

            /* renamed from: a */
            public final ComponentName f74211a;

            /* renamed from: c */
            public AbstractC25357a f74213c;

            /* renamed from: b */
            public boolean f74212b = false;

            /* renamed from: d */
            public ArrayDeque<AbstractC26463d> f74214d = new ArrayDeque<>();

            /* renamed from: e */
            public int f74215e = 0;

            public C26462a(ComponentName componentName) {
                this.f74211a = componentName;
            }
        }

        public ServiceConnectionC26461c(Context context) {
            this.f74206a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f74207b = handlerThread;
            handlerThread.start();
            this.f74208c = new Handler(handlerThread.getLooper(), this);
        }

        /* renamed from: a */
        public final void m1808a(C26462a c26462a) {
            boolean z;
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder m8728C = C22128a.m8728C("Processing component ");
                m8728C.append(c26462a.f74211a);
                m8728C.append(", ");
                m8728C.append(c26462a.f74214d.size());
                m8728C.append(" queued tasks");
                m8728C.toString();
            }
            if (c26462a.f74214d.isEmpty()) {
                return;
            }
            if (c26462a.f74212b) {
                z = true;
            } else {
                boolean bindService = this.f74206a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(c26462a.f74211a), this, 33);
                c26462a.f74212b = bindService;
                if (bindService) {
                    c26462a.f74215e = 0;
                } else {
                    StringBuilder m8728C2 = C22128a.m8728C("Unable to bind to listener ");
                    m8728C2.append(c26462a.f74211a);
                    m8728C2.toString();
                    this.f74206a.unbindService(this);
                }
                z = c26462a.f74212b;
            }
            if (!z || c26462a.f74213c == null) {
                m1807b(c26462a);
                return;
            }
            while (true) {
                AbstractC26463d peek = c26462a.f74214d.peek();
                if (peek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        String str = "Sending task " + peek;
                    }
                    peek.mo1806a(c26462a.f74213c);
                    c26462a.f74214d.remove();
                } catch (DeadObjectException e) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder m8728C3 = C22128a.m8728C("Remote service has died: ");
                        m8728C3.append(c26462a.f74211a);
                        m8728C3.toString();
                    }
                } catch (RemoteException e2) {
                    StringBuilder m8728C4 = C22128a.m8728C("RemoteException communicating with ");
                    m8728C4.append(c26462a.f74211a);
                    m8728C4.toString();
                }
            }
            if (c26462a.f74214d.isEmpty()) {
                return;
            }
            m1807b(c26462a);
        }

        /* renamed from: b */
        public final void m1807b(C26462a c26462a) {
            if (this.f74208c.hasMessages(3, c26462a.f74211a)) {
                return;
            }
            int i = c26462a.f74215e + 1;
            c26462a.f74215e = i;
            if (i <= 6) {
                Log.isLoggable("NotifManCompat", 3);
                this.f74208c.sendMessageDelayed(this.f74208c.obtainMessage(3, c26462a.f74211a), (1 << (i - 1)) * 1000);
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Giving up on delivering ");
            m8728C.append(c26462a.f74214d.size());
            m8728C.append(" tasks to ");
            m8728C.append(c26462a.f74211a);
            m8728C.append(" after ");
            m8728C.append(c26462a.f74215e);
            m8728C.append(" retries");
            m8728C.toString();
            c26462a.f74214d.clear();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            AbstractC25357a.AbstractBinderC25358a.C25359a c25359a;
            int i = message.what;
            if (i != 0) {
                if (i == 1) {
                    C26460b c26460b = (C26460b) message.obj;
                    ComponentName componentName = c26460b.f74204a;
                    IBinder iBinder = c26460b.f74205b;
                    C26462a c26462a = this.f74209d.get(componentName);
                    if (c26462a == null) {
                        return true;
                    }
                    int i2 = AbstractC25357a.AbstractBinderC25358a.f70773a;
                    if (iBinder == null) {
                        c25359a = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
                        c25359a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC25357a)) ? new AbstractC25357a.AbstractBinderC25358a.C25359a(iBinder) : (AbstractC25357a) queryLocalInterface;
                    }
                    c26462a.f74213c = c25359a;
                    c26462a.f74215e = 0;
                    m1808a(c26462a);
                    return true;
                } else if (i != 2) {
                    if (i != 3) {
                        return false;
                    }
                    C26462a c26462a2 = this.f74209d.get((ComponentName) message.obj);
                    if (c26462a2 == null) {
                        return true;
                    }
                    m1808a(c26462a2);
                    return true;
                } else {
                    C26462a c26462a3 = this.f74209d.get((ComponentName) message.obj);
                    if (c26462a3 == null) {
                        return true;
                    }
                    if (c26462a3.f74212b) {
                        this.f74206a.unbindService(this);
                        c26462a3.f74212b = false;
                    }
                    c26462a3.f74213c = null;
                    return true;
                }
            }
            AbstractC26463d abstractC26463d = (AbstractC26463d) message.obj;
            Set<String> m1813e = C26458x.m1813e(this.f74206a);
            if (!m1813e.equals(this.f74210e)) {
                this.f74210e = m1813e;
                List<ResolveInfo> queryIntentServices = this.f74206a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                HashSet hashSet = new HashSet();
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    if (m1813e.contains(resolveInfo.serviceInfo.packageName)) {
                        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                        ComponentName componentName2 = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                        if (resolveInfo.serviceInfo.permission != null) {
                            String str = "Permission present on component " + componentName2 + ", not adding listener record.";
                        } else {
                            hashSet.add(componentName2);
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ComponentName componentName3 = (ComponentName) it.next();
                    if (!this.f74209d.containsKey(componentName3)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            String str2 = "Adding listener record for " + componentName3;
                        }
                        this.f74209d.put(componentName3, new C26462a(componentName3));
                    }
                }
                Iterator<Map.Entry<ComponentName, C26462a>> it2 = this.f74209d.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry<ComponentName, C26462a> next = it2.next();
                    if (!hashSet.contains(next.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            StringBuilder m8728C = C22128a.m8728C("Removing listener record for ");
                            m8728C.append(next.getKey());
                            m8728C.toString();
                        }
                        C26462a value = next.getValue();
                        if (value.f74212b) {
                            this.f74206a.unbindService(this);
                            value.f74212b = false;
                        }
                        value.f74213c = null;
                        it2.remove();
                    }
                }
            }
            for (C26462a c26462a4 : this.f74209d.values()) {
                c26462a4.f74214d.add(abstractC26463d);
                m1808a(c26462a4);
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                String str = "Connected to service " + componentName;
            }
            this.f74208c.obtainMessage(1, new C26460b(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                String str = "Disconnected from service " + componentName;
            }
            this.f74208c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* renamed from: n3.k.a.x$d */
    /* loaded from: classes-dex2jar.jar:n3/k/a/x$d.class */
    public interface AbstractC26463d {
        /* renamed from: a */
        void mo1806a(AbstractC25357a abstractC25357a) throws RemoteException;
    }

    public C26458x(Context context) {
        this.f74198a = context;
        this.f74199b = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
    }

    /* renamed from: e */
    public static Set<String> m1813e(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f74193c) {
            if (string != null) {
                if (!string.equals(f74194d)) {
                    String[] split = string.split(StringConstant.COLON, -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f74195e = hashSet;
                    f74194d = string;
                }
            }
            set = f74195e;
        }
        return set;
    }

    /* renamed from: a */
    public boolean m1817a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f74199b.areNotificationsEnabled();
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f74198a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f74198a.getApplicationInfo();
        String packageName = this.f74198a.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        boolean z = true;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            if (((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() != 0) {
                z = false;
            }
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
        }
        return z;
    }

    /* renamed from: b */
    public void m1816b(int i) {
        this.f74199b.cancel(null, i);
    }

    /* renamed from: c */
    public void m1815c(NotificationChannelGroup notificationChannelGroup) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f74199b.createNotificationChannelGroup(notificationChannelGroup);
        }
    }

    /* renamed from: d */
    public void m1814d(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f74199b.deleteNotificationChannel(str);
        }
    }

    /* renamed from: f */
    public NotificationChannel m1812f(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f74199b.getNotificationChannel(str);
        }
        return null;
    }

    /* renamed from: g */
    public NotificationChannelGroup m1811g(String str) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return this.f74199b.getNotificationChannelGroup(str);
        }
        if (i < 26) {
            return null;
        }
        for (NotificationChannelGroup notificationChannelGroup : i >= 26 ? this.f74199b.getNotificationChannelGroups() : Collections.emptyList()) {
            if (notificationChannelGroup.getId().equals(str)) {
                return notificationChannelGroup;
            }
        }
        return null;
    }

    /* renamed from: h */
    public List<NotificationChannel> m1810h() {
        return Build.VERSION.SDK_INT >= 26 ? this.f74199b.getNotificationChannels() : Collections.emptyList();
    }

    /* renamed from: i */
    public final void m1809i(AbstractC26463d abstractC26463d) {
        synchronized (f74196f) {
            if (f74197g == null) {
                f74197g = new ServiceConnectionC26461c(this.f74198a.getApplicationContext());
            }
            f74197g.f74208c.obtainMessage(0, abstractC26463d).sendToTarget();
        }
    }
}
