package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.builtins.functions.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.b.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/a.class */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final n f37290a;

    /* renamed from: b  reason: collision with root package name */
    private final ab f37291b;

    public a(n storageManager, ab module) {
        p.d(storageManager, "storageManager");
        p.d(module, "module");
        this.f37290a = storageManager;
        this.f37291b = module;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.b
    public final Collection<d> a(kotlin.reflect.jvm.internal.impl.c.b packageFqName) {
        p.d(packageFqName, "packageFqName");
        return kotlin.a.ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.b
    public final d a(kotlin.reflect.jvm.internal.impl.c.a classId) {
        p.d(classId, "classId");
        if (classId.f37331a || classId.e()) {
            return null;
        }
        String a2 = classId.b().a();
        p.b(a2, "classId.relativeClassName.asString()");
        if (!kotlin.h.p.c((CharSequence) a2, (CharSequence) "Function", false)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.c.b a3 = classId.a();
        p.b(a3, "classId.packageFqName");
        b.a aVar = b.Companion;
        b.a.C0667a a4 = b.a.a(a2, a3);
        if (a4 == null) {
            return null;
        }
        b bVar = a4.f37292a;
        int i = a4.f37293b;
        List<ae> d2 = this.f37291b.getPackage(a3).d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : d2) {
            if (obj instanceof kotlin.reflect.jvm.internal.impl.builtins.a) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (obj2 instanceof e) {
                arrayList4.add(obj2);
            }
        }
        e eVar = (e) kotlin.a.n.f((List<? extends Object>) arrayList4);
        Object obj3 = eVar;
        if (eVar == null) {
            obj3 = kotlin.a.n.e((List<? extends Object>) arrayList2);
        }
        return new FunctionClassDescriptor(this.f37290a, (kotlin.reflect.jvm.internal.impl.builtins.a) obj3, bVar, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.b
    public final boolean a(kotlin.reflect.jvm.internal.impl.c.b packageFqName, kotlin.reflect.jvm.internal.impl.c.e name) {
        p.d(packageFqName, "packageFqName");
        p.d(name, "name");
        String a2 = name.a();
        p.b(a2, "name.asString()");
        if (!kotlin.h.p.a(a2, "Function", false) && !kotlin.h.p.a(a2, "KFunction", false) && !kotlin.h.p.a(a2, "SuspendFunction", false) && !kotlin.h.p.a(a2, "KSuspendFunction", false)) {
            return false;
        }
        b.a aVar = b.Companion;
        return b.a.a(a2, packageFqName) != null;
    }
}
