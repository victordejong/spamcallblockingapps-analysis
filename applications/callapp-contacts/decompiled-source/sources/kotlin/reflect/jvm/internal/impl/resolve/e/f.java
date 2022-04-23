package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/f.class */
public final class f extends i {

    /* renamed from: a  reason: collision with root package name */
    private final h f38291a;

    public f(h workerScope) {
        p.d(workerScope, "workerScope");
        this.f38291a = workerScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getClassifierNames() {
        return this.f38291a.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final g getContributedClassifier(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        g contributedClassifier = this.f38291a.getContributedClassifier(name, location);
        d dVar = null;
        ax axVar = null;
        if (contributedClassifier != null) {
            d dVar2 = contributedClassifier instanceof d ? (d) contributedClassifier : null;
            if (dVar2 == null) {
                if (contributedClassifier instanceof ax) {
                    axVar = (ax) contributedClassifier;
                }
                dVar = axVar;
            } else {
                dVar = dVar2;
            }
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final /* synthetic */ Collection getContributedDescriptors(d kindFilter, Function1 nameFilter) {
        int i;
        ArrayList arrayList;
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        d.a aVar = d.f38279a;
        i = d.v;
        int i2 = i & kindFilter.f38282c;
        d dVar = i2 == 0 ? null : new d(i2, kindFilter.f38281b);
        if (dVar == null) {
            arrayList = z.f36608a;
        } else {
            Collection<k> contributedDescriptors = this.f38291a.getContributedDescriptors(dVar, nameFilter);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : contributedDescriptors) {
                if (obj instanceof h) {
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getFunctionNames() {
        return this.f38291a.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Set<e> getVariableNames() {
        return this.f38291a.getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final void recordLookup(e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        this.f38291a.recordLookup(name, location);
    }

    public final String toString() {
        return p.a("Classes from ", (Object) this.f38291a);
    }
}
