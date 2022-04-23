package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/l.class */
public final class l implements g {

    /* renamed from: b  reason: collision with root package name */
    private final g f37373b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f37374c;

    /* renamed from: d  reason: collision with root package name */
    private final Function1<b, Boolean> f37375d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l(g delegate, Function1<? super b, Boolean> fqNameFilter) {
        this(delegate, false, fqNameFilter);
        p.d(delegate, "delegate");
        p.d(fqNameFilter, "fqNameFilter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(g delegate, boolean z, Function1<? super b, Boolean> fqNameFilter) {
        p.d(delegate, "delegate");
        p.d(fqNameFilter, "fqNameFilter");
        this.f37373b = delegate;
        this.f37374c = z;
        this.f37375d = fqNameFilter;
    }

    private final boolean a(c cVar) {
        b b2 = cVar.b();
        return b2 != null && this.f37375d.invoke(b2).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final c a(b fqName) {
        p.d(fqName, "fqName");
        if (this.f37375d.invoke(fqName).booleanValue()) {
            return this.f37373b.a(fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean a() {
        boolean z;
        g<c> gVar = this.f37373b;
        if (!(gVar instanceof Collection) || !((Collection) gVar).isEmpty()) {
            for (c cVar : gVar) {
                if (a(cVar)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return this.f37374c ? !z : z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean b(b fqName) {
        p.d(fqName, "fqName");
        if (this.f37375d.invoke(fqName).booleanValue()) {
            return this.f37373b.b(fqName);
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        g gVar = this.f37373b;
        ArrayList arrayList = new ArrayList();
        for (c cVar : gVar) {
            if (a(cVar)) {
                arrayList.add(cVar);
            }
        }
        return arrayList.iterator();
    }
}
