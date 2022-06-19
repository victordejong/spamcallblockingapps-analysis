package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18889a;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18928e;
import kotlin.reflect.jvm.internal.impl.builtins.functions.EnumC18933b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/a.class */
public final class C18932a implements AbstractC19043b {

    /* renamed from: a */
    private final AbstractC19302n f64534a;

    /* renamed from: b */
    private final AbstractC18999ab f64535b;

    public C18932a(AbstractC19302n storageManager, AbstractC18999ab module) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(module, "module");
        this.f64534a = storageManager;
        this.f64535b = module;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b
    /* renamed from: a */
    public final Collection<AbstractC19070d> mo2683a(C18961b packageFqName) {
        C18524p.m3840d(packageFqName, "packageFqName");
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b
    /* renamed from: a */
    public final AbstractC19070d mo2684a(C18960a classId) {
        C18524p.m3840d(classId, "classId");
        if (classId.f64682a || classId.m2749e()) {
            return null;
        }
        String m2746a = classId.m2752b().m2746a();
        C18524p.m3843b(m2746a, "classId.relativeClassName.asString()");
        if (!C18425p.m3919c((CharSequence) m2746a, (CharSequence) "Function", false)) {
            return null;
        }
        C18961b m2758a = classId.m2758a();
        C18524p.m3843b(m2758a, "classId.packageFqName");
        EnumC18933b.C18934a c18934a = EnumC18933b.Companion;
        EnumC18933b.C18934a.C18935a m2842a = EnumC18933b.C18934a.m2842a(m2746a, m2758a);
        if (m2842a == null) {
            return null;
        }
        EnumC18933b enumC18933b = m2842a.f64536a;
        int i = m2842a.f64537b;
        List<AbstractC19006ae> mo2568d = this.f64535b.getPackage(m2758a).mo2568d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : mo2568d) {
            if (obj instanceof AbstractC18889a) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (obj2 instanceof AbstractC18928e) {
                arrayList4.add(obj2);
            }
        }
        Object obj3 = (AbstractC18928e) C18282n.m4121f((List<? extends Object>) arrayList4);
        Object obj4 = obj3;
        if (obj3 == null) {
            obj4 = C18282n.m4123e((List<? extends Object>) arrayList2);
        }
        return new FunctionClassDescriptor(this.f64534a, (AbstractC18889a) obj4, enumC18933b, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b
    /* renamed from: a */
    public final boolean mo2682a(C18961b packageFqName, C18966e name) {
        C18524p.m3840d(packageFqName, "packageFqName");
        C18524p.m3840d(name, "name");
        String m2721a = name.m2721a();
        C18524p.m3843b(m2721a, "name.asString()");
        if (C18425p.m3957a(m2721a, "Function", false) || C18425p.m3957a(m2721a, "KFunction", false) || C18425p.m3957a(m2721a, "SuspendFunction", false) || C18425p.m3957a(m2721a, "KSuspendFunction", false)) {
            EnumC18933b.C18934a c18934a = EnumC18933b.Companion;
            return EnumC18933b.C18934a.m2842a(m2721a, packageFqName) != null;
        }
        return false;
    }
}
