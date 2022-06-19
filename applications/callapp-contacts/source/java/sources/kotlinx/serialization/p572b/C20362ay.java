package kotlinx.serialization.p572b;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.C20457o;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0018\n��\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\r\b\u0017\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020.J\u0014\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0016H\u0002J\u0013\u00100\u001a\u00020.2\b\u00101\u001a\u0004\u0018\u000102H\u0096\u0002J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00105\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00106\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0003H\u0016J\u0010\u00107\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0007H\u0016J\b\u00108\u001a\u00020\u0007H\u0016J\u0010\u00109\u001a\u00020.2\u0006\u00104\u001a\u00020\u0007H\u0016J\u000e\u0010:\u001a\u00020+2\u0006\u0010;\u001a\u00020\fJ\u000e\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\fJ\b\u0010>\u001a\u00020\u0003H\u0016R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010!R\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030#8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001e\u0010&\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00100 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010'R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b(\u0010)¨\u0006?"}, m4298d2 = {"Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "generatedSerializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "elementsCount", "", "(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V", "added", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "classAnnotations", "", "getElementsCount", "()I", "flags", "", "indices", "", "getIndices", "()Ljava/util/Map;", "indices$delegate", "Lkotlin/Lazy;", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "names", "", "[Ljava/lang/String;", "namesSet", "", "getNamesSet$kotlinx_serialization_runtime", "()Ljava/util/Set;", "propertiesAnnotations", "[Ljava/util/List;", "getSerialName", "()Ljava/lang/String;", "addElement", "", "name", "isOptional", "", "buildIndices", "equals", "other", "", "getElementAnnotations", "index", "getElementDescriptor", "getElementIndex", "getElementName", "hashCode", "isElementOptional", "pushAnnotation", "annotation", "pushClassAnnotation", "a", "toString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ay */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ay.class */
public class C20362ay implements SerialDescriptor {

    /* renamed from: a */
    final String[] f66842a;

    /* renamed from: b */
    private int f66843b;

    /* renamed from: c */
    private final List<Annotation>[] f66844c;

    /* renamed from: d */
    private boolean[] f66845d;

    /* renamed from: e */
    private final Lazy f66846e;

    /* renamed from: f */
    private final String f66847f;

    /* renamed from: g */
    private final AbstractC20409w<?> f66848g;

    /* renamed from: h */
    private final int f66849h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\b\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "", "", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.ay$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ay$a.class */
    public static final class C20363a extends AbstractC18526r implements Function0<Map<String, ? extends Integer>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20363a() {
            super(0);
            C20362ay.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<String, ? extends Integer> invoke() {
            return C20362ay.m722a(C20362ay.this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010&\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "", "", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.ay$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ay$b.class */
    static final class C20364b extends AbstractC18526r implements Function1<Map.Entry<? extends String, ? extends Integer>, String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20364b() {
            super(1);
            C20362ay.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Map.Entry<? extends String, ? extends Integer> entry) {
            Map.Entry<? extends String, ? extends Integer> it2 = entry;
            C18524p.m3841c(it2, "it");
            return it2.getKey() + ": " + C20362ay.this.mo661b(it2.getValue().intValue()).mo665a();
        }
    }

    public C20362ay(String serialName, AbstractC20409w<?> abstractC20409w, int i) {
        C18524p.m3841c(serialName, "serialName");
        this.f66847f = serialName;
        this.f66848g = abstractC20409w;
        this.f66849h = i;
        this.f66843b = -1;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.f66842a = strArr;
        int i3 = this.f66849h;
        this.f66844c = new List[i3];
        this.f66845d = new boolean[i3];
        this.f66846e = C18399h.m3897a(new C20363a());
    }

    public /* synthetic */ C20362ay(String str, AbstractC20409w abstractC20409w, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : abstractC20409w, i);
    }

    /* renamed from: a */
    public static final /* synthetic */ Map m722a(C20362ay c20362ay) {
        HashMap hashMap = new HashMap();
        int length = c20362ay.f66842a.length;
        for (int i = 0; i < length; i++) {
            hashMap.put(c20362ay.f66842a[i], Integer.valueOf(i));
        }
        return hashMap;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final int mo663a(String name) {
        C18524p.m3841c(name, "name");
        Integer num = m721e().get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66847f;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo664a(int i) {
        return this.f66842a[i];
    }

    /* renamed from: a */
    public final void m723a(String name, boolean z) {
        C18524p.m3841c(name, "name");
        String[] strArr = this.f66842a;
        int i = this.f66843b + 1;
        this.f66843b = i;
        strArr[i] = name;
        this.f66845d[i] = z;
        this.f66844c[i] = null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public SerialDescriptor mo661b(int i) {
        KSerializer<?>[] childSerializers;
        KSerializer<?> kSerializer;
        SerialDescriptor descriptor;
        AbstractC20409w<?> abstractC20409w = this.f66848g;
        if (abstractC20409w == null || (childSerializers = abstractC20409w.childSerializers()) == null || (kSerializer = childSerializers[i]) == null || (descriptor = kSerializer.getDescriptor()) == null) {
            throw new IndexOutOfBoundsException(this.f66847f + " descriptor has only " + this.f66849h + " elements, index: " + i);
        }
        return descriptor;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public AbstractC20458p mo662b() {
        return AbstractC20462t.C20463a.f66968a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: c */
    public final boolean mo660c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: d */
    public final int mo659d() {
        return this.f66849h;
    }

    /* renamed from: e */
    public final Map<String, Integer> m721e() {
        return (Map) this.f66846e.mo1102a();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return !(C18524p.m3850a((Object) this.f66847f, (Object) serialDescriptor.mo665a()) ^ true) && !(C18524p.m3850a(C20457o.m658a(this), C20457o.m658a(serialDescriptor)) ^ true);
    }

    public int hashCode() {
        return (this.f66847f.hashCode() * 31) + C20457o.m658a(this).hashCode();
    }

    public String toString() {
        return C18282n.m4148a(m721e().entrySet(), ", ", this.f66847f + '(', ")", 0, (CharSequence) null, new C20364b(), 24);
    }
}
