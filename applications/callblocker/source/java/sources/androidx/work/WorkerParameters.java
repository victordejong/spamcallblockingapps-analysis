package androidx.work;

import android.net.Network;
import android.net.Uri;
import androidx.work.impl.utils.p058b.AbstractC1271a;
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
    private UUID f3862a;

    /* renamed from: b */
    private C1133e f3863b;

    /* renamed from: c */
    private Set<String> f3864c;

    /* renamed from: d */
    private C1124a f3865d;

    /* renamed from: e */
    private int f3866e;

    /* renamed from: f */
    private Executor f3867f;

    /* renamed from: g */
    private AbstractC1271a f3868g;

    /* renamed from: h */
    private AbstractC1313v f3869h;

    /* renamed from: i */
    private AbstractC1304p f3870i;

    /* renamed from: j */
    private AbstractC1138i f3871j;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C1124a {

        /* renamed from: a */
        public List<String> f3872a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f3873b = Collections.emptyList();

        /* renamed from: c */
        public Network f3874c;
    }

    public WorkerParameters(UUID uuid, C1133e c1133e, Collection<String> collection, C1124a c1124a, int i, Executor executor, AbstractC1271a abstractC1271a, AbstractC1313v abstractC1313v, AbstractC1304p abstractC1304p, AbstractC1138i abstractC1138i) {
        this.f3862a = uuid;
        this.f3863b = c1133e;
        this.f3864c = new HashSet(collection);
        this.f3865d = c1124a;
        this.f3866e = i;
        this.f3867f = executor;
        this.f3868g = abstractC1271a;
        this.f3869h = abstractC1313v;
        this.f3870i = abstractC1304p;
        this.f3871j = abstractC1138i;
    }

    /* renamed from: a */
    public UUID m17962a() {
        return this.f3862a;
    }

    /* renamed from: b */
    public C1133e m17961b() {
        return this.f3863b;
    }

    /* renamed from: c */
    public Executor m17960c() {
        return this.f3867f;
    }

    /* renamed from: d */
    public AbstractC1271a m17959d() {
        return this.f3868g;
    }

    /* renamed from: e */
    public AbstractC1313v m17958e() {
        return this.f3869h;
    }
}
