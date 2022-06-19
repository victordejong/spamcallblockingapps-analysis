package androidx.work;

import android.net.Network;
import android.net.Uri;
import androidx.work.impl.utils.p019o.AbstractC1399a;
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
    private UUID f5237a;

    /* renamed from: b */
    private C1238d f5238b;

    /* renamed from: c */
    private Set<String> f5239c;

    /* renamed from: d */
    private C1229a f5240d;

    /* renamed from: e */
    private int f5241e;

    /* renamed from: f */
    private Executor f5242f;

    /* renamed from: g */
    private AbstractC1399a f5243g;

    /* renamed from: h */
    private AbstractC1421s f5244h;

    /* renamed from: i */
    private AbstractC1414m f5245i;

    /* renamed from: j */
    private AbstractC1241f f5246j;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C1229a {

        /* renamed from: a */
        public List<String> f5247a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f5248b = Collections.emptyList();

        /* renamed from: c */
        public Network f5249c;
    }

    public WorkerParameters(UUID uuid, C1238d c1238d, Collection<String> collection, C1229a c1229a, int i, Executor executor, AbstractC1399a abstractC1399a, AbstractC1421s abstractC1421s, AbstractC1414m abstractC1414m, AbstractC1241f abstractC1241f) {
        this.f5237a = uuid;
        this.f5238b = c1238d;
        this.f5239c = new HashSet(collection);
        this.f5240d = c1229a;
        this.f5241e = i;
        this.f5242f = executor;
        this.f5243g = abstractC1399a;
        this.f5244h = abstractC1421s;
        this.f5245i = abstractC1414m;
        this.f5246j = abstractC1241f;
    }

    /* renamed from: a */
    public Executor m30609a() {
        return this.f5242f;
    }

    /* renamed from: b */
    public AbstractC1241f m30608b() {
        return this.f5246j;
    }

    /* renamed from: c */
    public UUID m30607c() {
        return this.f5237a;
    }

    /* renamed from: d */
    public C1238d m30606d() {
        return this.f5238b;
    }

    /* renamed from: e */
    public Network m30605e() {
        return this.f5240d.f5249c;
    }

    /* renamed from: f */
    public AbstractC1414m m30604f() {
        return this.f5245i;
    }

    /* renamed from: g */
    public int m30603g() {
        return this.f5241e;
    }

    /* renamed from: h */
    public Set<String> m30602h() {
        return this.f5239c;
    }

    /* renamed from: i */
    public AbstractC1399a m30601i() {
        return this.f5243g;
    }

    /* renamed from: j */
    public List<String> m30600j() {
        return this.f5240d.f5247a;
    }

    /* renamed from: k */
    public List<Uri> m30599k() {
        return this.f5240d.f5248b;
    }

    /* renamed from: l */
    public AbstractC1421s m30598l() {
        return this.f5244h;
    }
}
