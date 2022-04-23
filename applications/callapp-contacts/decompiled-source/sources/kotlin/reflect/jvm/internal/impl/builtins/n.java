package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.a.ai;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f37326a = new n();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<e> f37327b;

    /* renamed from: c  reason: collision with root package name */
    private static final Set<e> f37328c;

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap<a, a> f37329d;
    private static final HashMap<a, a> e;
    private static final HashMap<l, e> f;
    private static final Set<e> g;

    static {
        m[] values = m.values();
        ArrayList arrayList = new ArrayList(values.length);
        int i = 0;
        for (m mVar : values) {
            arrayList.add(mVar.getTypeName());
        }
        f37327b = kotlin.a.n.j((Iterable) arrayList);
        l[] values2 = l.values();
        ArrayList arrayList2 = new ArrayList(values2.length);
        for (l lVar : values2) {
            arrayList2.add(lVar.getTypeName());
        }
        f37328c = kotlin.a.n.j((Iterable) arrayList2);
        f37329d = new HashMap<>();
        e = new HashMap<>();
        f = ai.b(t.a(l.UBYTEARRAY, e.a("ubyteArrayOf")), t.a(l.USHORTARRAY, e.a("ushortArrayOf")), t.a(l.UINTARRAY, e.a("uintArrayOf")), t.a(l.ULONGARRAY, e.a("ulongArrayOf")));
        m[] values3 = m.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (m mVar2 : values3) {
            linkedHashSet.add(mVar2.getArrayClassId().c());
        }
        g = linkedHashSet;
        m[] values4 = m.values();
        int length = values4.length;
        while (i < length) {
            m mVar3 = values4[i];
            i++;
            f37329d.put(mVar3.getArrayClassId(), mVar3.getClassId());
            e.put(mVar3.getClassId(), mVar3.getArrayClassId());
        }
    }

    private n() {
    }

    public static a a(a arrayClassId) {
        p.d(arrayClassId, "arrayClassId");
        return f37329d.get(arrayClassId);
    }

    public static boolean a(e name) {
        p.d(name, "name");
        return g.contains(name);
    }

    public static final boolean a(KotlinType type) {
        g declarationDescriptor;
        p.d(type, "type");
        if (TypeUtils.noExpectedType(type) || (declarationDescriptor = type.getConstructor().getDeclarationDescriptor()) == null) {
            return false;
        }
        g descriptor = declarationDescriptor;
        p.d(descriptor, "descriptor");
        k containingDeclaration = descriptor.getContainingDeclaration();
        return (containingDeclaration instanceof ae) && p.a(((ae) containingDeclaration).c(), j.m) && f37327b.contains(descriptor.getName());
    }
}
