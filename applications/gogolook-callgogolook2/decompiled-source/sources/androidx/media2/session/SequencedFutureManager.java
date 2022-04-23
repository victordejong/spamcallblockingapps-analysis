package androidx.media2.session;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.media2.session.futures.AbstractResolvableFuture;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SequencedFutureManager.class */
public class SequencedFutureManager implements AutoCloseable {
    public static final boolean DEBUG = false;
    public static final String TAG = "SequencedFutureManager";
    @GuardedBy("mLock")
    public int mNextSequenceNumber;
    public final Object mLock = new Object();
    @GuardedBy("mLock")
    public ArrayMap<Integer, SequencedFuture> mSeqToFutureMap = new ArrayMap<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SequencedFutureManager$SequencedFuture.class */
    public static final class SequencedFuture<T> extends AbstractResolvableFuture<T> {
        public final T mResultWhenClosed;
        public final int mSequenceNumber;

        public SequencedFuture(int i, @NonNull T t) {
            this.mSequenceNumber = i;
            this.mResultWhenClosed = t;
        }

        public static <T> SequencedFuture<T> create(int i, @NonNull T t) {
            return new SequencedFuture<>(i, t);
        }

        @NonNull
        public T getResultWhenClosed() {
            return this.mResultWhenClosed;
        }

        public int getSequenceNumber() {
            return this.mSequenceNumber;
        }

        @Override // androidx.media2.session.futures.AbstractResolvableFuture
        public boolean set(@Nullable T t) {
            return super.set(t);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        ArrayList<SequencedFuture> arrayList = new ArrayList();
        synchronized (this.mLock) {
            arrayList.addAll(this.mSeqToFutureMap.values());
            this.mSeqToFutureMap.clear();
        }
        for (SequencedFuture sequencedFuture : arrayList) {
            sequencedFuture.set(sequencedFuture.getResultWhenClosed());
        }
    }

    public <T> SequencedFuture<T> createSequencedFuture(T t) {
        SequencedFuture<T> create;
        synchronized (this.mLock) {
            int obtainNextSequenceNumber = obtainNextSequenceNumber();
            create = SequencedFuture.create(obtainNextSequenceNumber, t);
            this.mSeqToFutureMap.put(Integer.valueOf(obtainNextSequenceNumber), create);
        }
        return create;
    }

    public int obtainNextSequenceNumber() {
        int i;
        synchronized (this.mLock) {
            i = this.mNextSequenceNumber;
            this.mNextSequenceNumber = i + 1;
        }
        return i;
    }

    public <T> void setFutureResult(int i, T t) {
        synchronized (this.mLock) {
            SequencedFuture remove = this.mSeqToFutureMap.remove(Integer.valueOf(i));
            if (remove != null) {
                if (!(t == null || remove.getResultWhenClosed().getClass() == t.getClass())) {
                    String str = "Type mismatch, expected " + remove.getResultWhenClosed().getClass() + ", but was " + t.getClass();
                }
                remove.set(t);
            }
        }
    }
}
