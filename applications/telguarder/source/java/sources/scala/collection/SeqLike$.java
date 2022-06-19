package scala.collection;

import scala.math.package$;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$.class */
public final class SeqLike$ {
    public static final SeqLike$ MODULE$ = null;

    static {
        new SeqLike$();
    }

    private SeqLike$() {
        MODULE$ = this;
    }

    private final int clipL$1(int i, int i2) {
        if (i <= i2) {
            i = -1;
        }
        return i;
    }

    private final int clipR$1(int i, int i2) {
        if (i >= i2) {
            i = -1;
        }
        return i;
    }

    private <B> int[] kmpJumpTable(IndexedSeq<B> indexedSeq, int i) {
        int[] iArr = new int[i];
        iArr[0] = -1;
        iArr[1] = 0;
        int i2 = 2;
        int i3 = 0;
        while (i2 < i) {
            B apply = indexedSeq.apply(i2 - 1);
            B apply2 = indexedSeq.apply(i3);
            if (apply == apply2 ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, apply2) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, apply2) : apply.equals(apply2)) {
                i3++;
                iArr[i2] = i3;
            } else if (i3 > 0) {
                i3 = iArr[i3];
            } else {
                iArr[i2] = 0;
            }
            i2++;
        }
        return iArr;
    }

    private <B> IndexedSeq<B> kmpOptimizeWord(Seq<B> seq, int i, int i2, boolean z) {
        SeqLike$$anon$3 seqLike$$anon$3;
        if (seq instanceof IndexedSeq) {
            IndexedSeq<B> indexedSeq = (IndexedSeq) seq;
            seqLike$$anon$3 = (z && i == 0 && i2 == seq.length()) ? indexedSeq : z ? new SeqLike$$anon$3(i, i2, indexedSeq) : new SeqLike$$anon$4(i, i2, indexedSeq);
        } else {
            seqLike$$anon$3 = new SeqLike$$anon$5(seq, i, i2, z);
        }
        return seqLike$$anon$3;
    }

    public <B> int indexOf(Seq<B> seq, int i, int i2, Seq<B> seq2, int i3, int i4, int i5) {
        int i6;
        int length = seq.length();
        int max = package$.MODULE$.max(0, i5);
        int min = package$.MODULE$.min(length, i + max);
        int min2 = package$.MODULE$.min(length, min + i2);
        int length2 = seq2.length();
        int min3 = package$.MODULE$.min(length2, i3);
        int min4 = package$.MODULE$.min(length2, min3 + i4);
        if (max <= length - i) {
            int i7 = min4 - min3;
            if (i7 < 1) {
                i6 = min;
            } else if (min2 - min >= i7) {
                int scala$collection$SeqLike$$kmpSearch = scala$collection$SeqLike$$kmpSearch(seq, min, min2, seq2, min3, min4, true);
                i6 = scala$collection$SeqLike$$kmpSearch < 0 ? scala$collection$SeqLike$$kmpSearch : scala$collection$SeqLike$$kmpSearch - package$.MODULE$.min(length, i);
            }
            return i6;
        }
        i6 = -1;
        return i6;
    }

    public <B> int lastIndexOf(Seq<B> seq, int i, int i2, Seq<B> seq2, int i3, int i4, int i5) {
        int length = seq.length();
        int length2 = seq2.length();
        int min = package$.MODULE$.min(length, i);
        int min2 = package$.MODULE$.min(length, min + i2);
        int min3 = package$.MODULE$.min(min2 - min, i5);
        int min4 = package$.MODULE$.min(length2, i3);
        int min5 = package$.MODULE$.min(length2, min4 + i4);
        int i6 = min + min3;
        int i7 = min5 - min4;
        int min6 = package$.MODULE$.min(min2, (i6 + i7) - 1);
        if (min3 >= 0) {
            if (i7 >= 1) {
                if (min6 - min >= i7) {
                    i6 = scala$collection$SeqLike$$kmpSearch(seq, min, min6, seq2, min4, min5, false);
                    if (i6 >= 0) {
                        i6 -= min;
                    }
                }
            }
            return i6;
        }
        i6 = -1;
        return i6;
    }

    public <B> int scala$collection$SeqLike$$kmpSearch(Seq<B> seq, int i, int i2, Seq<B> seq2, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (i4 == i3 + 1) {
            i = z ? clipR$1(seq.indexOf(seq2.apply(i3), i), i2) : clipL$1(seq.lastIndexOf(seq2.apply(i3), i2 - 1), i - 1);
        } else {
            int i11 = i2 - i;
            int i12 = i4 - i3;
            if (i11 == i12) {
                GenTraversableLike slice = seq.view().slice(i, i2);
                Object slice2 = seq2.view().slice(i3, i4);
                if (slice != null ? !slice.equals(slice2) : slice2 != null) {
                    i = -1;
                }
            } else {
                if (!(seq instanceof IndexedSeq)) {
                    Iterator<B> drop = seq.iterator().drop(i);
                    IndexedSeq<B> kmpOptimizeWord = kmpOptimizeWord(seq2, i3, i4, true);
                    int[] kmpJumpTable = kmpJumpTable(kmpOptimizeWord, i12);
                    Object[] objArr = new Object[i12];
                    int i13 = 0;
                    int i14 = 0;
                    int i15 = 0;
                    int i16 = -1;
                    while (true) {
                        int i17 = i13 + i;
                        i5 = i16;
                        if ((i17 + i4) - i3 > i2) {
                            break;
                        }
                        while (true) {
                            i6 = i15 + i13;
                            if (i6 < i14) {
                                break;
                            }
                            objArr[i14 % i12] = drop.next();
                            i14++;
                        }
                        B apply = kmpOptimizeWord.apply(i15);
                        Object obj = objArr[i6 % i12];
                        if (apply == obj ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, obj) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, obj) : apply.equals(obj)) {
                            int i18 = i15 + 1;
                            i7 = i13;
                            i8 = i18;
                            if (i18 != i12) {
                                i15 = i8;
                                i13 = i7;
                            } else if (z) {
                                return i17;
                            } else {
                                i15 = i18 - 1;
                                int i19 = kmpJumpTable[i15];
                                i13 += i15 - i19;
                                if (i15 > 0) {
                                    i15 = i19;
                                    i16 = i17;
                                } else {
                                    i16 = i17;
                                }
                            }
                        } else {
                            int i20 = kmpJumpTable[i15];
                            i13 += i15 - i20;
                            i7 = i13;
                            i8 = i15;
                            if (i15 > 0) {
                                i15 = i20;
                            } else {
                                i15 = i8;
                                i13 = i7;
                            }
                        }
                    }
                } else {
                    IndexedSeq<B> kmpOptimizeWord2 = kmpOptimizeWord(seq2, i3, i4, z);
                    int[] kmpJumpTable2 = kmpJumpTable(kmpOptimizeWord2, i12);
                    int i21 = z ? i : i2 - 1;
                    int i22 = z ? 1 : -1;
                    int i23 = 0;
                    int i24 = 0;
                    while (true) {
                        int i25 = i24;
                        int i26 = i23 + i25;
                        if (i26 >= i11) {
                            i5 = -1;
                            break;
                        }
                        B apply2 = kmpOptimizeWord2.apply(i23);
                        B apply3 = seq.apply((i26 * i22) + i21);
                        if (apply2 == apply3 ? true : apply2 == null ? false : apply2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply2, apply3) : apply2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply2, apply3) : apply2.equals(apply3)) {
                            int i27 = i23 + 1;
                            i10 = i27;
                            i9 = i25;
                            if (i27 == i12) {
                                return z ? i25 + i : (i2 - i25) - i27;
                            }
                        } else {
                            int i28 = kmpJumpTable2[i23];
                            int i29 = i25 + (i23 - i28);
                            i10 = i23;
                            i9 = i29;
                            if (i23 > 0) {
                                i10 = i28;
                                i9 = i29;
                            }
                        }
                        i23 = i10;
                        i24 = i9;
                    }
                }
                i = i5;
            }
        }
        return i;
    }
}
