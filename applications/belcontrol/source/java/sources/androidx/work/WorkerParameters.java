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
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters.class */
public final class WorkerParameters {

    /* renamed from: a */
    public UUID f1657a;

    /* renamed from: b */
    public u40 f1658b;

    /* renamed from: c */
    public Set<String> f1659c;

    /* renamed from: d */
    public C0218a f1660d;

    /* renamed from: e */
    public int f1661e;

    /* renamed from: f */
    public Executor f1662f;

    /* renamed from: g */
    public v70 f1663g;

    /* renamed from: h */
    public g50 f1664h;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C0218a {

        /* renamed from: a */
        public List<String> f1665a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f1666b = Collections.emptyList();

        /* renamed from: c */
        public Network f1667c;
    }

    public WorkerParameters(UUID uuid, u40 u40Var, Collection<String> collection, C0218a c0218a, int i, Executor executor, v70 v70Var, g50 g50Var) {
        this.f1657a = uuid;
        this.f1658b = u40Var;
        this.f1659c = new HashSet(collection);
        this.f1660d = c0218a;
        this.f1661e = i;
        this.f1662f = executor;
        this.f1663g = v70Var;
        this.f1664h = g50Var;
    }

    /* renamed from: a */
    public Executor m5893a() {
        return this.f1662f;
    }

    /* renamed from: b */
    public UUID m5892b() {
        return this.f1657a;
    }

    /* renamed from: c */
    public u40 m5891c() {
        return this.f1658b;
    }

    /* renamed from: d */
    public Network m5890d() {
        return this.f1660d.f1667c;
    }

    /* renamed from: e */
    public int m5889e() {
        return this.f1661e;
    }

    /* renamed from: f */
    public Set<String> m5888f() {
        return this.f1659c;
    }

    /* renamed from: g */
    public v70 m5887g() {
        return this.f1663g;
    }

    /* renamed from: h */
    public List<String> m5886h() {
        return this.f1660d.f1665a;
    }

    /* renamed from: i */
    public List<Uri> m5885i() {
        return this.f1660d.f1666b;
    }

    /* renamed from: j */
    public g50 m5884j() {
        return this.f1664h;
    }
}
