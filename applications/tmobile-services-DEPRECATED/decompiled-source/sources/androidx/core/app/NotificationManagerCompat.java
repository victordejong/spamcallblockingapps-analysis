package androidx.core.app;

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
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat.class */
public final class NotificationManagerCompat {
    @GuardedBy

    /* renamed from: d */
    private static String f2933d;
    @GuardedBy

    /* renamed from: g */
    private static SideChannelManager f2936g;

    /* renamed from: a */
    private final Context f2937a;

    /* renamed from: b */
    private final NotificationManager f2938b;

    /* renamed from: c */
    private static final Object f2932c = new Object();
    @GuardedBy

    /* renamed from: e */
    private static Set<String> f2934e = new HashSet();

    /* renamed from: f */
    private static final Object f2935f = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat$CancelTask.class */
    public static class CancelTask implements Task {

        /* renamed from: a */
        final String f2939a;

        /* renamed from: b */
        final int f2940b;

        /* renamed from: c */
        final String f2941c;

        /* renamed from: d */
        final boolean f2942d = false;

        CancelTask(String str, int i, String str2) {
            this.f2939a = str;
            this.f2940b = i;
            this.f2941c = str2;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        /* renamed from: a */
        public void mo19713a(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            if (this.f2942d) {
                iNotificationSideChannel.cancelAll(this.f2939a);
            } else {
                iNotificationSideChannel.cancel(this.f2939a, this.f2940b, this.f2941c);
            }
        }

        @NonNull
        public String toString() {
            return "CancelTask[packageName:" + this.f2939a + ", id:" + this.f2940b + ", tag:" + this.f2941c + ", all:" + this.f2942d + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat$NotifyTask.class */
    public static class NotifyTask implements Task {

        /* renamed from: a */
        final String f2943a;

        /* renamed from: b */
        final int f2944b;

        /* renamed from: c */
        final String f2945c;

        /* renamed from: d */
        final Notification f2946d;

        NotifyTask(String str, int i, String str2, Notification notification) {
            this.f2943a = str;
            this.f2944b = i;
            this.f2945c = str2;
            this.f2946d = notification;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        /* renamed from: a */
        public void mo19713a(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            iNotificationSideChannel.notify(this.f2943a, this.f2944b, this.f2945c, this.f2946d);
        }

        @NonNull
        public String toString() {
            return "NotifyTask[packageName:" + this.f2943a + ", id:" + this.f2944b + ", tag:" + this.f2945c + "]";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat$ServiceConnectedEvent.class */
    private static class ServiceConnectedEvent {

        /* renamed from: a */
        final ComponentName f2947a;

        /* renamed from: b */
        final IBinder f2948b;

        ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
            this.f2947a = componentName;
            this.f2948b = iBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat$SideChannelManager.class */
    public static class SideChannelManager implements Handler.Callback, ServiceConnection {

        /* renamed from: a */
        private final Context f2949a;

        /* renamed from: b */
        private final HandlerThread f2950b;

        /* renamed from: c */
        private final Handler f2951c;

        /* renamed from: d */
        private final Map<ComponentName, ListenerRecord> f2952d = new HashMap();

        /* renamed from: e */
        private Set<String> f2953e = new HashSet();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord.class */
        public static class ListenerRecord {

            /* renamed from: a */
            final ComponentName f2954a;

            /* renamed from: c */
            INotificationSideChannel f2956c;

            /* renamed from: b */
            boolean f2955b = false;

            /* renamed from: d */
            ArrayDeque<Task> f2957d = new ArrayDeque<>();

            /* renamed from: e */
            int f2958e = 0;

            ListenerRecord(ComponentName componentName) {
                this.f2954a = componentName;
            }
        }

        SideChannelManager(Context context) {
            this.f2949a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f2950b = handlerThread;
            handlerThread.start();
            this.f2951c = new Handler(this.f2950b.getLooper(), this);
        }

        /* renamed from: a */
        private boolean m19723a(ListenerRecord listenerRecord) {
            if (listenerRecord.f2955b) {
                return true;
            }
            boolean bindService = this.f2949a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(listenerRecord.f2954a), this, 33);
            listenerRecord.f2955b = bindService;
            if (bindService) {
                listenerRecord.f2958e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + listenerRecord.f2954a);
                this.f2949a.unbindService(this);
            }
            return listenerRecord.f2955b;
        }

        /* renamed from: b */
        private void m19722b(ListenerRecord listenerRecord) {
            if (listenerRecord.f2955b) {
                this.f2949a.unbindService(this);
                listenerRecord.f2955b = false;
            }
            listenerRecord.f2956c = null;
        }

        /* renamed from: c */
        private void m19721c(Task task) {
            m19714j();
            for (ListenerRecord listenerRecord : this.f2952d.values()) {
                listenerRecord.f2957d.add(task);
                m19717g(listenerRecord);
            }
        }

        /* renamed from: d */
        private void m19720d(ComponentName componentName) {
            ListenerRecord listenerRecord = this.f2952d.get(componentName);
            if (listenerRecord != null) {
                m19717g(listenerRecord);
            }
        }

        /* renamed from: e */
        private void m19719e(ComponentName componentName, IBinder iBinder) {
            ListenerRecord listenerRecord = this.f2952d.get(componentName);
            if (listenerRecord != null) {
                listenerRecord.f2956c = INotificationSideChannel.Stub.asInterface(iBinder);
                listenerRecord.f2958e = 0;
                m19717g(listenerRecord);
            }
        }

        /* renamed from: f */
        private void m19718f(ComponentName componentName) {
            ListenerRecord listenerRecord = this.f2952d.get(componentName);
            if (listenerRecord != null) {
                m19722b(listenerRecord);
            }
        }

        /* renamed from: g */
        private void m19717g(ListenerRecord listenerRecord) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + listenerRecord.f2954a + ", " + listenerRecord.f2957d.size() + " queued tasks");
            }
            if (!listenerRecord.f2957d.isEmpty()) {
                if (!m19723a(listenerRecord) || listenerRecord.f2956c == null) {
                    m19715i(listenerRecord);
                    return;
                }
                while (true) {
                    Task peek = listenerRecord.f2957d.peek();
                    if (peek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + peek);
                        }
                        peek.mo19713a(listenerRecord.f2956c);
                        listenerRecord.f2957d.remove();
                    } catch (DeadObjectException e) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + listenerRecord.f2954a);
                        }
                    } catch (RemoteException e2) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + listenerRecord.f2954a, e2);
                    }
                }
                if (!listenerRecord.f2957d.isEmpty()) {
                    m19715i(listenerRecord);
                }
            }
        }

        /* renamed from: i */
        private void m19715i(ListenerRecord listenerRecord) {
            if (!this.f2951c.hasMessages(3, listenerRecord.f2954a)) {
                int i = listenerRecord.f2958e + 1;
                listenerRecord.f2958e = i;
                if (i > 6) {
                    Log.w("NotifManCompat", "Giving up on delivering " + listenerRecord.f2957d.size() + " tasks to " + listenerRecord.f2954a + " after " + listenerRecord.f2958e + " retries");
                    listenerRecord.f2957d.clear();
                    return;
                }
                int i2 = (1 << (i - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i2 + " ms");
                }
                this.f2951c.sendMessageDelayed(this.f2951c.obtainMessage(3, listenerRecord.f2954a), i2);
            }
        }

        /* renamed from: j */
        private void m19714j() {
            Set<String> e = NotificationManagerCompat.m19728e(this.f2949a);
            if (!e.equals(this.f2953e)) {
                this.f2953e = e;
                List<ResolveInfo> queryIntentServices = this.f2949a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                HashSet<ComponentName> hashSet = new HashSet();
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    if (e.contains(resolveInfo.serviceInfo.packageName)) {
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
                    if (!this.f2952d.containsKey(componentName2)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                        }
                        this.f2952d.put(componentName2, new ListenerRecord(componentName2));
                    }
                }
                Iterator<Map.Entry<ComponentName, ListenerRecord>> it = this.f2952d.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<ComponentName, ListenerRecord> next = it.next();
                    if (!hashSet.contains(next.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                        }
                        m19722b(next.getValue());
                        it.remove();
                    }
                }
            }
        }

        /* renamed from: h */
        public void m19716h(Task task) {
            this.f2951c.obtainMessage(0, task).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m19721c((Task) message.obj);
                return true;
            } else if (i == 1) {
                ServiceConnectedEvent serviceConnectedEvent = (ServiceConnectedEvent) message.obj;
                m19719e(serviceConnectedEvent.f2947a, serviceConnectedEvent.f2948b);
                return true;
            } else if (i == 2) {
                m19718f((ComponentName) message.obj);
                return true;
            } else if (i != 3) {
                return false;
            } else {
                m19720d((ComponentName) message.obj);
                return true;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f2951c.obtainMessage(1, new ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f2951c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationManagerCompat$Task.class */
    public interface Task {
        /* renamed from: a */
        void mo19713a(INotificationSideChannel iNotificationSideChannel) throws RemoteException;
    }

    private NotificationManagerCompat(Context context) {
        this.f2937a = context;
        this.f2938b = (NotificationManager) context.getSystemService("notification");
    }

    @NonNull
    /* renamed from: d */
    public static NotificationManagerCompat m19729d(@NonNull Context context) {
        return new NotificationManagerCompat(context);
    }

    @NonNull
    /* renamed from: e */
    public static Set<String> m19728e(@NonNull Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f2932c) {
            if (string != null) {
                if (!string.equals(f2933d)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f2934e = hashSet;
                    f2933d = string;
                }
            }
            set = f2934e;
        }
        return set;
    }

    /* renamed from: h */
    private void m19725h(Task task) {
        synchronized (f2935f) {
            if (f2936g == null) {
                f2936g = new SideChannelManager(this.f2937a.getApplicationContext());
            }
            f2936g.m19716h(task);
        }
    }

    /* renamed from: i */
    private static boolean m19724i(Notification notification) {
        Bundle a = NotificationCompat.m19804a(notification);
        return a != null && a.getBoolean("android.support.useSideChannel");
    }

    /* renamed from: a */
    public boolean m19732a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return this.f2938b.areNotificationsEnabled();
        }
        boolean z = true;
        if (i >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) this.f2937a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f2937a.getApplicationInfo();
            String packageName = this.f2937a.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                z = ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m19731b(int i) {
        m19730c(null, i);
    }

    /* renamed from: c */
    public void m19730c(@Nullable String str, int i) {
        this.f2938b.cancel(str, i);
        if (Build.VERSION.SDK_INT <= 19) {
            m19725h(new CancelTask(this.f2937a.getPackageName(), i, str));
        }
    }

    /* renamed from: f */
    public void m19727f(int i, @NonNull Notification notification) {
        m19726g(null, i, notification);
    }

    /* renamed from: g */
    public void m19726g(@Nullable String str, int i, @NonNull Notification notification) {
        if (m19724i(notification)) {
            m19725h(new NotifyTask(this.f2937a.getPackageName(), i, str, notification));
            this.f2938b.cancel(str, i);
            return;
        }
        this.f2938b.notify(str, i, notification);
    }
}
