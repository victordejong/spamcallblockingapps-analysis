package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18242ad;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\n\b\u0002\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0013\u0010$\u001a\u00020\u001c2\b\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010(\u001a\u00020\u0007H\u0016J\u0010\u0010)\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u0007H\u0016J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0007H\u0016J\b\u0010-\u001a\u00020\u0007H\u0016J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u0007H\u0016J\b\u0010/\u001a\u00020\u0003H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070!X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\"\u0010#¨\u00060"}, m4298d2 = {"Lkotlinx/serialization/SerialDescriptorImpl;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "kind", "Lkotlinx/serialization/SerialKind;", "elementsCount", "", "builder", "Lkotlinx/serialization/SerialDescriptorBuilder;", "(Ljava/lang/String;Lkotlinx/serialization/SerialKind;ILkotlinx/serialization/SerialDescriptorBuilder;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "elementAnnotations", "", "[Ljava/util/List;", "elementDescriptors", "[Lkotlinx/serialization/SerialDescriptor;", "elementNames", "[Ljava/lang/String;", "elementOptionality", "", "getElementsCount", "()I", "isNullable", "", "()Z", "getKind", "()Lkotlinx/serialization/SerialKind;", "name2Index", "", "getSerialName", "()Ljava/lang/String;", "equals", "other", "", "getElementAnnotations", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "hashCode", "isElementOptional", "toString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.n */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/n.class */
public final class C20455n implements SerialDescriptor {

    /* renamed from: a */
    final String[] f66957a;

    /* renamed from: b */
    final SerialDescriptor[] f66958b;

    /* renamed from: c */
    private final boolean f66959c;

    /* renamed from: d */
    private final List<Annotation> f66960d;

    /* renamed from: e */
    private final List<Annotation>[] f66961e;

    /* renamed from: f */
    private final boolean[] f66962f;

    /* renamed from: g */
    private final Map<String, Integer> f66963g;

    /* renamed from: h */
    private final String f66964h;

    /* renamed from: i */
    private final AbstractC20458p f66965i;

    /* renamed from: j */
    private final int f66966j;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/n$a.class */
    static final class C20456a extends AbstractC18526r implements Function1<Integer, String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20456a() {
            super(1);
            C20455n.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Integer num) {
            int intValue = num.intValue();
            return C20455n.this.f66957a[intValue] + ": " + C20455n.this.f66958b[intValue].mo665a();
        }
    }

    public C20455n(String serialName, AbstractC20458p kind, int i, C20443l builder) {
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(kind, "kind");
        C18524p.m3841c(builder, "builder");
        this.f66964h = serialName;
        this.f66965i = kind;
        this.f66966j = i;
        this.f66959c = builder.f66938a;
        this.f66960d = builder.f66939b;
        Object[] array = builder.f66940c.toArray(new String[0]);
        if (array != null) {
            String[] strArr = (String[]) array;
            this.f66957a = strArr;
            Object[] array2 = builder.f66941d.toArray(new SerialDescriptor[0]);
            if (array2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            this.f66958b = (SerialDescriptor[]) array2;
            Object[] array3 = builder.f66942e.toArray(new List[0]);
            if (array3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            this.f66961e = (List[]) array3;
            this.f66962f = C18282n.m4136b((Collection<Boolean>) builder.f66943f);
            Iterable<C18242ad> l = C18273i.m4180l(strArr);
            ArrayList arrayList = new ArrayList(C18282n.m4163a(l, 10));
            for (C18242ad c18242ad : l) {
                arrayList.add(C20126t.m1103a(c18242ad.f63353b, Integer.valueOf(c18242ad.f63352a)));
            }
            this.f66963g = C18247ai.m4256a(arrayList);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final int mo663a(String name) {
        C18524p.m3841c(name, "name");
        Integer num = this.f66963g.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66964h;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo664a(int i) {
        return this.f66957a[i];
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final SerialDescriptor mo661b(int i) {
        return this.f66958b[i];
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final AbstractC20458p mo662b() {
        return this.f66965i;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: c */
    public final boolean mo660c() {
        return this.f66959c;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: d */
    public final int mo659d() {
        return this.f66966j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SerialDescriptor) && !(C18524p.m3850a((Object) this.f66964h, (Object) ((SerialDescriptor) obj).mo665a()) ^ true);
    }

    public final int hashCode() {
        return this.f66964h.hashCode();
    }

    public final String toString() {
        return C18282n.m4148a(C18363d.m4052b(0, this.f66966j), ", ", this.f66964h + '(', ")", 0, (CharSequence) null, new C20456a(), 24);
    }
}
