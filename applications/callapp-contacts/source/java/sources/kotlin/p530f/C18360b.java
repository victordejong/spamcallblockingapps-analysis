package kotlin.p530f;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.p518a.AbstractC18245ag;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\b\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, m4298d2 = {"Lkotlin/ranges/IntProgressionIterator;", "Lkotlin/collections/IntIterator;", "first", "", "last", "step", "(III)V", "finalElement", "hasNext", "", "next", "getStep", "()I", "nextInt", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.f.b */
/* loaded from: classes5-dex2jar.jar:kotlin/f/b.class */
public final class C18360b extends AbstractC18245ag {

    /* renamed from: a */
    private final int f63462a;

    /* renamed from: b */
    private boolean f63463b;

    /* renamed from: c */
    private int f63464c;

    /* renamed from: d */
    private final int f63465d;

    public C18360b(int i, int i2, int i3) {
        this.f63465d = i3;
        this.f63462a = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f63463b = z;
        this.f63464c = !z ? i2 : i;
    }

    @Override // kotlin.p518a.AbstractC18245ag
    /* renamed from: a */
    public final int mo4059a() {
        int i = this.f63464c;
        if (i != this.f63462a) {
            this.f63464c = this.f63465d + i;
        } else if (!this.f63463b) {
            throw new NoSuchElementException();
        } else {
            this.f63463b = false;
        }
        return i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f63463b;
    }
}
