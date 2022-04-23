package kotlin.a;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.a.a;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH$J\b\u0010\n\u001a\u00020\tH\u0004J\t\u0010\u000b\u001a\u00020\fH\u0096\u0002J\u000e\u0010\r\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028��H\u0004¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\fH\u0002R\u0012\u0010\u0004\u001a\u0004\u0018\u00018��X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lkotlin/collections/AbstractIterator;", "T", "", "()V", "nextValue", "Ljava/lang/Object;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lkotlin/collections/State;", "computeNext", "", "done", "hasNext", "", "next", "()Ljava/lang/Object;", "setNext", "value", "(Ljava/lang/Object;)V", "tryToComputeNext", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/b.class */
public abstract class b<T> implements Iterator<T>, a {

    /* renamed from: a  reason: collision with root package name */
    private int f36588a = au.f36585b;

    /* renamed from: b  reason: collision with root package name */
    private T f36589b;

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(T t) {
        this.f36589b = t;
        this.f36588a = au.f36584a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        this.f36588a = au.f36586c;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f36588a != au.f36587d) {
            int i = c.f36590a[this.f36588a - 1];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
            this.f36588a = au.f36587d;
            a();
            return this.f36588a == au.f36584a;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.f36588a = au.f36585b;
            return this.f36589b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
