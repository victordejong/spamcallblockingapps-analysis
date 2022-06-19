package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18306a;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018�� \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineName;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "name", "", "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Key", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.aj */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/aj.class */
public final class C20147aj extends AbstractC18306a {

    /* renamed from: b */
    public static final C20148a f66548b = new C20148a(null);

    /* renamed from: a */
    final String f66549a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineName$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineName;", "()V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.aj$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/aj$a.class */
    public static final class C20148a implements AbstractC18335f.AbstractC18340c<C20147aj> {
        private C20148a() {
        }

        public /* synthetic */ C20148a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C20147aj(String str) {
        super(f66548b);
        this.f66549a = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C20147aj) && C18524p.m3850a((Object) this.f66549a, (Object) ((C20147aj) obj).f66549a);
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f66549a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "CoroutineName(" + this.f66549a + ')';
    }
}
