package com.google.firebase.heartbeatinfo;

import android.content.Context;
import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import com.google.firebase.components.C8884t;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.p313k.AbstractC9247b;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.heartbeatinfo.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/d.class */
public class C9172d implements HeartBeatInfo {

    /* renamed from: a */
    private static final ThreadFactory f39499a = ThreadFactoryC9171c.m1655a();

    /* renamed from: b */
    private AbstractC9247b<C9174f> f39500b;

    /* renamed from: c */
    private final Set<AbstractC9173e> f39501c;

    /* renamed from: d */
    private final Executor f39502d;

    private C9172d(Context context, Set<AbstractC9173e> set) {
        this(new C8884t(C9169a.m1657a(context)), set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f39499a));
    }

    C9172d(AbstractC9247b<C9174f> abstractC9247b, Set<AbstractC9173e> set, Executor executor) {
        this.f39500b = abstractC9247b;
        this.f39501c = set;
        this.f39502d = executor;
    }

    /* renamed from: b */
    public static C8858d<HeartBeatInfo> m1653b() {
        return C8858d.m2510a(HeartBeatInfo.class).m2495b(C8881q.m2438i(Context.class)).m2495b(C8881q.m2437j(AbstractC9173e.class)).m2491f(C9170b.m1656b()).m2493d();
    }

    /* renamed from: c */
    public static /* synthetic */ HeartBeatInfo m1652c(AbstractC8861e abstractC8861e) {
        return new C9172d((Context) abstractC8861e.mo2417a(Context.class), abstractC8861e.mo2414d(AbstractC9173e.class));
    }

    /* renamed from: e */
    public static /* synthetic */ Thread m1650e(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    /* renamed from: a */
    public HeartBeatInfo.HeartBeat mo1654a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean m1646d = this.f39500b.get().m1646d(str, currentTimeMillis);
        boolean m1647c = this.f39500b.get().m1647c(currentTimeMillis);
        return (!m1646d || !m1647c) ? m1647c ? HeartBeatInfo.HeartBeat.GLOBAL : m1646d ? HeartBeatInfo.HeartBeat.SDK : HeartBeatInfo.HeartBeat.NONE : HeartBeatInfo.HeartBeat.COMBINED;
    }
}
