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
import p1727n3.p1834m0.AbstractC26677b0;
import p1727n3.p1834m0.AbstractC26834j;
import p1727n3.p1834m0.AbstractC26853v;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters.class */
public final class WorkerParameters {

    /* renamed from: a */
    public UUID f1556a;

    /* renamed from: b */
    public C26829f f1557b;

    /* renamed from: c */
    public Set<String> f1558c;

    /* renamed from: d */
    public C0420a f1559d;

    /* renamed from: e */
    public int f1560e;

    /* renamed from: f */
    public Executor f1561f;

    /* renamed from: g */
    public AbstractC26821a f1562g;

    /* renamed from: h */
    public AbstractC26677b0 f1563h;

    /* renamed from: i */
    public AbstractC26853v f1564i;

    /* renamed from: j */
    public AbstractC26834j f1565j;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static class C0420a {

        /* renamed from: a */
        public List<String> f1566a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f1567b = Collections.emptyList();

        /* renamed from: c */
        public Network f1568c;
    }

    public WorkerParameters(UUID uuid, C26829f c26829f, Collection<String> collection, C0420a c0420a, int i, Executor executor, AbstractC26821a abstractC26821a, AbstractC26677b0 abstractC26677b0, AbstractC26853v abstractC26853v, AbstractC26834j abstractC26834j) {
        this.f1556a = uuid;
        this.f1557b = c26829f;
        this.f1558c = new HashSet(collection);
        this.f1559d = c0420a;
        this.f1560e = i;
        this.f1561f = executor;
        this.f1562g = abstractC26821a;
        this.f1563h = abstractC26677b0;
        this.f1564i = abstractC26853v;
        this.f1565j = abstractC26834j;
    }
}
