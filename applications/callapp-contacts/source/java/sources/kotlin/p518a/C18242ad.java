package kotlin.p518a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028��¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0004HÆ\u0003J\u000e\u0010\r\u001a\u00028��HÆ\u0003¢\u0006\u0002\u0010\nJ(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0��2\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00028��HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0005\u001a\u00028��¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, m4298d2 = {"Lkotlin/collections/IndexedValue;", "T", "", "index", "", "value", "(ILjava/lang/Object;)V", "getIndex", "()I", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "component2", "copy", "(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;", "equals", "", "other", "hashCode", "toString", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.ad */
/* loaded from: classes5-dex2jar.jar:kotlin/a/ad.class */
public final class C18242ad<T> {

    /* renamed from: a */
    public final int f63352a;

    /* renamed from: b */
    public final T f63353b;

    public C18242ad(int i, T t) {
        this.f63352a = i;
        this.f63353b = t;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18242ad)) {
                return false;
            }
            C18242ad c18242ad = (C18242ad) obj;
            return this.f63352a == c18242ad.f63352a && C18524p.m3850a(this.f63353b, c18242ad.f63353b);
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f63352a;
        T t = this.f63353b;
        return (i * 31) + (t != null ? t.hashCode() : 0);
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f63352a + ", value=" + this.f63353b + ")";
    }
}
