package org.mozilla.javascript.optimizer;

import java.util.BitSet;
import java.util.HashMap;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.ast.Jump;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/Block.class */
public class Block {
    static final boolean DEBUG = false;
    private static int debug_blockCount;
    private int itsBlockID;
    private int itsEndNodeIndex;
    private BitSet itsLiveOnEntrySet;
    private BitSet itsLiveOnExitSet;
    private BitSet itsNotDefSet;
    private Block[] itsPredecessors;
    private int itsStartNodeIndex;
    private Block[] itsSuccessors;
    private BitSet itsUseBeforeDefSet;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/Block$FatBlock.class */
    public static class FatBlock {
        private ObjToIntMap predecessors;
        Block realBlock;
        private ObjToIntMap successors;

        private FatBlock() {
            this.successors = new ObjToIntMap();
            this.predecessors = new ObjToIntMap();
        }

        private static Block[] reduceToArray(ObjToIntMap objToIntMap) {
            Block[] blockArr;
            if (!objToIntMap.isEmpty()) {
                Block[] blockArr2 = new Block[objToIntMap.size()];
                int i = 0;
                ObjToIntMap.Iterator newIterator = objToIntMap.newIterator();
                newIterator.start();
                while (true) {
                    blockArr = blockArr2;
                    if (newIterator.done()) {
                        break;
                    }
                    blockArr2[i] = ((FatBlock) newIterator.getKey()).realBlock;
                    newIterator.next();
                    i++;
                }
            } else {
                blockArr = null;
            }
            return blockArr;
        }

        void addPredecessor(FatBlock fatBlock) {
            this.predecessors.put(fatBlock, 0);
        }

        void addSuccessor(FatBlock fatBlock) {
            this.successors.put(fatBlock, 0);
        }

        Block[] getPredecessors() {
            return reduceToArray(this.predecessors);
        }

        Block[] getSuccessors() {
            return reduceToArray(this.successors);
        }
    }

    Block(int i, int i2) {
        this.itsStartNodeIndex = i;
        this.itsEndNodeIndex = i2;
    }

    private static boolean assignType(int[] iArr, int i, int i2) {
        int i3 = iArr[i];
        int i4 = i2 | iArr[i];
        iArr[i] = i4;
        return i3 != i4;
    }

    private static Block[] buildBlocks(Node[] nodeArr) {
        HashMap hashMap = new HashMap();
        ObjArray objArray = new ObjArray();
        int i = 0;
        for (int i2 = 0; i2 < nodeArr.length; i2++) {
            int type = nodeArr[i2].getType();
            if (type != 131) {
                switch (type) {
                    case 5:
                    case 6:
                    case 7:
                        FatBlock newFatBlock = newFatBlock(i, i2);
                        if (nodeArr[i].getType() == 131) {
                            hashMap.put(nodeArr[i], newFatBlock);
                        }
                        objArray.add(newFatBlock);
                        i = i2 + 1;
                        continue;
                    default:
                        i = i;
                        continue;
                }
            } else {
                i = i;
                if (i2 != i) {
                    FatBlock newFatBlock2 = newFatBlock(i, i2 - 1);
                    if (nodeArr[i].getType() == 131) {
                        hashMap.put(nodeArr[i], newFatBlock2);
                    }
                    objArray.add(newFatBlock2);
                    i = i2;
                }
            }
        }
        if (i != nodeArr.length) {
            FatBlock newFatBlock3 = newFatBlock(i, nodeArr.length - 1);
            if (nodeArr[i].getType() == 131) {
                hashMap.put(nodeArr[i], newFatBlock3);
            }
            objArray.add(newFatBlock3);
        }
        for (int i3 = 0; i3 < objArray.size(); i3++) {
            FatBlock fatBlock = (FatBlock) objArray.get(i3);
            Node node = nodeArr[fatBlock.realBlock.itsEndNodeIndex];
            int type2 = node.getType();
            if (type2 != 5 && i3 < objArray.size() - 1) {
                FatBlock fatBlock2 = (FatBlock) objArray.get(i3 + 1);
                fatBlock.addSuccessor(fatBlock2);
                fatBlock2.addPredecessor(fatBlock);
            }
            if (type2 == 7 || type2 == 6 || type2 == 5) {
                Node node2 = ((Jump) node).target;
                FatBlock fatBlock3 = (FatBlock) hashMap.get(node2);
                node2.putProp(6, fatBlock3.realBlock);
                fatBlock.addSuccessor(fatBlock3);
                fatBlock3.addPredecessor(fatBlock);
            }
        }
        Block[] blockArr = new Block[objArray.size()];
        for (int i4 = 0; i4 < objArray.size(); i4++) {
            FatBlock fatBlock4 = (FatBlock) objArray.get(i4);
            Block block = fatBlock4.realBlock;
            block.itsSuccessors = fatBlock4.getSuccessors();
            block.itsPredecessors = fatBlock4.getPredecessors();
            block.itsBlockID = i4;
            blockArr[i4] = block;
        }
        return blockArr;
    }

    private boolean doReachedUseDataFlow() {
        this.itsLiveOnExitSet.clear();
        if (this.itsSuccessors != null) {
            for (int i = 0; i < this.itsSuccessors.length; i++) {
                this.itsLiveOnExitSet.or(this.itsSuccessors[i].itsLiveOnEntrySet);
            }
        }
        return updateEntrySet(this.itsLiveOnEntrySet, this.itsLiveOnExitSet, this.itsUseBeforeDefSet, this.itsNotDefSet);
    }

    private boolean doTypeFlow(OptFunctionNode optFunctionNode, Node[] nodeArr, int[] iArr) {
        boolean z = false;
        for (int i = this.itsStartNodeIndex; i <= this.itsEndNodeIndex; i++) {
            Node node = nodeArr[i];
            z = z;
            if (node != null) {
                z |= findDefPoints(optFunctionNode, node, iArr);
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b8, code lost:
        if (r5.fnode.getParamAndVarConst()[r0] == false) goto L_0x00bb;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean findDefPoints(org.mozilla.javascript.optimizer.OptFunctionNode r5, org.mozilla.javascript.Node r6, int[] r7) {
        /*
            r0 = r6
            org.mozilla.javascript.Node r0 = r0.getFirstChild()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000b:
            r0 = r9
            if (r0 == 0) goto L_0x0026
            r0 = r10
            r1 = r5
            r2 = r9
            r3 = r7
            boolean r1 = findDefPoints(r1, r2, r3)
            r0 = r0 | r1
            r10 = r0
            r0 = r9
            org.mozilla.javascript.Node r0 = r0.getNext()
            r9 = r0
            goto L_0x000b
        L_0x0026:
            r0 = r6
            int r0 = r0.getType()
            r11 = r0
            r0 = r11
            r1 = 56
            if (r0 == r1) goto L_0x008f
            r0 = r11
            r1 = 156(0x9c, float:2.19E-43)
            if (r0 == r1) goto L_0x008f
            r0 = r11
            switch(r0) {
                case 106: goto L_0x005b;
                case 107: goto L_0x005b;
                default: goto L_0x0054;
            }
        L_0x0054:
            r0 = r10
            r12 = r0
            goto L_0x00c8
        L_0x005b:
            r0 = r10
            r12 = r0
            r0 = r8
            int r0 = r0.getType()
            r1 = 55
            if (r0 != r1) goto L_0x00c8
            r0 = r5
            r1 = r8
            int r0 = r0.getVarIndex(r1)
            r11 = r0
            r0 = r10
            r12 = r0
            r0 = r5
            org.mozilla.javascript.ast.FunctionNode r0 = r0.fnode
            boolean[] r0 = r0.getParamAndVarConst()
            r1 = r11
            r0 = r0[r1]
            if (r0 != 0) goto L_0x00c8
            r0 = r7
            r1 = r11
            r2 = 1
            boolean r0 = assignType(r0, r1, r2)
            r1 = r10
            r0 = r0 | r1
            r12 = r0
            goto L_0x00c8
        L_0x008f:
            r0 = r5
            r1 = r8
            org.mozilla.javascript.Node r1 = r1.getNext()
            r2 = r7
            int r0 = findExpressionType(r0, r1, r2)
            r11 = r0
            r0 = r5
            r1 = r6
            int r0 = r0.getVarIndex(r1)
            r13 = r0
            r0 = r6
            int r0 = r0.getType()
            r1 = 56
            if (r0 != r1) goto L_0x00bb
            r0 = r10
            r12 = r0
            r0 = r5
            org.mozilla.javascript.ast.FunctionNode r0 = r0.fnode
            boolean[] r0 = r0.getParamAndVarConst()
            r1 = r13
            r0 = r0[r1]
            if (r0 != 0) goto L_0x00c8
        L_0x00bb:
            r0 = r10
            r1 = r7
            r2 = r13
            r3 = r11
            boolean r1 = assignType(r1, r2, r3)
            r0 = r0 | r1
            r12 = r0
        L_0x00c8:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.Block.findDefPoints(org.mozilla.javascript.optimizer.OptFunctionNode, org.mozilla.javascript.Node, int[]):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int findExpressionType(OptFunctionNode optFunctionNode, Node node, int[] iArr) {
        int type = node.getType();
        switch (type) {
            case 8:
                break;
            case 9:
            case 10:
            case 11:
            case 18:
            case 19:
            case 20:
            case 22:
            case 23:
            case 24:
            case 25:
            case 27:
            case 28:
            case 29:
                return 1;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 26:
            case 31:
                return 3;
            case 21:
                Node firstChild = node.getFirstChild();
                return findExpressionType(optFunctionNode, firstChild.getNext(), iArr) | findExpressionType(optFunctionNode, firstChild, iArr);
            case 30:
                return 3;
            case 32:
                return 3;
            case 33:
                return 3;
            default:
                switch (type) {
                    case 35:
                    case 37:
                        break;
                    case 36:
                    case 39:
                    case 43:
                        return 3;
                    case 38:
                        return 3;
                    case 40:
                        return 1;
                    case 41:
                        return 3;
                    case 42:
                    case 48:
                        return 3;
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                        return 3;
                    default:
                        switch (type) {
                            case 52:
                            case 53:
                                return 3;
                            default:
                                switch (type) {
                                    case 55:
                                        return iArr[optFunctionNode.getVarIndex(node)];
                                    case 56:
                                        break;
                                    default:
                                        switch (type) {
                                            case 65:
                                            case 66:
                                                return 3;
                                            default:
                                                switch (type) {
                                                    case 69:
                                                        return 3;
                                                    case 70:
                                                        return 3;
                                                    default:
                                                        switch (type) {
                                                            case 104:
                                                            case 105:
                                                                Node firstChild2 = node.getFirstChild();
                                                                return findExpressionType(optFunctionNode, firstChild2.getNext(), iArr) | findExpressionType(optFunctionNode, firstChild2, iArr);
                                                            case 106:
                                                            case 107:
                                                                return 1;
                                                            default:
                                                                switch (type) {
                                                                    case 156:
                                                                        break;
                                                                    case 157:
                                                                        return 3;
                                                                    default:
                                                                        switch (type) {
                                                                            case 89:
                                                                                break;
                                                                            case 102:
                                                                                Node next = node.getFirstChild().getNext();
                                                                                Node next2 = next.getNext();
                                                                                return findExpressionType(optFunctionNode, next2, iArr) | findExpressionType(optFunctionNode, next, iArr);
                                                                            case 126:
                                                                                return 3;
                                                                            case 137:
                                                                                return 3;
                                                                            default:
                                                                                return 3;
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
        return findExpressionType(optFunctionNode, node.getLastChild(), iArr);
    }

    private void initLiveOnEntrySets(OptFunctionNode optFunctionNode, Node[] nodeArr) {
        int varCount = optFunctionNode.getVarCount();
        this.itsUseBeforeDefSet = new BitSet(varCount);
        this.itsNotDefSet = new BitSet(varCount);
        this.itsLiveOnEntrySet = new BitSet(varCount);
        this.itsLiveOnExitSet = new BitSet(varCount);
        for (int i = this.itsStartNodeIndex; i <= this.itsEndNodeIndex; i++) {
            lookForVariableAccess(optFunctionNode, nodeArr[i]);
        }
        this.itsNotDefSet.flip(0, varCount);
    }

    private void lookForVariableAccess(OptFunctionNode optFunctionNode, Node node) {
        switch (node.getType()) {
            case 55:
                int varIndex = optFunctionNode.getVarIndex(node);
                if (!this.itsNotDefSet.get(varIndex)) {
                    this.itsUseBeforeDefSet.set(varIndex);
                    return;
                }
                return;
            case 56:
            case 156:
                lookForVariableAccess(optFunctionNode, node.getFirstChild().getNext());
                this.itsNotDefSet.set(optFunctionNode.getVarIndex(node));
                return;
            case 106:
            case 107:
                Node firstChild = node.getFirstChild();
                if (firstChild.getType() == 55) {
                    int varIndex2 = optFunctionNode.getVarIndex(firstChild);
                    if (!this.itsNotDefSet.get(varIndex2)) {
                        this.itsUseBeforeDefSet.set(varIndex2);
                    }
                    this.itsNotDefSet.set(varIndex2);
                    return;
                }
                lookForVariableAccess(optFunctionNode, firstChild);
                return;
            case 137:
                int indexForNameNode = optFunctionNode.fnode.getIndexForNameNode(node);
                if (indexForNameNode > -1 && !this.itsNotDefSet.get(indexForNameNode)) {
                    this.itsUseBeforeDefSet.set(indexForNameNode);
                    return;
                }
                return;
            default:
                for (Node firstChild2 = node.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNext()) {
                    lookForVariableAccess(optFunctionNode, firstChild2);
                }
                return;
        }
    }

    private void markAnyTypeVariables(int[] iArr) {
        for (int i = 0; i != iArr.length; i++) {
            if (this.itsLiveOnEntrySet.get(i)) {
                assignType(iArr, i, 3);
            }
        }
    }

    private static FatBlock newFatBlock(int i, int i2) {
        FatBlock fatBlock = new FatBlock();
        fatBlock.realBlock = new Block(i, i2);
        return fatBlock;
    }

    private void printLiveOnEntrySet(OptFunctionNode optFunctionNode) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (r0[r9] == false) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void reachingDefDataFlow(org.mozilla.javascript.optimizer.OptFunctionNode r4, org.mozilla.javascript.Node[] r5, org.mozilla.javascript.optimizer.Block[] r6, int[] r7) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.Block.reachingDefDataFlow(org.mozilla.javascript.optimizer.OptFunctionNode, org.mozilla.javascript.Node[], org.mozilla.javascript.optimizer.Block[], int[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void runFlowAnalyzes(OptFunctionNode optFunctionNode, Node[] nodeArr) {
        int paramCount = optFunctionNode.fnode.getParamCount();
        int paramAndVarCount = optFunctionNode.fnode.getParamAndVarCount();
        int[] iArr = new int[paramAndVarCount];
        for (int i = 0; i != paramCount; i++) {
            iArr[i] = 3;
        }
        for (int i2 = paramCount; i2 != paramAndVarCount; i2++) {
            iArr[i2] = 0;
        }
        Block[] buildBlocks = buildBlocks(nodeArr);
        reachingDefDataFlow(optFunctionNode, nodeArr, buildBlocks, iArr);
        typeFlow(optFunctionNode, nodeArr, buildBlocks, iArr);
        while (paramCount != paramAndVarCount) {
            if (iArr[paramCount] == 1) {
                optFunctionNode.setIsNumberVar(paramCount);
            }
            paramCount++;
        }
    }

    private static String toString(Block[] blockArr, Node[] nodeArr) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0[r11] == false) goto L_0x002b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void typeFlow(org.mozilla.javascript.optimizer.OptFunctionNode r5, org.mozilla.javascript.Node[] r6, org.mozilla.javascript.optimizer.Block[] r7, int[] r8) {
        /*
            r0 = r7
            int r0 = r0.length
            boolean[] r0 = new boolean[r0]
            r9 = r0
            r0 = r7
            int r0 = r0.length
            boolean[] r0 = new boolean[r0]
            r10 = r0
            r0 = r9
            r1 = 0
            r2 = 1
            r0[r1] = r2
        L_0x0011:
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0017:
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002b
            r0 = r12
            r13 = r0
            r0 = r10
            r1 = r11
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0096
        L_0x002b:
            r0 = r10
            r1 = r11
            r2 = 1
            r0[r1] = r2
            r0 = r9
            r1 = r11
            r2 = 0
            r0[r1] = r2
            r0 = r12
            r13 = r0
            r0 = r7
            r1 = r11
            r0 = r0[r1]
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.doTypeFlow(r1, r2, r3)
            if (r0 == 0) goto L_0x0096
            r0 = r7
            r1 = r11
            r0 = r0[r1]
            org.mozilla.javascript.optimizer.Block[] r0 = r0.itsSuccessors
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0096
            r0 = 0
            r13 = r0
        L_0x005d:
            r0 = r13
            r1 = r14
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0092
            r0 = r14
            r1 = r13
            r0 = r0[r1]
            int r0 = r0.itsBlockID
            r15 = r0
            r0 = r9
            r1 = r15
            r2 = 1
            r0[r1] = r2
            r0 = r15
            r1 = r11
            if (r0 >= r1) goto L_0x0082
            r0 = 1
            r15 = r0
            goto L_0x0085
        L_0x0082:
            r0 = 0
            r15 = r0
        L_0x0085:
            r0 = r12
            r1 = r15
            r0 = r0 | r1
            r12 = r0
            int r13 = r13 + 1
            goto L_0x005d
        L_0x0092:
            r0 = r12
            r13 = r0
        L_0x0096:
            r0 = r11
            r1 = r7
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            if (r0 != r1) goto L_0x00a8
            r0 = r13
            if (r0 == 0) goto L_0x00a7
            goto L_0x0011
        L_0x00a7:
            return
        L_0x00a8:
            int r11 = r11 + 1
            r0 = r13
            r12 = r0
            goto L_0x0017
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.Block.typeFlow(org.mozilla.javascript.optimizer.OptFunctionNode, org.mozilla.javascript.Node[], org.mozilla.javascript.optimizer.Block[], int[]):void");
    }

    private boolean updateEntrySet(BitSet bitSet, BitSet bitSet2, BitSet bitSet3, BitSet bitSet4) {
        int cardinality = bitSet.cardinality();
        bitSet.or(bitSet2);
        bitSet.and(bitSet4);
        bitSet.or(bitSet3);
        return bitSet.cardinality() != cardinality;
    }
}
