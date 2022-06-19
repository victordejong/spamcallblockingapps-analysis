package io.realm;

import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/OrderedCollectionChangeSet.class */
public interface OrderedCollectionChangeSet {

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedCollectionChangeSet$Range.class */
    public static class Range {
        public final int length;
        public final int startIndex;

        public Range(int i, int i2) {
            this.startIndex = i;
            this.length = i2;
        }

        public String toString() {
            return String.format(Locale.ENGLISH, "startIndex: %d, length: %d", Integer.valueOf(this.startIndex), Integer.valueOf(this.length));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedCollectionChangeSet$State.class */
    public enum State {
        INITIAL,
        UPDATE,
        ERROR
    }

    Range[] getChangeRanges();

    int[] getChanges();

    Range[] getDeletionRanges();

    int[] getDeletions();

    @Nullable
    Throwable getError();

    Range[] getInsertionRanges();

    int[] getInsertions();

    State getState();
}
