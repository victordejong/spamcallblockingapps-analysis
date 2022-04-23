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

    /* renamed from: a  reason: collision with root package name */
    UUID f5958a;

    /* renamed from: b  reason: collision with root package name */
    d f5959b;

    /* renamed from: c  reason: collision with root package name */
    Set<String> f5960c;

    /* renamed from: d  reason: collision with root package name */
    a f5961d;
    int e;
    Executor f;
    androidx.work.impl.utils.b.a g;
    w h;
    p i;
    g j;

    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public List<String> f5962a = Collections.emptyList();

        /* renamed from: b  reason: collision with root package name */
        public List<Uri> f5963b = Collections.emptyList();

        /* renamed from: c  reason: collision with root package name */
        public Network f5964c;
    }

    public WorkerParameters(UUID uuid, d dVar, Collection<String> collection, a aVar, int i, Executor executor, androidx.work.impl.utils.b.a aVar2, w wVar, p pVar, g gVar) {
        this.f5958a = uuid;
        this.f5959b = dVar;
        this.f5960c = new HashSet(collection);
        this.f5961d = aVar;
        this.e = i;
        this.f = executor;
        this.g = aVar2;
        this.h = wVar;
        this.i = pVar;
        this.j = gVar;
    }
}
