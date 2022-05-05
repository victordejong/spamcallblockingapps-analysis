package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0016\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H$¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0004¢\u0006\u0004\b\u0007\u0010\u0006J\u0010\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028��H\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\nR\u0018\u0010\u0011\u001a\u0004\u0018\u00018��8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lkotlin/collections/AbstractIterator;", "T", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "computeNext", "()V", "done", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", FirebaseAnalytics.Param.VALUE, "setNext", "(Ljava/lang/Object;)V", "tryToComputeNext", "nextValue", "Ljava/lang/Object;", "Lkotlin/collections/State;", "state", "Lkotlin/collections/State;", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractIterator.class */
public abstract class AbstractIterator<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: f */
    private State f20452f = State.NotReady;

    /* renamed from: g */
    private T f20453g;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractIterator$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20454a;

        static {
            int[] iArr = new int[State.values().length];
            f20454a = iArr;
            iArr[State.Done.ordinal()] = 1;
            f20454a[State.Ready.ordinal()] = 2;
        }
    }

    /* renamed from: e */
    private final boolean m2374e() {
        this.f20452f = State.Failed;
        mo1672a();
        return this.f20452f == State.Ready;
    }

    /* renamed from: a */
    protected abstract void mo1672a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m2376b() {
        this.f20452f = State.Done;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m2375c(T t) {
        this.f20453g = t;
        this.f20452f = State.Ready;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z = false;
        if (this.f20452f != State.Failed) {
            int i = WhenMappings.f20454a[this.f20452f.ordinal()];
            if (i != 1) {
                z = i != 2 ? m2374e() : true;
            }
            return z;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.f20452f = State.NotReady;
            return this.f20453g;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
