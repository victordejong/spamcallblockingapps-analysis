package com.google.zxing.aztec.encoder;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/zxing/aztec/encoder/HighLevelEncoder.class */
public final class HighLevelEncoder {
    private static final int[][] CHAR_MAP;
    public static final int MODE_DIGIT = 2;
    public static final int MODE_LOWER = 1;
    public static final int MODE_MIXED = 3;
    public static final int MODE_PUNCT = 4;
    public static final int MODE_UPPER = 0;
    public static final int[][] SHIFT_TABLE;
    private final byte[] text;
    public static final String[] MODE_NAMES = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    public static final int[][] LATCH_TABLE = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* JADX WARN: Type inference failed for: r0v9, types: [int[], int[][]] */
    static {
        int[][] iArr = new int[5][256];
        CHAR_MAP = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            CHAR_MAP[0][i] = (i - 65) + 2;
        }
        CHAR_MAP[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            CHAR_MAP[1][i2] = (i2 - 97) + 2;
        }
        CHAR_MAP[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            CHAR_MAP[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = CHAR_MAP;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        for (int i4 = 0; i4 < 28; i4++) {
            CHAR_MAP[3][new int[]{0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127}[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr3[i5] > 0) {
                CHAR_MAP[4][iArr3[i5]] = i5;
            }
        }
        int[][] iArr4 = new int[6][6];
        SHIFT_TABLE = iArr4;
        for (int[] iArr5 : iArr4) {
            Arrays.fill(iArr5, -1);
        }
        int[][] iArr6 = SHIFT_TABLE;
        iArr6[0][4] = 0;
        iArr6[1][4] = 0;
        iArr6[1][0] = 28;
        iArr6[3][4] = 0;
        iArr6[2][4] = 0;
        iArr6[2][0] = 15;
    }

    public HighLevelEncoder(byte[] bArr) {
        this.text = bArr;
    }

    private static Collection<State> simplifyStates(Iterable<State> iterable) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            Iterator it = linkedList.iterator();
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    break;
                }
                State state2 = (State) it.next();
                if (state2.isBetterThanOrEqualTo(state)) {
                    z = false;
                    break;
                } else if (state.isBetterThanOrEqualTo(state2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(state);
            }
        }
        return linkedList;
    }

    private void updateStateForChar(State state, int i, Collection<State> collection) {
        char c = (char) (this.text[i] & 255);
        int i2 = 0;
        boolean z = CHAR_MAP[state.getMode()][c] > 0;
        State state2 = null;
        while (true) {
            State state3 = state2;
            if (i2 > 4) {
                break;
            }
            int i3 = CHAR_MAP[i2][c];
            State state4 = state3;
            if (i3 > 0) {
                State state5 = state3;
                if (state3 == null) {
                    state5 = state.endBinaryShift(i);
                }
                if (!z || i2 == state.getMode() || i2 == 2) {
                    collection.add(state5.latchAndAppend(i2, i3));
                }
                state4 = state5;
                if (!z) {
                    state4 = state5;
                    if (SHIFT_TABLE[state.getMode()][i2] >= 0) {
                        collection.add(state5.shiftAndAppend(i2, i3));
                        state4 = state5;
                    }
                }
            }
            i2++;
            state2 = state4;
        }
        if (state.getBinaryShiftByteCount() > 0 || CHAR_MAP[state.getMode()][c] == 0) {
            collection.add(state.addBinaryShiftChar(i));
        }
    }

    private static void updateStateForPair(State state, int i, int i2, Collection<State> collection) {
        State endBinaryShift = state.endBinaryShift(i);
        collection.add(endBinaryShift.latchAndAppend(4, i2));
        if (state.getMode() != 4) {
            collection.add(endBinaryShift.shiftAndAppend(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(endBinaryShift.latchAndAppend(2, 16 - i2).latchAndAppend(2, 1));
        }
        if (state.getBinaryShiftByteCount() > 0) {
            collection.add(state.addBinaryShiftChar(i).addBinaryShiftChar(i + 1));
        }
    }

    private Collection<State> updateStateListForChar(Iterable<State> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            updateStateForChar(state, i, linkedList);
        }
        return simplifyStates(linkedList);
    }

    private static Collection<State> updateStateListForPair(Iterable<State> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            updateStateForPair(state, i, i2, linkedList);
        }
        return simplifyStates(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.BitArray encode() {
        /*
            r5 = this;
            com.google.zxing.aztec.encoder.State r0 = com.google.zxing.aztec.encoder.State.INITIAL_STATE
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r6 = r0
            r0 = 0
            r7 = r0
        L9:
            r0 = r5
            byte[] r0 = r0.text
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto La4
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L29
            r0 = r8
            r1 = r9
            r0 = r0[r1]
            r10 = r0
            goto L2c
        L29:
            r0 = 0
            r10 = r0
        L2c:
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r11 = r0
            r0 = r11
            r1 = 13
            if (r0 == r1) goto L7a
            r0 = r11
            r1 = 44
            if (r0 == r1) goto L6d
            r0 = r11
            r1 = 46
            if (r0 == r1) goto L60
            r0 = r11
            r1 = 58
            if (r0 == r1) goto L53
        L4d:
            r0 = 0
            r10 = r0
            goto L84
        L53:
            r0 = r10
            r1 = 32
            if (r0 != r1) goto L4d
            r0 = 5
            r10 = r0
            goto L84
        L60:
            r0 = r10
            r1 = 32
            if (r0 != r1) goto L4d
            r0 = 3
            r10 = r0
            goto L84
        L6d:
            r0 = r10
            r1 = 32
            if (r0 != r1) goto L4d
            r0 = 4
            r10 = r0
            goto L84
        L7a:
            r0 = r10
            r1 = 10
            if (r0 != r1) goto L4d
            r0 = 2
            r10 = r0
        L84:
            r0 = r10
            if (r0 <= 0) goto L97
            r0 = r6
            r1 = r7
            r2 = r10
            java.util.Collection r0 = updateStateListForPair(r0, r1, r2)
            r6 = r0
            r0 = r9
            r7 = r0
            goto L9e
        L97:
            r0 = r5
            r1 = r6
            r2 = r7
            java.util.Collection r0 = r0.updateStateListForChar(r1, r2)
            r6 = r0
        L9e:
            int r7 = r7 + 1
            goto L9
        La4:
            r0 = r6
            com.google.zxing.aztec.encoder.HighLevelEncoder$1 r1 = new com.google.zxing.aztec.encoder.HighLevelEncoder$1
            r2 = r1
            r3 = r5
            r2.<init>()
            java.lang.Object r0 = java.util.Collections.min(r0, r1)
            com.google.zxing.aztec.encoder.State r0 = (com.google.zxing.aztec.encoder.State) r0
            r1 = r5
            byte[] r1 = r1.text
            com.google.zxing.common.BitArray r0 = r0.toBitArray(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.HighLevelEncoder.encode():com.google.zxing.common.BitArray");
    }
}
