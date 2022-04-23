package kotlin.jvm.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.reflect.KType;
import kotlin.reflect.p;
import kotlin.reflect.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018�� \u001f2\u00020\u0001:\u0001\u001fB'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0013\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u001d2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\b\u0010\u001e\u001a\u00020\u0005H\u0016R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017¨\u0006 "}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference;", "Lkotlin/reflect/KTypeParameter;", "container", "", "name", "", "variance", "Lkotlin/reflect/KVariance;", "isReified", "", "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "bounds", "", "Lkotlin/reflect/KType;", "()Z", "getName", "()Ljava/lang/String;", "upperBounds", "getUpperBounds$annotations", "()V", "getUpperBounds", "()Ljava/util/List;", "getVariance", "()Lkotlin/reflect/KVariance;", "equals", "other", "hashCode", "", "setUpperBounds", "", "toString", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ai.class */
public final class ai implements p {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36786a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private volatile List<? extends KType> f36787b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f36788c;

    /* renamed from: d  reason: collision with root package name */
    private final String f36789d;
    private final s e;
    private final boolean f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference$Companion;", "", "()V", "toString", "", "typeParameter", "Lkotlin/reflect/KTypeParameter;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ai$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static String a(p typeParameter) {
            p.d(typeParameter, "typeParameter");
            StringBuilder sb = new StringBuilder();
            int i = aj.f36790a[typeParameter.c().ordinal()];
            if (i == 2) {
                sb.append("in ");
            } else if (i == 3) {
                sb.append("out ");
            }
            sb.append(typeParameter.b());
            String sb2 = sb.toString();
            p.b(sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }
    }

    public ai(Object obj, String name, s variance, boolean z) {
        p.d(name, "name");
        p.d(variance, "variance");
        this.f36788c = obj;
        this.f36789d = name;
        this.e = variance;
        this.f = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.p
    public final List<KType> a() {
        List list = this.f36787b;
        List list2 = list;
        if (list == null) {
            List a2 = n.a(ac.c(Object.class));
            this.f36787b = a2;
            list2 = a2;
        }
        return list2;
    }

    @Override // kotlin.reflect.p
    public final String b() {
        return this.f36789d;
    }

    @Override // kotlin.reflect.p
    public final s c() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ai)) {
            return false;
        }
        ai aiVar = (ai) obj;
        return p.a(this.f36788c, aiVar.f36788c) && p.a((Object) this.f36789d, (Object) aiVar.f36789d);
    }

    public final int hashCode() {
        Object obj = this.f36788c;
        return ((obj != null ? obj.hashCode() : 0) * 31) + this.f36789d.hashCode();
    }

    public final String toString() {
        return a.a(this);
    }
}
