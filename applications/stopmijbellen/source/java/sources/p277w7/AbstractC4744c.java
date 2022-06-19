package p277w7;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
/* renamed from: w7.c */
/* loaded from: classes2-dex2jar.jar:w7/c.class */
public abstract class AbstractC4744c<T> extends WeakReference<T> implements AbstractC4756g {

    /* renamed from: a */
    public static final /* synthetic */ int f14629a = 0;

    /* renamed from: w7.c$a */
    /* loaded from: classes2-dex2jar.jar:w7/c$a.class */
    public static class C4745a extends AbstractC4746b<Activity> {
        public C4745a(Activity activity) {
            super(activity);
        }

        @Override // p277w7.AbstractC4756g
        /* renamed from: a */
        public String mo497a() {
            Activity activity = (Activity) get();
            return activity == null ? "Activity reference null" : activity.isFinishing() ? "Activity finished" : null;
        }
    }

    /* renamed from: w7.c$b */
    /* loaded from: classes2-dex2jar.jar:w7/c$b.class */
    public static abstract class AbstractC4746b<T extends Context> extends AbstractC4744c<T> {
        public AbstractC4746b(T t) {
            super(t);
        }
    }

    /* renamed from: w7.c$c */
    /* loaded from: classes2-dex2jar.jar:w7/c$c.class */
    public static class C4747c extends AbstractC4746b<Service> {
        public C4747c(Service service) {
            super(service);
        }

        @Override // p277w7.AbstractC4756g
        /* renamed from: a */
        public String mo497a() {
            String str;
            Service service = (Service) get();
            if (service != null) {
                List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) service.getSystemService("activity")).getRunningServices(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                if (runningServices != null) {
                    Iterator<ActivityManager.RunningServiceInfo> it2 = runningServices.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            str = "Service stopped";
                            break;
                        }
                        if (service.getClass().getName().equals(it2.next().service.getClassName())) {
                            str = null;
                            break;
                        }
                    }
                } else {
                    str = "Could not retrieve services from service manager";
                }
            } else {
                str = "Service reference null";
            }
            return str;
        }
    }

    public AbstractC4744c(T t) {
        super(t);
    }
}
