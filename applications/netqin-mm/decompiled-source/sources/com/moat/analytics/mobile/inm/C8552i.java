package com.moat.analytics.mobile.inm;

import android.content.Context;
import android.content.Intent;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p012b.p072q.p073a.C1134a;
/* renamed from: com.moat.analytics.mobile.inm.i */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/i.class */
public class C8552i {

    /* renamed from: a */
    public static final C8552i f33268a = new C8552i();

    /* renamed from: e */
    public ScheduledFuture<?> f33272e;

    /* renamed from: f */
    public ScheduledFuture<?> f33273f;

    /* renamed from: d */
    public final ScheduledExecutorService f33271d = Executors.newScheduledThreadPool(1);

    /* renamed from: b */
    public final Map<C8555j, String> f33269b = new WeakHashMap();

    /* renamed from: c */
    public final Map<AbstractC8537b, String> f33270c = new WeakHashMap();

    /* renamed from: a */
    public static C8552i m5194a() {
        return f33268a;
    }

    /* renamed from: a */
    private void m5193a(final Context context) {
        ScheduledFuture<?> scheduledFuture = this.f33273f;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            C8571p.m5104a(3, "JSUpdateLooper", this, "Starting metadata reporting loop");
            this.f33273f = this.f33271d.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.inm.i.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C1134a.m34598a(context.getApplicationContext()).m34597a(new Intent("UPDATE_METADATA"));
                        if (C8552i.this.f33269b.isEmpty()) {
                            C8552i.this.f33273f.cancel(true);
                        }
                    } catch (Exception e) {
                        C8562m.m5135a(e);
                    }
                }
            }, 0L, 50L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: b */
    private void m5187b(final Context context) {
        ScheduledFuture<?> scheduledFuture = this.f33272e;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            C8571p.m5104a(3, "JSUpdateLooper", this, "Starting view update loop");
            this.f33272e = this.f33271d.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.inm.i.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C1134a.m34598a(context.getApplicationContext()).m34597a(new Intent("UPDATE_VIEW_INFO"));
                        if (C8552i.this.f33270c.isEmpty()) {
                            C8571p.m5104a(3, "JSUpdateLooper", C8552i.this, "No more active trackers");
                            C8552i.this.f33272e.cancel(true);
                        }
                    } catch (Exception e) {
                        C8562m.m5135a(e);
                    }
                }
            }, 0L, C8586w.m5069a().f33359d, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: a */
    public void m5192a(Context context, AbstractC8537b bVar) {
        if (bVar != null) {
            C8571p.m5104a(3, "JSUpdateLooper", this, "addActiveTracker" + bVar.hashCode());
            Map<AbstractC8537b, String> map = this.f33270c;
            if (map != null && !map.containsKey(bVar)) {
                this.f33270c.put(bVar, "");
                m5187b(context);
            }
        }
    }

    /* renamed from: a */
    public void m5191a(Context context, C8555j jVar) {
        Map<C8555j, String> map = this.f33269b;
        if (map != null && jVar != null) {
            map.put(jVar, "");
            m5193a(context);
        }
    }

    /* renamed from: a */
    public void m5190a(AbstractC8537b bVar) {
        if (bVar != null) {
            C8571p.m5104a(3, "JSUpdateLooper", this, "removeActiveTracker" + bVar.hashCode());
            Map<AbstractC8537b, String> map = this.f33270c;
            if (map != null) {
                map.remove(bVar);
            }
        }
    }

    /* renamed from: a */
    public void m5188a(C8555j jVar) {
        if (jVar != null) {
            C8571p.m5104a(3, "JSUpdateLooper", this, "removeSetupNeededBridge" + jVar.hashCode());
            Map<C8555j, String> map = this.f33269b;
            if (map != null) {
                map.remove(jVar);
            }
        }
    }
}
