package kotlin.p532h;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p530f.C18361c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, m4298d2 = {"Lkotlin/text/MatchGroup;", "", "value", "", "range", "Lkotlin/ranges/IntRange;", "(Ljava/lang/String;Lkotlin/ranges/IntRange;)V", "getRange", "()Lkotlin/ranges/IntRange;", "getValue", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.h.g */
/* loaded from: classes5-dex2jar.jar:kotlin/h/g.class */
public final class C18409g {

    /* renamed from: a */
    private final String f63535a;

    /* renamed from: b */
    private final C18361c f63536b;

    public C18409g(String value, C18361c range) {
        C18524p.m3840d(value, "value");
        C18524p.m3840d(range, "range");
        this.f63535a = value;
        this.f63536b = range;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18409g)) {
                return false;
            }
            C18409g c18409g = (C18409g) obj;
            return C18524p.m3850a((Object) this.f63535a, (Object) c18409g.f63535a) && C18524p.m3850a(this.f63536b, c18409g.f63536b);
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f63535a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C18361c c18361c = this.f63536b;
        if (c18361c != null) {
            i = c18361c.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "MatchGroup(value=" + this.f63535a + ", range=" + this.f63536b + ")";
    }
}
