package p081h.p203i.p325c.p372x;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ThreadFactoryC7089b;
import p081h.p203i.p204a.p224e.p259j.p270k.C7972a;
import p081h.p203i.p204a.p224e.p259j.p270k.C7977f;
/* renamed from: h.i.c.x.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/g.class */
public class C9985g {
    /* renamed from: a */
    public static Executor m13760a(String str) {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC7089b(str));
    }

    /* renamed from: a */
    public static ExecutorService m13761a() {
        return C7972a.m18713a().mo18712a(new ThreadFactoryC7089b("Firebase-Messaging-Intent-Handle"), C7977f.f18702a);
    }

    /* renamed from: b */
    public static ExecutorService m13759b() {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC7089b("Firebase-Messaging-Network-Io"));
    }

    /* renamed from: c */
    public static ScheduledExecutorService m13758c() {
        return new ScheduledThreadPoolExecutor(1, new ThreadFactoryC7089b("Firebase-Messaging-Topics-Io"));
    }

    /* renamed from: d */
    public static Executor m13757d() {
        return m13760a("Firebase-Messaging-Trigger-Topics-Io");
    }
}
