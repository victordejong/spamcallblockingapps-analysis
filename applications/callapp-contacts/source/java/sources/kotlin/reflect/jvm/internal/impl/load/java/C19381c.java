package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19776b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.utils.C20017e;
import kotlin.reflect.jvm.internal.impl.utils.EnumC20021g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c.class */
public final class C19381c {

    /* renamed from: a */
    public final C20017e f65294a;

    /* renamed from: b */
    private final AbstractC19295h<AbstractC19070d, AbstractC18977c> f65295b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c$a.class */
    public static final class C19382a {

        /* renamed from: a */
        public final AbstractC18977c f65296a;

        /* renamed from: b */
        private final int f65297b;

        public C19382a(AbstractC18977c typeQualifier, int i) {
            C18524p.m3840d(typeQualifier, "typeQualifier");
            this.f65296a = typeQualifier;
            this.f65297b = i;
        }

        /* renamed from: a */
        private final boolean m2238a(EnumC19343a enumC19343a) {
            return ((1 << enumC19343a.ordinal()) & this.f65297b) != 0;
        }

        /* renamed from: a */
        public final List<EnumC19343a> m2239a() {
            EnumC19343a[] values = EnumC19343a.values();
            ArrayList arrayList = new ArrayList();
            for (EnumC19343a enumC19343a : values) {
                boolean z = true;
                if (!m2238a(enumC19343a) && (!m2238a(EnumC19343a.TYPE_USE) || enumC19343a == EnumC19343a.TYPE_PARAMETER_BOUNDS)) {
                    z = false;
                }
                if (z) {
                    arrayList.add(enumC19343a);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c$b.class */
    public static final class C19383b extends AbstractC18526r implements Function2<C19786j, EnumC19343a, Boolean> {

        /* renamed from: a */
        public static final C19383b f65298a = new C19383b();

        C19383b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ Boolean invoke(C19786j c19786j, EnumC19343a enumC19343a) {
            C19786j c19786j2 = c19786j;
            EnumC19343a it2 = enumC19343a;
            C18524p.m3840d(c19786j2, "<this>");
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(C18524p.m3850a((Object) c19786j2.f65970a.m2717b(), (Object) it2.getJavaTarget()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c$c.class */
    public final /* synthetic */ class C19384c extends C18521m implements Function1<AbstractC19070d, AbstractC18977c> {
        C19384c(C19381c c19381c) {
            super(1, c19381c);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "computeTypeQualifierNickname";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19381c.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "computeTypeQualifierNickname(Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;)Lorg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18977c invoke(AbstractC19070d abstractC19070d) {
            AbstractC19070d p0 = abstractC19070d;
            C18524p.m3840d(p0, "p0");
            return C19381c.m2244a((C19381c) this.receiver, p0);
        }
    }

    public C19381c(AbstractC19302n storageManager, C20017e javaTypeEnhancementState) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.f65294a = javaTypeEnhancementState;
        this.f65295b = storageManager.mo2307b(new C19384c(this));
    }

    /* renamed from: a */
    private final List<EnumC19343a> m2243a(AbstractC19781g<?> abstractC19781g, Function2<? super C19786j, ? super EnumC19343a, Boolean> function2) {
        EnumC19343a enumC19343a;
        if (abstractC19781g instanceof C19776b) {
            List<? extends AbstractC19781g<?>> a = ((C19776b) abstractC19781g).mo1489a();
            ArrayList arrayList = new ArrayList();
            for (AbstractC19781g<?> abstractC19781g2 : a) {
                C18282n.m4158a((Collection) arrayList, (Iterable) m2243a(abstractC19781g2, function2));
            }
            return arrayList;
        } else if (!(abstractC19781g instanceof C19786j)) {
            return C18297z.f63400a;
        } else {
            EnumC19343a[] values = EnumC19343a.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    enumC19343a = null;
                    break;
                }
                EnumC19343a enumC19343a2 = values[i];
                if (function2.invoke(abstractC19781g, enumC19343a2).booleanValue()) {
                    enumC19343a = enumC19343a2;
                    break;
                }
                i++;
            }
            return C18282n.m4169b(enumC19343a);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC18977c m2244a(C19381c c19381c, AbstractC19070d abstractC19070d) {
        if (abstractC19070d.getAnnotations().mo1338b(C19366b.m2264a())) {
            for (AbstractC18977c abstractC18977c : abstractC19070d.getAnnotations()) {
                AbstractC18977c m2246a = c19381c.m2246a(abstractC18977c);
                if (m2246a != null) {
                    return m2246a;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    private final EnumC20021g m2245a(AbstractC19070d abstractC19070d) {
        AbstractC18977c mo1340a = abstractC19070d.getAnnotations().mo1340a(C19366b.m2261d());
        Object m1530b = mo1340a == null ? null : C19756a.m1530b(mo1340a);
        C19786j c19786j = m1530b instanceof C19786j ? (C19786j) m1530b : null;
        if (c19786j == null) {
            return null;
        }
        EnumC20021g enumC20021g = this.f65294a.f66368c;
        if (enumC20021g != null) {
            return enumC20021g;
        }
        String m2721a = c19786j.f65970a.m2721a();
        int hashCode = m2721a.hashCode();
        if (hashCode == -2137067054) {
            if (m2721a.equals("IGNORE")) {
                return EnumC20021g.IGNORE;
            }
            return null;
        } else if (hashCode == -1838656823) {
            if (m2721a.equals("STRICT")) {
                return EnumC20021g.STRICT;
            }
            return null;
        } else if (hashCode != 2656902 || !m2721a.equals("WARN")) {
            return null;
        } else {
            return EnumC20021g.WARN;
        }
    }

    /* renamed from: a */
    public final AbstractC18977c m2246a(AbstractC18977c annotationDescriptor) {
        AbstractC19070d m1539a;
        C18524p.m3840d(annotationDescriptor, "annotationDescriptor");
        if (!this.f65294a.f66372g && (m1539a = C19756a.m1539a(annotationDescriptor)) != null) {
            if (C19366b.m2258g().contains(C19756a.m1528b(m1539a)) || m1539a.getAnnotations().mo1338b(C19366b.m2263b())) {
                return annotationDescriptor;
            }
            if (m1539a.getKind() == EnumC19127e.ANNOTATION_CLASS) {
                return this.f65295b.invoke(m1539a);
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    public final C19382a m2242b(AbstractC18977c annotationDescriptor) {
        int i;
        AbstractC18977c abstractC18977c;
        C18524p.m3840d(annotationDescriptor, "annotationDescriptor");
        if (this.f65294a.f66372g) {
            return null;
        }
        AbstractC19070d m1539a = C19756a.m1539a(annotationDescriptor);
        if (m1539a == null || !m1539a.getAnnotations().mo1338b(C19366b.m2262c())) {
            m1539a = null;
        }
        if (m1539a == null) {
            return null;
        }
        AbstractC19070d m1539a2 = C19756a.m1539a(annotationDescriptor);
        C18524p.m3851a(m1539a2);
        AbstractC18977c mo1340a = m1539a2.getAnnotations().mo1340a(C19366b.m2262c());
        C18524p.m3851a(mo1340a);
        Map<C18966e, AbstractC19781g<?>> mo2041c = mo1340a.mo2041c();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<C18966e, AbstractC19781g<?>> entry : mo2041c.entrySet()) {
            C18282n.m4158a((Collection) arrayList, (Iterable) (C18524p.m3850a(entry.getKey(), C19585u.f65609c) ? m2243a(entry.getValue(), C19383b.f65298a) : C18297z.f63400a));
        }
        Iterator it2 = arrayList.iterator();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!it2.hasNext()) {
                break;
            }
            i2 = i | (1 << ((EnumC19343a) it2.next()).ordinal());
        }
        Iterator<AbstractC18977c> it3 = m1539a.getAnnotations().iterator();
        while (true) {
            if (!it3.hasNext()) {
                abstractC18977c = null;
                break;
            }
            abstractC18977c = it3.next();
            if (m2246a(abstractC18977c) != null) {
                break;
            }
        }
        AbstractC18977c abstractC18977c2 = abstractC18977c;
        if (abstractC18977c2 != null) {
            return new C19382a(abstractC18977c2, i);
        }
        return null;
    }

    /* renamed from: c */
    public final EnumC20021g m2241c(AbstractC18977c annotationDescriptor) {
        C18524p.m3840d(annotationDescriptor, "annotationDescriptor");
        EnumC20021g m2240d = m2240d(annotationDescriptor);
        return m2240d != null ? m2240d : this.f65294a.f66367b;
    }

    /* renamed from: d */
    public final EnumC20021g m2240d(AbstractC18977c annotationDescriptor) {
        C18524p.m3840d(annotationDescriptor, "annotationDescriptor");
        Map<String, EnumC20021g> map = this.f65294a.f66369d;
        C18961b mo2042b = annotationDescriptor.mo2042b();
        EnumC20021g enumC20021g = map.get(mo2042b == null ? null : mo2042b.m2746a());
        if (enumC20021g != null) {
            return enumC20021g;
        }
        AbstractC19070d m1539a = C19756a.m1539a(annotationDescriptor);
        if (m1539a != null) {
            return m2245a(m1539a);
        }
        return null;
    }
}
