package kotlin.sequences;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001d\n��\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\t\u0010\u000b\u001a\u00020\fH\u0096\u0002J\u000e\u0010\r\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u000eR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, m400d2 = {"kotlin/sequences/TakeSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "", "getLeft", "()I", "setLeft", "(I)V", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/sequences/TakeSequence$iterator$1.class */
public final class TakeSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    private final Iterator<T> iterator;
    private int left;
    final /* synthetic */ TakeSequence this$0;

    public TakeSequence$iterator$1(TakeSequence takeSequence) {
        int i;
        Sequence sequence;
        this.this$0 = takeSequence;
        i = takeSequence.count;
        this.left = i;
        sequence = takeSequence.sequence;
        this.iterator = sequence.iterator();
    }

    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    public final int getLeft() {
        return this.left;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.left > 0 && this.iterator.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        int i = this.left;
        if (i != 0) {
            this.left = i - 1;
            return this.iterator.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setLeft(int i) {
        this.left = i;
    }
}
