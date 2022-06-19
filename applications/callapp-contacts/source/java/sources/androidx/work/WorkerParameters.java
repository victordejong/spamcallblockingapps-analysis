package androidx.work;

import android.net.Network;
import android.net.Uri;
import androidx.work.impl.utils.p090b.AbstractC3119a;
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
    UUID f11116a;

    /* renamed from: b */
    C2992d f11117b;

    /* renamed from: c */
    Set<String> f11118c;

    /* renamed from: d */
    C2985a f11119d;

    /* renamed from: e */
    int f11120e;

    /* renamed from: f */
    Executor f11121f;

    /* renamed from: g */
    AbstractC3119a f11122g;

    /* renamed from: h */
    AbstractC3168w f11123h;

    /* renamed from: i */
    AbstractC3158p f11124i;

    /* renamed from: j */
    AbstractC2996g f11125j;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static final class C2985a {

        /* renamed from: a */
        public List<String> f11126a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f11127b = Collections.emptyList();

        /* renamed from: c */
        public Network f11128c;
    }

    public WorkerParameters(UUID uuid, C2992d c2992d, Collection<String> collection, C2985a c2985a, int i, Executor executor, AbstractC3119a abstractC3119a, AbstractC3168w abstractC3168w, AbstractC3158p abstractC3158p, AbstractC2996g abstractC2996g) {
        this.f11116a = uuid;
        this.f11117b = c2992d;
        this.f11118c = new HashSet(collection);
        this.f11119d = c2985a;
        this.f11120e = i;
        this.f11121f = executor;
        this.f11122g = abstractC3119a;
        this.f11123h = abstractC3168w;
        this.f11124i = abstractC3158p;
        this.f11125j = abstractC2996g;
    }
}
