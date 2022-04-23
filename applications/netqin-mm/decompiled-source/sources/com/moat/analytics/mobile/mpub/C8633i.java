package com.moat.analytics.mobile.mpub;

import android.content.Context;
import android.content.Intent;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p012b.p072q.p073a.C1134a;
/* renamed from: com.moat.analytics.mobile.mpub.i */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/i.class */
public class C8633i {

    /* renamed from: a */
    public static final C8633i f33485a = new C8633i();

    /* renamed from: e */
    public ScheduledFuture<?> f33489e;

    /* renamed from: f */
    public ScheduledFuture<?> f33490f;

    /* renamed from: d */
    public final ScheduledExecutorService f33488d = Executors.newScheduledThreadPool(1);

    /* renamed from: b */
    public final Map<C8636j, String> f33486b = new WeakHashMap();

    /* renamed from: c */
    public final Map<AbstractC8618b, String> f33487c = new WeakHashMap();

    /* renamed from: a */
    public static C8633i m4938a() {
        return f33485a;
    }

    /* renamed from: a */
    private void m4937a(final Context context) {
        ScheduledFuture<?> scheduledFuture = this.f33490f;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            C8652p.m4848a(3, "JSUpdateLooper", this, "Starting metadata reporting loop");
            this.f33490f = this.f33488d.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.mpub.i.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C1134a.m34598a(context.getApplicationContext()).m34597a(new Intent("UPDATE_METADATA"));
                        if (C8633i.this.f33486b.isEmpty()) {
                            C8633i.this.f33490f.cancel(true);
                        }
                    } catch (Exception e) {
                        C8643m.m4879a(e);
                    }
                }
            }, 0L, 50L, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: b */
    private void m4931b(final Context context) {
        ScheduledFuture<?> scheduledFuture = this.f33489e;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            C8652p.m4848a(3, "JSUpdateLooper", this, "Starting view update loop");
            this.f33489e = this.f33488d.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.mpub.i.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C1134a.m34598a(context.getApplicationContext()).m34597a(new Intent("UPDATE_VIEW_INFO"));
                        if (C8633i.this.f33487c.isEmpty()) {
                            C8652p.m4848a(3, "JSUpdateLooper", C8633i.this, "No more active trackers");
                            C8633i.this.f33489e.cancel(true);
                        }
                    } catch (Exception e) {
                        C8643m.m4879a(e);
                    }
                }
            }, 0L, C8667w.m4813a().f33576d, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: a */
    public void m4936a(Context context, AbstractC8618b bVar) {
        if (bVar != null) {
            C8652p.m4848a(3, "JSUpdateLooper", this, "addActiveTracker" + bVar.hashCode());
            Map<AbstractC8618b, String> map = this.f33487c;
            if (map != null && !map.containsKey(bVar)) {
                this.f33487c.put(bVar, "");
                m4931b(context);
            }
        }
    }

    /* renamed from: a */
    public void m4935a(Context context, C8636j jVar) {
        Map<C8636j, String> map = this.f33486b;
        if (map != null && jVar != null) {
            map.put(jVar, "");
            m4937a(context);
        }
    }

    /* renamed from: a */
    public void m4934a(AbstractC8618b bVar) {
        if (bVar != null) {
            C8652p.m4848a(3, "JSUpdateLooper", this, "removeActiveTracker" + bVar.hashCode());
            Map<AbstractC8618b, String> map = this.f33487c;
            if (map != null) {
                map.remove(bVar);
            }
        }
    }

    /* renamed from: a */
    public void m4932a(C8636j jVar) {
        if (jVar != null) {
            C8652p.m4848a(3, "JSUpdateLooper", this, "removeSetupNeededBridge" + jVar.hashCode());
            Map<C8636j, String> map = this.f33486b;
            if (map != null) {
                map.remove(jVar);
            }
        }
    }
}
