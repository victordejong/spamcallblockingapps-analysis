package p626l.p641z.p643d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.AbstractC14882b;
import p626l.C14978j;
import p626l.C14985o;
import p626l.p629c0.AbstractC14900c;
import p626l.p631e0.C14967x;
import p626l.p632u.C15003d0;
import p626l.p632u.C15005e0;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p641z.C15105a;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15108b;
import p626l.p641z.p642c.AbstractC15109c;
import p626l.p641z.p642c.AbstractC15110d;
import p626l.p641z.p642c.AbstractC15111e;
import p626l.p641z.p642c.AbstractC15112f;
import p626l.p641z.p642c.AbstractC15113g;
import p626l.p641z.p642c.AbstractC15114h;
import p626l.p641z.p642c.AbstractC15115i;
import p626l.p641z.p642c.AbstractC15116j;
import p626l.p641z.p642c.AbstractC15117k;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15119m;
import p626l.p641z.p642c.AbstractC15120n;
import p626l.p641z.p642c.AbstractC15121o;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p642c.AbstractC15125s;
import p626l.p641z.p642c.AbstractC15126t;
import p626l.p641z.p642c.AbstractC15127u;
import p626l.p641z.p642c.AbstractC15128v;
import p626l.p641z.p642c.AbstractC15129w;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0001\n��\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� K2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001KB\u0011\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010B\u001a\u00020\u00122\b\u0010C\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010D\u001a\u00020EH\u0002J\b\u0010F\u001a\u00020GH\u0016J\u0012\u0010H\u001a\u00020\u00122\b\u0010I\u001a\u0004\u0018\u00010\u0002H\u0017J\b\u0010J\u001a\u00020-H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000e0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u0018\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u0014\u001a\u0004\b\u001a\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001c\u0010\u0015R\u001a\u0010\u001e\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0014\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010 \u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0014\u001a\u0004\b \u0010\u0015R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\"\u0010#R\u001e\u0010$\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030%0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u0010R\u001e\u0010'\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010\u0010R\u0016\u0010)\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0016\u0010,\u001a\u0004\u0018\u00010-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R(\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00010\b8VX\u0097\u0004¢\u0006\f\u0012\u0004\b1\u0010\u0014\u001a\u0004\b2\u0010\u000bR\u0016\u00103\u001a\u0004\u0018\u00010-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u0010/R \u00105\u001a\b\u0012\u0004\u0012\u0002060\b8VX\u0097\u0004¢\u0006\f\u0012\u0004\b7\u0010\u0014\u001a\u0004\b8\u0010\u000bR \u00109\u001a\b\u0012\u0004\u0012\u00020:0\b8VX\u0097\u0004¢\u0006\f\u0012\u0004\b;\u0010\u0014\u001a\u0004\b<\u0010\u000bR\u001c\u0010=\u001a\u0004\u0018\u00010>8VX\u0097\u0004¢\u0006\f\u0012\u0004\b?\u0010\u0014\u001a\u0004\b@\u0010A¨\u0006L"}, m815d2 = {"Lkotlin/jvm/internal/ClassReference;", "Lkotlin/reflect/KClass;", "", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "jClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "constructors", "", "Lkotlin/reflect/KFunction;", "getConstructors", "()Ljava/util/Collection;", "isAbstract", "", "isAbstract$annotations", "()V", "()Z", "isCompanion", "isCompanion$annotations", "isData", "isData$annotations", "isFinal", "isFinal$annotations", "isInner", "isInner$annotations", "isOpen", "isOpen$annotations", "isSealed", "isSealed$annotations", "getJClass", "()Ljava/lang/Class;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "nestedClasses", "getNestedClasses", "objectInstance", "getObjectInstance", "()Ljava/lang/Object;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "sealedSubclasses", "sealedSubclasses$annotations", "getSealedSubclasses", "simpleName", "getSimpleName", "supertypes", "Lkotlin/reflect/KType;", "supertypes$annotations", "getSupertypes", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "typeParameters$annotations", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "visibility$annotations", "getVisibility", "()Lkotlin/reflect/KVisibility;", "equals", "other", "error", "", "hashCode", "", "isInstance", C13032a.f29462d, "toString", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.z.d.e */
/* loaded from: classes3-dex2jar.jar:l/z/d/e.class */
public final class C15139e implements AbstractC14900c<Object>, AbstractC15137d {

    /* renamed from: b */
    public static final Map<Class<? extends AbstractC14882b<?>>, Integer> f33134b;

    /* renamed from: c */
    public static final HashMap<String, String> f33135c;

    /* renamed from: d */
    public static final HashMap<String, String> f33136d;

    /* renamed from: e */
    public static final HashMap<String, String> f33137e;

    /* renamed from: a */
    public final Class<?> f33138a;

    /* renamed from: l.z.d.e$a */
    /* loaded from: classes3-dex2jar.jar:l/z/d/e$a.class */
    public static final class C15140a {
        public C15140a() {
        }

        public /* synthetic */ C15140a(C15145g gVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        new C15140a(null);
        int i = 0;
        List c = C15021m.m557c(AbstractC15107a.class, AbstractC15118l.class, AbstractC15122p.class, AbstractC15123q.class, AbstractC15124r.class, AbstractC15125s.class, AbstractC15126t.class, AbstractC15127u.class, AbstractC15128v.class, AbstractC15129w.class, AbstractC15108b.class, AbstractC15109c.class, AbstractC15110d.class, AbstractC15111e.class, AbstractC15112f.class, AbstractC15113g.class, AbstractC15114h.class, AbstractC15115i.class, AbstractC15116j.class, AbstractC15117k.class, AbstractC15119m.class, AbstractC15120n.class, AbstractC15121o.class);
        ArrayList arrayList = new ArrayList(C15022n.m555a(c, 10));
        for (Object obj : c) {
            if (i >= 0) {
                arrayList.add(C14985o.m644a((Class) obj, Integer.valueOf(i)));
                i++;
            } else {
                C15021m.m558c();
                throw null;
            }
        }
        f33134b = C15005e0.m628a(arrayList);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        f33135c = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        f33136d = hashMap2;
        HashMap<String, String> hashMap3 = new HashMap<>();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(f33135c);
        hashMap3.putAll(f33136d);
        Collection<String> values = f33135c.values();
        C15149k.m383a((Object) values, "primitiveFqNames.values");
        for (String str : values) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            C15149k.m383a((Object) str, "kotlinName");
            sb.append(C14967x.m689a(str, '.', (String) null, 2, (Object) null));
            sb.append("CompanionObject");
            String sb2 = sb.toString();
            C14978j a = C14985o.m644a(sb2, str + ".Companion");
            hashMap3.put(a.m659c(), a.m658d());
        }
        for (Map.Entry<Class<? extends AbstractC14882b<?>>, Integer> entry : f33134b.entrySet()) {
            Class<? extends AbstractC14882b<?>> key = entry.getKey();
            int intValue = entry.getValue().intValue();
            String name = key.getName();
            hashMap3.put(name, "kotlin.Function" + intValue);
        }
        f33137e = hashMap3;
        HashMap<String, String> hashMap4 = f33137e;
        LinkedHashMap linkedHashMap = new LinkedHashMap(C15003d0.m633a(hashMap4.size()));
        Iterator<T> it = hashMap4.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            linkedHashMap.put(entry2.getKey(), C14967x.m689a((String) entry2.getValue(), '.', (String) null, 2, (Object) null));
        }
    }

    public C15139e(Class<?> cls) {
        C15149k.m377b(cls, "jClass");
        this.f33138a = cls;
    }

    @Override // p626l.p641z.p643d.AbstractC15137d
    /* renamed from: a */
    public Class<?> mo372a() {
        return this.f33138a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C15139e) && C15149k.m384a(C15105a.m423b(this), C15105a.m423b((AbstractC14900c) obj));
    }

    public int hashCode() {
        return C15105a.m423b(this).hashCode();
    }

    public String toString() {
        return mo372a().toString() + " (Kotlin reflection is not available)";
    }
}
