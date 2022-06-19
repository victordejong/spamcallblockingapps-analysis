package scala.collection.concurrent;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/CNode$.class */
public final class CNode$ {
    public static final CNode$ MODULE$ = null;

    static {
        new CNode$();
    }

    private CNode$() {
        MODULE$ = this;
    }

    public <K, V> MainNode<K, V> dual(SNode<K, V> sNode, int i, SNode<K, V> sNode2, int i2, int i3, Gen gen) {
        CNode cNode;
        if (i3 < 35) {
            int i4 = (i >>> i3) & 31;
            int i5 = (i2 >>> i3) & 31;
            int i6 = (1 << i4) | (1 << i5);
            if (i4 == i5) {
                INode iNode = new INode(gen);
                iNode.mainnode = dual(sNode, i, sNode2, i2, i3 + 5, gen);
                cNode = new CNode(i6, new BasicNode[]{iNode}, gen);
            } else {
                cNode = i4 < i5 ? new CNode(i6, new BasicNode[]{sNode, sNode2}, gen) : new CNode(i6, new BasicNode[]{sNode2, sNode}, gen);
            }
        } else {
            cNode = new LNode(sNode.m179k(), sNode.m178v(), sNode2.m179k(), sNode2.m178v());
        }
        return cNode;
    }
}
