package com.google.common.base;

import com.google.common.base.Splitter;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/base/AbstractIterator.class */
public abstract class AbstractIterator<T> implements Iterator<T> {
    public T next;
    public State state = State.NOT_READY;

    /* loaded from: classes3-dex2jar.jar:com/google/common/base/AbstractIterator$State.class */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i;
        int i2;
        int i3;
        State state = this.state;
        State state2 = State.FAILED;
        C26232y.checkState2(state != state2);
        int ordinal = this.state.ordinal();
        if (ordinal != 0) {
            boolean z = false;
            if (ordinal != 2) {
                State state3 = State.DONE;
                this.state = state2;
                Splitter.1.1 r0 = (Splitter.SplittingIterator) this;
                int i4 = ((Splitter.SplittingIterator) r0).offset;
                while (true) {
                    int i5 = ((Splitter.SplittingIterator) r0).offset;
                    if (i5 == -1) {
                        r0.state = state3;
                        str = null;
                        break;
                    }
                    Splitter.1.1 r02 = r0;
                    int indexIn = r02.this$0.val$separatorMatcher.indexIn(((Splitter.SplittingIterator) r02).toSplit, i5);
                    if (indexIn == -1) {
                        indexIn = ((Splitter.SplittingIterator) r0).toSplit.length();
                        ((Splitter.SplittingIterator) r0).offset = -1;
                    } else {
                        ((Splitter.SplittingIterator) r0).offset = indexIn + 1;
                    }
                    int i6 = ((Splitter.SplittingIterator) r0).offset;
                    i = i4;
                    if (i6 == i4) {
                        int i7 = i6 + 1;
                        ((Splitter.SplittingIterator) r0).offset = i7;
                        if (i7 > ((Splitter.SplittingIterator) r0).toSplit.length()) {
                            ((Splitter.SplittingIterator) r0).offset = -1;
                        }
                    } else {
                        while (true) {
                            i2 = indexIn;
                            if (i >= indexIn) {
                                break;
                            }
                            i2 = indexIn;
                            if (!((Splitter.SplittingIterator) r0).trimmer.matches(((Splitter.SplittingIterator) r0).toSplit.charAt(i))) {
                                break;
                            }
                            i++;
                        }
                        while (i2 > i) {
                            CharMatcher charMatcher = ((Splitter.SplittingIterator) r0).trimmer;
                            CharSequence charSequence = ((Splitter.SplittingIterator) r0).toSplit;
                            int i8 = i2 - 1;
                            if (!charMatcher.matches(charSequence.charAt(i8))) {
                                break;
                            }
                            i2 = i8;
                        }
                        if (!((Splitter.SplittingIterator) r0).omitEmptyStrings || i != i2) {
                            break;
                        }
                        i4 = ((Splitter.SplittingIterator) r0).offset;
                    }
                }
                int i9 = ((Splitter.SplittingIterator) r0).limit;
                if (i9 == 1) {
                    int length = ((Splitter.SplittingIterator) r0).toSplit.length();
                    ((Splitter.SplittingIterator) r0).offset = -1;
                    while (true) {
                        i3 = length;
                        if (length <= i) {
                            break;
                        }
                        CharMatcher charMatcher2 = ((Splitter.SplittingIterator) r0).trimmer;
                        CharSequence charSequence2 = ((Splitter.SplittingIterator) r0).toSplit;
                        int i10 = length - 1;
                        i3 = length;
                        if (!charMatcher2.matches(charSequence2.charAt(i10))) {
                            break;
                        }
                        length = i10;
                    }
                } else {
                    ((Splitter.SplittingIterator) r0).limit = i9 - 1;
                    i3 = i2;
                }
                str = ((Splitter.SplittingIterator) r0).toSplit.subSequence(i, i3).toString();
                this.next = str;
                z = false;
                if (this.state != state3) {
                    this.state = State.READY;
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.state = State.NOT_READY;
            T t = this.next;
            this.next = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
