package kotlinx.serialization.b;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.o;
import kotlinx.serialization.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0018\n��\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\r\b\u0017\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020.J\u0014\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0016H\u0002J\u0013\u00100\u001a\u00020.2\b\u00101\u001a\u0004\u0018\u000102H\u0096\u0002J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00105\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00106\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0003H\u0016J\u0010\u00107\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0007H\u0016J\b\u00108\u001a\u00020\u0007H\u0016J\u0010\u00109\u001a\u00020.2\u0006\u00104\u001a\u00020\u0007H\u0016J\u000e\u0010:\u001a\u00020+2\u0006\u0010;\u001a\u00020\fJ\u000e\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\fJ\b\u0010>\u001a\u00020\u0003H\u0016R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010!R\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030#8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001e\u0010&\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00100 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010'R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b(\u0010)¨\u0006?"}, d2 = {"Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "generatedSerializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "elementsCount", "", "(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V", "added", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "classAnnotations", "", "getElementsCount", "()I", "flags", "", "indices", "", "getIndices", "()Ljava/util/Map;", "indices$delegate", "Lkotlin/Lazy;", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "names", "", "[Ljava/lang/String;", "namesSet", "", "getNamesSet$kotlinx_serialization_runtime", "()Ljava/util/Set;", "propertiesAnnotations", "[Ljava/util/List;", "getSerialName", "()Ljava/lang/String;", "addElement", "", "name", "isOptional", "", "buildIndices", "equals", "other", "", "getElementAnnotations", "index", "getElementDescriptor", "getElementIndex", "getElementName", "hashCode", "isElementOptional", "pushAnnotation", "annotation", "pushClassAnnotation", "a", "toString", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ay.class */
public class ay implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    final String[] f38908a;

    /* renamed from: b  reason: collision with root package name */
    private int f38909b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Annotation>[] f38910c;

    /* renamed from: d  reason: collision with root package name */
    private boolean[] f38911d;
    private final Lazy e;
    private final String f;
    private final w<?> g;
    private final int h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\b\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ay$a.class */
    static final class a extends r implements Function0<Map<String, ? extends Integer>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<String, ? extends Integer> invoke() {
            return ay.a(ay.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010&\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ay$b.class */
    static final class b extends r implements Function1<Map.Entry<? extends String, ? extends Integer>, String> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Map.Entry<? extends String, ? extends Integer> entry) {
            Map.Entry<? extends String, ? extends Integer> it2 = entry;
            p.c(it2, "it");
            return ((String) it2.getKey()) + ": " + ay.this.b(((Number) it2.getValue()).intValue()).a();
        }
    }

    public ay(String serialName, w<?> wVar, int i) {
        p.c(serialName, "serialName");
        this.f = serialName;
        this.g = wVar;
        this.h = i;
        this.f38909b = -1;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.f38908a = strArr;
        int i3 = this.h;
        this.f38910c = new List[i3];
        this.f38911d = new boolean[i3];
        this.e = h.a(new a());
    }

    public /* synthetic */ ay(String str, w wVar, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : wVar, i);
    }

    public static final /* synthetic */ Map a(ay ayVar) {
        HashMap hashMap = new HashMap();
        int length = ayVar.f38908a.length;
        for (int i = 0; i < length; i++) {
            hashMap.put(ayVar.f38908a[i], Integer.valueOf(i));
        }
        return hashMap;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int a(String name) {
        p.c(name, "name");
        Integer num = e().get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return this.f;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a(int i) {
        return this.f38908a[i];
    }

    public final void a(String name, boolean z) {
        p.c(name, "name");
        String[] strArr = this.f38908a;
        int i = this.f38909b + 1;
        this.f38909b = i;
        strArr[i] = name;
        this.f38911d[i] = z;
        this.f38910c[i] = null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public SerialDescriptor b(int i) {
        KSerializer<?>[] childSerializers;
        KSerializer<?> kSerializer;
        SerialDescriptor descriptor;
        w<?> wVar = this.g;
        if (wVar != null && (childSerializers = wVar.childSerializers()) != null && (kSerializer = childSerializers[i]) != null && (descriptor = kSerializer.getDescriptor()) != null) {
            return descriptor;
        }
        throw new IndexOutOfBoundsException(this.f + " descriptor has only " + this.h + " elements, index: " + i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public kotlinx.serialization.p b() {
        return t.a.f39019a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final boolean c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int d() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, Integer> e() {
        return (Map) this.e.a();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return !(p.a((Object) this.f, (Object) serialDescriptor.a()) ^ true) && !(p.a(o.a(this), o.a(serialDescriptor)) ^ true);
    }

    public int hashCode() {
        return (this.f.hashCode() * 31) + o.a(this).hashCode();
    }

    public String toString() {
        return n.a(e().entrySet(), ", ", this.f + '(', ")", 0, (CharSequence) null, new b(), 24);
    }
}
