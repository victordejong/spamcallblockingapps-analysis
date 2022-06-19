package org.mistergroup.shouldianswer.services;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.PeriodicTask;
import com.google.android.gms.gcm.TaskParams;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1891f;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
import org.mistergroup.shouldianswer.p098b.C2278g;
import org.mistergroup.shouldianswer.p098b.C2298k;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/TasksService.class */
public final class TasksService extends GcmTaskService {

    /* renamed from: a */
    public static final C2483a f7257a = new C2483a(null);

    /* renamed from: org.mistergroup.shouldianswer.services.TasksService$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/TasksService$a.class */
    public static final class C2483a {
        private C2483a() {
        }

        public /* synthetic */ C2483a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m929a(Context context) {
            try {
                C3104j.m154b(C3104j.f9124a, "TasksService.scheduleUpdateDB via GCM", null, 2, null);
                GcmNetworkManager.getInstance(context).schedule(new PeriodicTask.Builder().setService(TasksService.class).setTag("updatedb").setPersisted(true).setFlex(600L).setPeriod(14400).setUpdateCurrent(false).setRequiredNetwork(2).build());
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }

        /* renamed from: b */
        public final void m927b(Context context) {
            try {
                C3104j.m154b(C3104j.f9124a, "TasksService.scheduleServiceKeeper via GCM", null, 2, null);
                GcmNetworkManager.getInstance(context).schedule(new PeriodicTask.Builder().setService(TasksService.class).setTag("servicekeeper").setPersisted(true).setPeriod(600).setUpdateCurrent(false).build());
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }

        /* renamed from: c */
        public final void m925c(Context context) {
            try {
                GcmNetworkManager.getInstance(context).cancelTask("servicekeeper", TasksService.class);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }

        /* renamed from: a */
        public final void m930a() {
            try {
                TasksService.f7257a.m929a(MyApp.f5480c.m1802a());
                if (!C2405c.f6946b.m1215C()) {
                    TasksService.f7257a.m927b(MyApp.f5480c.m1802a());
                } else {
                    TasksService.f7257a.m925c(MyApp.f5480c.m1802a());
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    @AbstractC1634f(m3162b = "TasksService.kt", m3161c = {81}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.TasksService$onUpdateDatabase$1")
    /* renamed from: org.mistergroup.shouldianswer.services.TasksService$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/TasksService$b.class */
    public static final class C2484b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super Object>, Object> {

        /* renamed from: a */
        Object f7258a;

        /* renamed from: b */
        int f7259b;

        /* renamed from: c */
        private AbstractC1786ad f7260c;

        C2484b(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super Object> abstractC1641c) {
            return ((C2484b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2484b c2484b = new C2484b(abstractC1641c);
            c2484b.f7260c = (AbstractC1786ad) obj;
            return c2484b;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f7259b;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7260c;
                    C3079ad c3079ad = C3079ad.f8982a;
                    this.f7258a = abstractC1786ad;
                    this.f7259b = 1;
                    Object m215a = c3079ad.m215a(false, (AbstractC1641c<? super Boolean>) this);
                    obj = m215a;
                    if (m215a == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7258a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                obj = C1775o.f4450a;
            }
            return obj;
        }
    }

    /* renamed from: a */
    private final int m932a() {
        C3104j.m157a(C3104j.f9124a, "TasksService.onUpdateDatabase.begin", (String) null, 2, (Object) null);
        try {
            try {
                boolean m1147b = C2408a.f6967a.m1147b(C2408a.f6967a.m1143f());
                C3104j.m157a(C3104j.f9124a, "TasksService.onUpdateDatabase uploadLocalDatabase", (String) null, 2, (Object) null);
                C1891f.m2680a(null, new C2484b(null), 1, null);
                if (!C2278g.f6398a.m1707a()) {
                    C2298k.f6489a.m1670a();
                }
                int i = m1147b ? 0 : 1;
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "TasksService.onUpdateDatabase result=" + String.valueOf(m1147b), (String) null, 2, (Object) null);
                C3104j.m157a(C3104j.f9124a, "TasksService.onUpdateDatabase.end", (String) null, 2, (Object) null);
                return i;
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                C3104j.m157a(C3104j.f9124a, "TasksService.onUpdateDatabase.end", (String) null, 2, (Object) null);
                return 1;
            }
        } catch (Throwable th) {
            C3104j.m157a(C3104j.f9124a, "TasksService.onUpdateDatabase.end", (String) null, 2, (Object) null);
            throw th;
        }
    }

    /* renamed from: b */
    private final int m931b() {
        try {
            if (MonitoringService.f7214a.m948a() == null) {
                MonitoringService.f7214a.m946b();
            } else {
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "TasksService.onServiceCheck wasRunning=running", (String) null, 2, (Object) null);
            }
            return 0;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return 0;
        }
    }

    @Override // com.google.android.gms.gcm.GcmTaskService, android.app.Service
    public void onCreate() {
        super.onCreate();
        C3104j.m157a(C3104j.f9124a, "TasksService.onCreate", (String) null, 2, (Object) null);
    }

    @Override // com.google.android.gms.gcm.GcmTaskService
    public void onInitializeTasks() {
        C3104j.m157a(C3104j.f9124a, "TasksService.onInitializeTasks", (String) null, 2, (Object) null);
        super.onInitializeTasks();
        TasksService tasksService = this;
        f7257a.m929a(tasksService);
        if (!C2405c.f6946b.m1215C()) {
            f7257a.m927b(tasksService);
        } else {
            f7257a.m925c(tasksService);
        }
    }

    @Override // com.google.android.gms.gcm.GcmTaskService
    public int onRunTask(TaskParams taskParams) {
        C1694h.m3117b(taskParams, "taskParams");
        String tag = taskParams.getTag();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "TASK: TasksService.onRunTask " + tag, (String) null, 2, (Object) null);
        if (C1747g.m3036a(tag, "updatedb", true)) {
            return m932a();
        }
        return C1747g.m3036a(tag, "servicekeeper", true) ? m931b() : 0;
    }

    @Override // com.google.android.gms.gcm.GcmTaskService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        C1694h.m3117b(intent, "intent");
        try {
            C3104j.m157a(C3104j.f9124a, "TasksService.onStartCommand", (String) null, 2, (Object) null);
            C3074a.f8976a.m227c("TasksService.onStartCommand heartbeat");
            if (intent.getAction() != null) {
                return super.onStartCommand(intent, i, i2);
            }
            m932a();
            return 0;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return 0;
        }
    }
}
