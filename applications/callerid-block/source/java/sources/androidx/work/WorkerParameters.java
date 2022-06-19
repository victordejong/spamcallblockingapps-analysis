package androidx.work;

import android.net.Network;
import android.net.Uri;
import androidx.work.impl.utils.p010j.AbstractC0607a;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters.class */
public final class WorkerParameters {

    /* renamed from: a */
    private UUID f2937a;

    /* renamed from: b */
    private C0552d f2938b;

    /* renamed from: c */
    private Set<String> f2939c;

    /* renamed from: d */
    private C0544a f2940d;

    /* renamed from: e */
    private int f2941e;

    /* renamed from: f */
    private Executor f2942f;

    /* renamed from: g */
    private AbstractC0607a f2943g;

    /* renamed from: h */
    private AbstractC0612m f2944h;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C0544a {

        /* renamed from: a */
        public List<String> f2945a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f2946b = Collections.emptyList();

        /* renamed from: c */
        public Network f2947c;
    }

    public WorkerParameters(UUID uuid, C0552d c0552d, Collection<String> collection, C0544a c0544a, int i, Executor executor, AbstractC0607a abstractC0607a, AbstractC0612m abstractC0612m) {
        this.f2937a = uuid;
        this.f2938b = c0552d;
        this.f2939c = new HashSet(collection);
        this.f2940d = c0544a;
        this.f2941e = i;
        this.f2942f = executor;
        this.f2943g = abstractC0607a;
        this.f2944h = abstractC0612m;
    }

    /* renamed from: a */
    public Executor m11805a() {
        return this.f2942f;
    }

    /* renamed from: b */
    public UUID m11804b() {
        return this.f2937a;
    }

    /* renamed from: c */
    public C0552d m11803c() {
        return this.f2938b;
    }

    /* renamed from: d */
    public Network m11802d() {
        return this.f2940d.f2947c;
    }

    /* renamed from: e */
    public int m11801e() {
        return this.f2941e;
    }

    /* renamed from: f */
    public Set<String> m11800f() {
        return this.f2939c;
    }

    /* renamed from: g */
    public AbstractC0607a m11799g() {
        return this.f2943g;
    }

    /* renamed from: h */
    public List<String> m11798h() {
        return this.f2940d.f2945a;
    }

    /* renamed from: i */
    public List<Uri> m11797i() {
        return this.f2940d.f2946b;
    }

    /* renamed from: j */
    public AbstractC0612m m11796j() {
        return this.f2944h;
    }
}
