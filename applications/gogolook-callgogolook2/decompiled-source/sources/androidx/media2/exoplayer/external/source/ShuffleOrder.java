package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import java.util.Random;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ShuffleOrder.class */
public interface ShuffleOrder {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder.class */
    public static class DefaultShuffleOrder implements ShuffleOrder {
        public final int[] indexInShuffled;
        public final Random random;
        public final int[] shuffled;

        public DefaultShuffleOrder(int i) {
            this(i, new Random());
        }

        public DefaultShuffleOrder(int i, long j) {
            this(i, new Random(j));
        }

        public DefaultShuffleOrder(int i, Random random) {
            this(createShuffledList(i, random), random);
        }

        public DefaultShuffleOrder(int[] iArr, long j) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j));
        }

        public DefaultShuffleOrder(int[] iArr, Random random) {
            this.shuffled = iArr;
            this.random = random;
            this.indexInShuffled = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.indexInShuffled[iArr[i]] = i;
            }
        }

        public static int[] createShuffledList(int i, Random random) {
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2 + 1;
                int nextInt = random.nextInt(i3);
                iArr[i2] = iArr[nextInt];
                iArr[nextInt] = i2;
                i2 = i3;
            }
            return iArr;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public ShuffleOrder cloneAndClear() {
            return new DefaultShuffleOrder(0, new Random(this.random.nextLong()));
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public ShuffleOrder cloneAndInsert(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (i3 < i2) {
                iArr[i3] = this.random.nextInt(this.shuffled.length + 1);
                int i4 = i3 + 1;
                int nextInt = this.random.nextInt(i4);
                iArr2[i3] = iArr2[nextInt];
                iArr2[nextInt] = i3 + i;
                i3 = i4;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.shuffled.length + i2];
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < this.shuffled.length + i2; i7++) {
                if (i5 >= i2 || i6 != iArr[i5]) {
                    iArr3[i7] = this.shuffled[i6];
                    if (iArr3[i7] >= i) {
                        iArr3[i7] = iArr3[i7] + i2;
                    }
                    i6++;
                } else {
                    iArr3[i7] = iArr2[i5];
                    i5++;
                }
            }
            return new DefaultShuffleOrder(iArr3, new Random(this.random.nextLong()));
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public ShuffleOrder cloneAndRemove(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.shuffled.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.shuffled;
                if (i4 >= iArr2.length) {
                    return new DefaultShuffleOrder(iArr, new Random(this.random.nextLong()));
                }
                if (iArr2[i4] < i || iArr2[i4] >= i2) {
                    int[] iArr3 = this.shuffled;
                    iArr[i4 - i5] = iArr3[i4] >= i ? iArr3[i4] - i3 : iArr3[i4];
                } else {
                    i5++;
                }
                i4++;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getFirstIndex() {
            int[] iArr = this.shuffled;
            return iArr.length > 0 ? iArr[0] : -1;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getLastIndex() {
            int[] iArr = this.shuffled;
            return iArr.length > 0 ? iArr[iArr.length - 1] : -1;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getLength() {
            return this.shuffled.length;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getNextIndex(int i) {
            int i2 = this.indexInShuffled[i] + 1;
            int[] iArr = this.shuffled;
            return i2 < iArr.length ? iArr[i2] : -1;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getPreviousIndex(int i) {
            int i2 = this.indexInShuffled[i];
            int i3 = -1;
            int i4 = i2 - 1;
            if (i4 >= 0) {
                i3 = this.shuffled[i4];
            }
            return i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder.class */
    public static final class UnshuffledShuffleOrder implements ShuffleOrder {
        public final int length;

        public UnshuffledShuffleOrder(int i) {
            this.length = i;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public ShuffleOrder cloneAndClear() {
            return new UnshuffledShuffleOrder(0);
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public ShuffleOrder cloneAndInsert(int i, int i2) {
            return new UnshuffledShuffleOrder(this.length + i2);
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public ShuffleOrder cloneAndRemove(int i, int i2) {
            return new UnshuffledShuffleOrder((this.length - i2) + i);
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getFirstIndex() {
            return this.length > 0 ? 0 : -1;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getLastIndex() {
            int i = this.length;
            return i > 0 ? i - 1 : -1;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getLength() {
            return this.length;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getNextIndex(int i) {
            int i2 = i + 1;
            if (i2 >= this.length) {
                i2 = -1;
            }
            return i2;
        }

        @Override // androidx.media2.exoplayer.external.source.ShuffleOrder
        public int getPreviousIndex(int i) {
            int i2 = i - 1;
            if (i2 < 0) {
                i2 = -1;
            }
            return i2;
        }
    }

    ShuffleOrder cloneAndClear();

    ShuffleOrder cloneAndInsert(int i, int i2);

    ShuffleOrder cloneAndRemove(int i, int i2);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i);

    int getPreviousIndex(int i);
}
