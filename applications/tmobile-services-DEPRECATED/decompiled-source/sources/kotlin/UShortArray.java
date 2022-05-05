package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.UShortIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0017\n\u0002\b\t\b\u0087@\u0018��2\u00020\u00012\u00020\u0002:\u00013B\u0014\b\u0016\u0012\u0006\u0010*\u001a\u00020\u0012ø\u0001��¢\u0006\u0004\b0\u00101B\u0014\b\u0001\u0012\u0006\u0010,\u001a\u00020+ø\u0001��¢\u0006\u0004\b0\u00102J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\r\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0016ø\u0001��¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u001e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001f\u001a\u00020\u001cH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010$\u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0003H\u0086\u0002ø\u0001��¢\u0006\u0004\b\"\u0010#J\u0010\u0010&\u001a\u00020%HÖ\u0001¢\u0006\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u001c\u0010,\u001a\u00020+8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b,\u0010-\u0012\u0004\b.\u0010/ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00064"}, d2 = {"Lkotlin/UShortArray;", "Ljava/util/Collection;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "Lkotlin/UShort;", "element", "", "contains-xj2QHRw", "([SS)Z", "contains", "", "elements", "containsAll-impl", "([SLjava/util/Collection;)Z", "containsAll", "", "other", "equals", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "get-Mh2AYeg", "([SI)S", "get", "hashCode", "()I", "isEmpty-impl", "([S)Z", "isEmpty", "Lkotlin/collections/UShortIterator;", "iterator-impl", "([S)Lkotlin/collections/UShortIterator;", "iterator", FirebaseAnalytics.Param.VALUE, "", "set-01HTLdE", "([SIS)V", "set", "", "toString", "()Ljava/lang/String;", "getSize-impl", "([S)I", "size", "", "storage", "[S", "getStorage$annotations", "()V", "constructor-impl", "(I)[S", "([S)[S", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UShortArray.class */
public final class UShortArray implements Collection<UShort>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final short[] f20444f;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u0005H\u0016ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, d2 = {"Lkotlin/UShortArray$Iterator;", "Lkotlin/collections/UShortIterator;", "", "hasNext", "()Z", "Lkotlin/UShort;", "nextUShort-Mh2AYeg", "()S", "nextUShort", "", "array", "[S", "", FirebaseAnalytics.Param.INDEX, "I", "<init>", "([S)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/UShortArray$Iterator.class */
    public static final class Iterator extends UShortIterator {

        /* renamed from: f */
        private int f20445f;

        /* renamed from: g */
        private final short[] f20446g;

        public Iterator(@NotNull short[] array) {
            Intrinsics.m1830e(array, "array");
            this.f20446g = array;
        }

        @Override // kotlin.collections.UShortIterator
        /* renamed from: b */
        public short mo2051b() {
            int i = this.f20445f;
            short[] sArr = this.f20446g;
            if (i < sArr.length) {
                this.f20445f = i + 1;
                short s = sArr[i];
                UShort.m2402g(s);
                return s;
            }
            throw new NoSuchElementException(String.valueOf(this.f20445f));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f20445f < this.f20446g.length;
        }
    }

    /* renamed from: e */
    public static boolean m2396e(short[] sArr, short s) {
        boolean s2;
        s2 = ArraysKt___ArraysKt.m2234s(sArr, s);
        return s2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[EDGE_INSN: B:18:0x0055->B:16:0x0055 ?: BREAK  , SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2395f(short[] r3, @org.jetbrains.annotations.NotNull java.util.Collection<kotlin.UShort> r4) {
        /*
            r0 = r4
            java.lang.String r1 = "elements"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r4
            boolean r0 = r0.isEmpty()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0018
        L_0x0013:
            r0 = 1
            r6 = r0
            goto L_0x0055
        L_0x0018:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x001f:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0013
            r0 = r4
            java.lang.Object r0 = r0.next()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlin.UShort
            if (r0 == 0) goto L_0x004d
            r0 = r3
            r1 = r7
            kotlin.UShort r1 = (kotlin.UShort) r1
            short r1 = r1.m2398l()
            boolean r0 = kotlin.collections.ArraysKt.m2309s(r0, r1)
            if (r0 == 0) goto L_0x004d
            r0 = 1
            r8 = r0
            goto L_0x0050
        L_0x004d:
            r0 = 0
            r8 = r0
        L_0x0050:
            r0 = r8
            if (r0 != 0) goto L_0x001f
        L_0x0055:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UShortArray.m2395f(short[], java.util.Collection):boolean");
    }

    /* renamed from: g */
    public static boolean m2394g(short[] sArr, @Nullable Object obj) {
        return (obj instanceof UShortArray) && Intrinsics.m1834a(sArr, ((UShortArray) obj).m2385u());
    }

    /* renamed from: h */
    public static final short m2393h(short[] sArr, int i) {
        short s = sArr[i];
        UShort.m2402g(s);
        return s;
    }

    /* renamed from: k */
    public static int m2391k(short[] sArr) {
        return sArr.length;
    }

    /* renamed from: n */
    public static int m2390n(short[] sArr) {
        return sArr != null ? Arrays.hashCode(sArr) : 0;
    }

    /* renamed from: p */
    public static boolean m2389p(short[] sArr) {
        return sArr.length == 0;
    }

    @NotNull
    /* renamed from: s */
    public static UShortIterator m2387s(short[] sArr) {
        return new Iterator(sArr);
    }

    @NotNull
    /* renamed from: t */
    public static String m2386t(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(UShort uShort) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UShort> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: c */
    public boolean m2397c(short s) {
        return m2396e(this.f20444f, s);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UShort) {
            return m2397c(((UShort) obj).m2398l());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        return m2395f(this.f20444f, collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m2394g(this.f20444f, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m2390n(this.f20444f);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m2389p(this.f20444f);
    }

    /* renamed from: j */
    public int m2392j() {
        return m2391k(this.f20444f);
    }

    @NotNull
    /* renamed from: r */
    public UShortIterator iterator() {
        return m2387s(this.f20444f);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return m2392j();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.m1848a(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.m1847b(this, tArr);
    }

    public String toString() {
        return m2386t(this.f20444f);
    }

    @NotNull
    /* renamed from: u */
    public final /* synthetic */ short[] m2385u() {
        return this.f20444f;
    }
}
