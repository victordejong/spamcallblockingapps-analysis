package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.ad;
import kotlin.a.ai;
import kotlin.a.i;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.t;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\n\b\u0002\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0013\u0010$\u001a\u00020\u001c2\b\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010(\u001a\u00020\u0007H\u0016J\u0010\u0010)\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u0007H\u0016J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0007H\u0016J\b\u0010-\u001a\u00020\u0007H\u0016J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u0007H\u0016J\b\u0010/\u001a\u00020\u0003H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070!X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\"\u0010#¨\u00060"}, d2 = {"Lkotlinx/serialization/SerialDescriptorImpl;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "kind", "Lkotlinx/serialization/SerialKind;", "elementsCount", "", "builder", "Lkotlinx/serialization/SerialDescriptorBuilder;", "(Ljava/lang/String;Lkotlinx/serialization/SerialKind;ILkotlinx/serialization/SerialDescriptorBuilder;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "elementAnnotations", "", "[Ljava/util/List;", "elementDescriptors", "[Lkotlinx/serialization/SerialDescriptor;", "elementNames", "[Ljava/lang/String;", "elementOptionality", "", "getElementsCount", "()I", "isNullable", "", "()Z", "getKind", "()Lkotlinx/serialization/SerialKind;", "name2Index", "", "getSerialName", "()Ljava/lang/String;", "equals", "other", "", "getElementAnnotations", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "hashCode", "isElementOptional", "toString", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/n.class */
public final class n implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    final String[] f39014a;

    /* renamed from: b  reason: collision with root package name */
    final SerialDescriptor[] f39015b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f39016c;

    /* renamed from: d  reason: collision with root package name */
    private final List<Annotation> f39017d;
    private final List<Annotation>[] e;
    private final boolean[] f;
    private final Map<String, Integer> g;
    private final String h;
    private final p i;
    private final int j;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/n$a.class */
    static final class a extends r implements Function1<Integer, String> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Integer num) {
            int intValue = num.intValue();
            return n.this.f39014a[intValue] + ": " + n.this.f39015b[intValue].a();
        }
    }

    public n(String serialName, p kind, int i, l builder) {
        p.c(serialName, "serialName");
        p.c(kind, "kind");
        p.c(builder, "builder");
        this.h = serialName;
        this.i = kind;
        this.j = i;
        this.f39016c = builder.f38999a;
        this.f39017d = builder.f39000b;
        Object[] array = builder.f39001c.toArray(new String[0]);
        if (array != null) {
            String[] strArr = (String[]) array;
            this.f39014a = strArr;
            Object[] array2 = builder.f39002d.toArray(new SerialDescriptor[0]);
            if (array2 != null) {
                this.f39015b = (SerialDescriptor[]) array2;
                Object[] array3 = builder.e.toArray(new List[0]);
                if (array3 != null) {
                    this.e = (List[]) array3;
                    this.f = kotlin.a.n.b((Collection<Boolean>) builder.f);
                    Iterable<ad> l = i.l(strArr);
                    ArrayList arrayList = new ArrayList(kotlin.a.n.a(l, 10));
                    for (ad adVar : l) {
                        arrayList.add(t.a(adVar.f36569b, Integer.valueOf(adVar.f36568a)));
                    }
                    this.g = ai.a(arrayList);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int a(String name) {
        p.c(name, "name");
        Integer num = this.g.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return this.h;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a(int i) {
        return this.f39014a[i];
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final SerialDescriptor b(int i) {
        return this.f39015b[i];
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final p b() {
        return this.i;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final boolean c() {
        return this.f39016c;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int d() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SerialDescriptor) && !(p.a((Object) this.h, (Object) ((SerialDescriptor) obj).a()) ^ true);
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    public final String toString() {
        return kotlin.a.n.a(d.b(0, this.j), ", ", this.h + '(', ")", 0, (CharSequence) null, new a(), 24);
    }
}
