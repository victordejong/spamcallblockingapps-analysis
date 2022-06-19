package androidx.work;

import android.net.Network;
import android.net.Uri;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3821e;
import p186o1.AbstractC3835l;
import p186o1.AbstractC3841q;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters.class */
public final class WorkerParameters {

    /* renamed from: a */
    public UUID f2618a;

    /* renamed from: b */
    public C0680b f2619b;

    /* renamed from: c */
    public Set<String> f2620c;

    /* renamed from: d */
    public C0676a f2621d;

    /* renamed from: e */
    public int f2622e;

    /* renamed from: f */
    public Executor f2623f;

    /* renamed from: g */
    public AbstractC0008a f2624g;

    /* renamed from: h */
    public AbstractC3841q f2625h;

    /* renamed from: i */
    public AbstractC3835l f2626i;

    /* renamed from: j */
    public AbstractC3821e f2627j;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C0676a {

        /* renamed from: a */
        public List<String> f2628a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f2629b = Collections.emptyList();

        /* renamed from: c */
        public Network f2630c;
    }

    public WorkerParameters(UUID uuid, C0680b c0680b, Collection<String> collection, C0676a c0676a, int i, Executor executor, AbstractC0008a abstractC0008a, AbstractC3841q abstractC3841q, AbstractC3835l abstractC3835l, AbstractC3821e abstractC3821e) {
        this.f2618a = uuid;
        this.f2619b = c0680b;
        this.f2620c = new HashSet(collection);
        this.f2621d = c0676a;
        this.f2622e = i;
        this.f2623f = executor;
        this.f2624g = abstractC0008a;
        this.f2625h = abstractC3841q;
        this.f2626i = abstractC3835l;
        this.f2627j = abstractC3821e;
    }
}
