package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/n.class */
public final class C18959n {

    /* renamed from: a */
    public static final C18959n f64674a = new C18959n();

    /* renamed from: b */
    private static final Set<C18966e> f64675b;

    /* renamed from: c */
    private static final Set<C18966e> f64676c;

    /* renamed from: d */
    private static final HashMap<C18960a, C18960a> f64677d;

    /* renamed from: e */
    private static final HashMap<C18960a, C18960a> f64678e;

    /* renamed from: f */
    private static final HashMap<EnumC18957l, C18966e> f64679f;

    /* renamed from: g */
    private static final Set<C18966e> f64680g;

    static {
        EnumC18958m[] values = EnumC18958m.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (EnumC18958m enumC18958m : values) {
            arrayList.add(enumC18958m.getTypeName());
        }
        f64675b = C18282n.m4114j((Iterable) arrayList);
        EnumC18957l[] values2 = EnumC18957l.values();
        ArrayList arrayList2 = new ArrayList(values2.length);
        for (EnumC18957l enumC18957l : values2) {
            arrayList2.add(enumC18957l.getTypeName());
        }
        f64676c = C18282n.m4114j((Iterable) arrayList2);
        f64677d = new HashMap<>();
        f64678e = new HashMap<>();
        f64679f = C18247ai.m4248b(C20126t.m1103a(EnumC18957l.UBYTEARRAY, C18966e.m2719a("ubyteArrayOf")), C20126t.m1103a(EnumC18957l.USHORTARRAY, C18966e.m2719a("ushortArrayOf")), C20126t.m1103a(EnumC18957l.UINTARRAY, C18966e.m2719a("uintArrayOf")), C20126t.m1103a(EnumC18957l.ULONGARRAY, C18966e.m2719a("ulongArrayOf")));
        EnumC18958m[] values3 = EnumC18958m.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (EnumC18958m enumC18958m2 : values3) {
            linkedHashSet.add(enumC18958m2.getArrayClassId().m2751c());
        }
        f64680g = linkedHashSet;
        EnumC18958m[] values4 = EnumC18958m.values();
        int length = values4.length;
        int i = 0;
        while (i < length) {
            EnumC18958m enumC18958m3 = values4[i];
            i++;
            f64677d.put(enumC18958m3.getArrayClassId(), enumC18958m3.getClassId());
            f64678e.put(enumC18958m3.getClassId(), enumC18958m3.getArrayClassId());
        }
    }

    private C18959n() {
    }

    /* renamed from: a */
    public static C18960a m2761a(C18960a arrayClassId) {
        C18524p.m3840d(arrayClassId, "arrayClassId");
        return f64677d.get(arrayClassId);
    }

    /* renamed from: a */
    public static boolean m2760a(C18966e name) {
        C18524p.m3840d(name, "name");
        return f64680g.contains(name);
    }

    /* renamed from: a */
    public static final boolean m2759a(KotlinType type) {
        AbstractC19129g declarationDescriptor;
        C18524p.m3840d(type, "type");
        if (!TypeUtils.noExpectedType(type) && (declarationDescriptor = type.getConstructor().getDeclarationDescriptor()) != null) {
            AbstractC19129g descriptor = declarationDescriptor;
            C18524p.m3840d(descriptor, "descriptor");
            AbstractC19193k containingDeclaration = descriptor.getContainingDeclaration();
            return (containingDeclaration instanceof AbstractC19006ae) && C18524p.m3850a(((AbstractC19006ae) containingDeclaration).mo2542c(), C18954j.f64583m) && f64675b.contains(descriptor.getName());
        }
        return false;
    }
}
