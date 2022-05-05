package org.spongycastle.pqc.crypto.gmss;

import java.util.Enumeration;
import java.util.Vector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/GMSSUtils.class */
public class GMSSUtils {
    GMSSUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Vector[] clone(Vector[] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[] vectorArr2 = new Vector[vectorArr.length];
        for (int i = 0; i != vectorArr.length; i++) {
            vectorArr2[i] = new Vector();
            Enumeration elements = vectorArr[i].elements();
            while (elements.hasMoreElements()) {
                vectorArr2[i].addElement(elements.nextElement());
            }
        }
        return vectorArr2;
    }

    static GMSSLeaf[] clone(GMSSLeaf[] gMSSLeafArr) {
        if (gMSSLeafArr == null) {
            return null;
        }
        GMSSLeaf[] gMSSLeafArr2 = new GMSSLeaf[gMSSLeafArr.length];
        System.arraycopy(gMSSLeafArr, 0, gMSSLeafArr2, 0, gMSSLeafArr.length);
        return gMSSLeafArr2;
    }

    static GMSSRootCalc[] clone(GMSSRootCalc[] gMSSRootCalcArr) {
        if (gMSSRootCalcArr == null) {
            return null;
        }
        GMSSRootCalc[] gMSSRootCalcArr2 = new GMSSRootCalc[gMSSRootCalcArr.length];
        System.arraycopy(gMSSRootCalcArr, 0, gMSSRootCalcArr2, 0, gMSSRootCalcArr.length);
        return gMSSRootCalcArr2;
    }

    static GMSSRootSig[] clone(GMSSRootSig[] gMSSRootSigArr) {
        if (gMSSRootSigArr == null) {
            return null;
        }
        GMSSRootSig[] gMSSRootSigArr2 = new GMSSRootSig[gMSSRootSigArr.length];
        System.arraycopy(gMSSRootSigArr, 0, gMSSRootSigArr2, 0, gMSSRootSigArr.length);
        return gMSSRootSigArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Treehash[] clone(Treehash[] treehashArr) {
        if (treehashArr == null) {
            return null;
        }
        Treehash[] treehashArr2 = new Treehash[treehashArr.length];
        System.arraycopy(treehashArr, 0, treehashArr2, 0, treehashArr.length);
        return treehashArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v3, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] clone(byte[][] r5) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0009
            r0 = 0
            byte[][] r0 = (byte[][]) r0
            return r0
        L_0x0009:
            r0 = r5
            int r0 = r0.length
            byte[] r0 = new byte[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0011:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 == r1) goto L_0x0026
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            byte[] r2 = org.spongycastle.util.Arrays.clone(r2)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x0011
        L_0x0026:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.gmss.GMSSUtils.clone(byte[][]):byte[][]");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Vector[], java.util.Vector[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.util.Vector[][] clone(java.util.Vector[][] r5) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0009
            r0 = 0
            java.util.Vector[][] r0 = (java.util.Vector[][]) r0
            return r0
        L_0x0009:
            r0 = r5
            int r0 = r0.length
            java.util.Vector[] r0 = new java.util.Vector[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0011:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 == r1) goto L_0x0026
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            java.util.Vector[] r2 = clone(r2)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x0011
        L_0x0026:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.gmss.GMSSUtils.clone(java.util.Vector[][]):java.util.Vector[][]");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [org.spongycastle.pqc.crypto.gmss.Treehash[], org.spongycastle.pqc.crypto.gmss.Treehash[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static org.spongycastle.pqc.crypto.gmss.Treehash[][] clone(org.spongycastle.pqc.crypto.gmss.Treehash[][] r5) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0009
            r0 = 0
            org.spongycastle.pqc.crypto.gmss.Treehash[][] r0 = (org.spongycastle.pqc.crypto.gmss.Treehash[][]) r0
            return r0
        L_0x0009:
            r0 = r5
            int r0 = r0.length
            org.spongycastle.pqc.crypto.gmss.Treehash[] r0 = new org.spongycastle.pqc.crypto.gmss.Treehash[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0011:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 == r1) goto L_0x0026
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            org.spongycastle.pqc.crypto.gmss.Treehash[] r2 = clone(r2)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x0011
        L_0x0026:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.gmss.GMSSUtils.clone(org.spongycastle.pqc.crypto.gmss.Treehash[][]):org.spongycastle.pqc.crypto.gmss.Treehash[][]");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [byte[][], byte[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static byte[][][] clone(byte[][][] r5) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0009
            r0 = 0
            byte[][][] r0 = (byte[][][]) r0
            return r0
        L_0x0009:
            r0 = r5
            int r0 = r0.length
            byte[][] r0 = new byte[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0011:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 == r1) goto L_0x0026
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            byte[][] r2 = clone(r2)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x0011
        L_0x0026:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.gmss.GMSSUtils.clone(byte[][][]):byte[][][]");
    }
}
