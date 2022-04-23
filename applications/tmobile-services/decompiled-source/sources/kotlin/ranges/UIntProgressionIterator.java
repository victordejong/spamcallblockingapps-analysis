package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.collections.UIntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\b\u0003\u0018��2\u00020\u0001B\"\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0010ø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u0005H\u0016ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR\u001c\u0010\f\u001a\u00020\u00058\u0002@\u0002X\u0082\u000eø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\f\u0010\nR\u001c\u0010\r\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\r\u0010\n\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"Lkotlin/ranges/UIntProgressionIterator;", "Lkotlin/collections/UIntIterator;", "", "hasNext", "()Z", "Lkotlin/UInt;", "nextUInt-pVg5ArA", "()I", "nextUInt", "finalElement", "I", "Z", "next", "step", "first", "last", "", "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntProgressionIterator.class */
final class UIntProgressionIterator extends UIntIterator {

    /* renamed from: f */
    private final int f20814f;

    /* renamed from: g */
    private boolean f20815g;

    /* renamed from: h */
    private final int f20816h;

    /* renamed from: i */
    private int f20817i;

    private UIntProgressionIterator(int i, int i2, int i3) {
        this.f20814f = i2;
        boolean z = true;
        int a = UnsignedKt.m2383a(i, i2);
        if (i3 <= 0 ? a < 0 : a > 0) {
            z = false;
        }
        this.f20815g = z;
        UInt.m2444g(i3);
        this.f20816h = i3;
        this.f20817i = !this.f20815g ? this.f20814f : i;
    }

    public /* synthetic */ UIntProgressionIterator(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    @Override // kotlin.collections.UIntIterator
    /* renamed from: b */
    public int mo1702b() {
        int i = this.f20817i;
        if (i != this.f20814f) {
            int i2 = this.f20816h + i;
            UInt.m2444g(i2);
            this.f20817i = i2;
        } else if (this.f20815g) {
            this.f20815g = false;
        } else {
            throw new NoSuchElementException();
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20815g;
    }
}
