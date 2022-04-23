package kotlin.collections.unsigned;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0096\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016ø\u0001��¢\u0006\u0004\b\u0013\u0010\u000fR\u0016\u0010\u0017\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0018"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$3", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "Lkotlin/UByte;", "element", "", "contains-7apg3OU", "(B)Z", "contains", "", FirebaseAnalytics.Param.INDEX, "get-w2LRezQ", "(I)B", "get", "indexOf-7apg3OU", "(B)I", "indexOf", "isEmpty", "()Z", "lastIndexOf-7apg3OU", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$3.class */
public final class UArraysKt___UArraysJvmKt$asList$3 extends AbstractList<UByte> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ byte[] f20596g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return UByteArray.m2454k(this.f20596g);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m1964e(((UByte) obj).m2461l());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m1964e(byte b) {
        return UByteArray.m2459e(this.f20596g, b);
    }

    /* renamed from: f */
    public byte m1963f(int i) {
        return UByteArray.m2456h(this.f20596g, i);
    }

    /* renamed from: g */
    public int m1962g(byte b) {
        int y;
        y = ArraysKt___ArraysKt.m2228y(this.f20596g, b);
        return y;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        return UByte.m2468a(m1963f(i));
    }

    /* renamed from: h */
    public int m1961h(byte b) {
        int H;
        H = ArraysKt___ArraysKt.m2253H(this.f20596g, b);
        return H;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof UByte) {
            return m1962g(((UByte) obj).m2461l());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return UByteArray.m2452p(this.f20596g);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof UByte) {
            return m1961h(((UByte) obj).m2461l());
        }
        return -1;
    }
}
