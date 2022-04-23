package kotlin.f;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.a.ag;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\b\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lkotlin/ranges/IntProgressionIterator;", "Lkotlin/collections/IntIterator;", "first", "", "last", "step", "(III)V", "finalElement", "hasNext", "", "next", "getStep", "()I", "nextInt", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/f/b.class */
public final class b extends ag {

    /* renamed from: a  reason: collision with root package name */
    private final int f36667a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f36668b;

    /* renamed from: c  reason: collision with root package name */
    private int f36669c;

    /* renamed from: d  reason: collision with root package name */
    private final int f36670d;

    public b(int i, int i2, int i3) {
        this.f36670d = i3;
        this.f36667a = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f36668b = z;
        this.f36669c = !z ? i2 : i;
    }

    @Override // kotlin.a.ag
    public final int a() {
        int i = this.f36669c;
        if (i != this.f36667a) {
            this.f36669c = this.f36670d + i;
        } else if (this.f36668b) {
            this.f36668b = false;
        } else {
            throw new NoSuchElementException();
        }
        return i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f36668b;
    }
}
