package kotlin.jvm.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC20111p;
import kotlin.reflect.EnumC20115s;
import kotlin.reflect.KType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018�� \u001f2\u00020\u0001:\u0001\u001fB'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0013\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u001d2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\b\u0010\u001e\u001a\u00020\u0005H\u0016R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017¨\u0006 "}, m4298d2 = {"Lkotlin/jvm/internal/TypeParameterReference;", "Lkotlin/reflect/KTypeParameter;", "container", "", "name", "", "variance", "Lkotlin/reflect/KVariance;", "isReified", "", "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "bounds", "", "Lkotlin/reflect/KType;", "()Z", "getName", "()Ljava/lang/String;", "upperBounds", "getUpperBounds$annotations", "()V", "getUpperBounds", "()Ljava/util/List;", "getVariance", "()Lkotlin/reflect/KVariance;", "equals", "other", "hashCode", "", "setUpperBounds", "", "toString", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.internal.ai */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ai.class */
public final class C18502ai implements AbstractC20111p {

    /* renamed from: a */
    public static final C18503a f63595a = new C18503a(null);

    /* renamed from: b */
    private volatile List<? extends KType> f63596b;

    /* renamed from: c */
    private final Object f63597c;

    /* renamed from: d */
    private final String f63598d;

    /* renamed from: e */
    private final EnumC20115s f63599e;

    /* renamed from: f */
    private final boolean f63600f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlin/jvm/internal/TypeParameterReference$Companion;", "", "()V", "toString", "", "typeParameter", "Lkotlin/reflect/KTypeParameter;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.jvm.internal.ai$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ai$a.class */
    public static final class C18503a {
        private C18503a() {
        }

        public /* synthetic */ C18503a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static String m3864a(AbstractC20111p typeParameter) {
            C18524p.m3840d(typeParameter, "typeParameter");
            StringBuilder sb = new StringBuilder();
            int i = C18504aj.f63601a[typeParameter.mo1111c().ordinal()];
            if (i == 2) {
                sb.append("in ");
            } else if (i == 3) {
                sb.append("out ");
            }
            sb.append(typeParameter.mo1112b());
            String sb2 = sb.toString();
            C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }
    }

    public C18502ai(Object obj, String name, EnumC20115s variance, boolean z) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(variance, "variance");
        this.f63597c = obj;
        this.f63598d = name;
        this.f63599e = variance;
        this.f63600f = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.AbstractC20111p
    /* renamed from: a */
    public final List<KType> mo1113a() {
        List list = this.f63596b;
        List list2 = list;
        if (list == null) {
            list2 = C18282n.m4176a(C18496ac.m3881c(Object.class));
            this.f63596b = list2;
        }
        return list2;
    }

    @Override // kotlin.reflect.AbstractC20111p
    /* renamed from: b */
    public final String mo1112b() {
        return this.f63598d;
    }

    @Override // kotlin.reflect.AbstractC20111p
    /* renamed from: c */
    public final EnumC20115s mo1111c() {
        return this.f63599e;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C18502ai) {
            C18502ai c18502ai = (C18502ai) obj;
            return C18524p.m3850a(this.f63597c, c18502ai.f63597c) && C18524p.m3850a((Object) this.f63598d, (Object) c18502ai.f63598d);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f63597c;
        return ((obj != null ? obj.hashCode() : 0) * 31) + this.f63598d.hashCode();
    }

    public final String toString() {
        return C18503a.m3864a(this);
    }
}
