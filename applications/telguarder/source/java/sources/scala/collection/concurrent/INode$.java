package scala.collection.concurrent;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/INode$.class */
public final class INode$ {
    public static final INode$ MODULE$ = null;
    private final Object KEY_PRESENT = new Object();
    private final Object KEY_ABSENT = new Object();

    static {
        new INode$();
    }

    private INode$() {
        MODULE$ = this;
    }

    public Object KEY_ABSENT() {
        return this.KEY_ABSENT;
    }

    public Object KEY_PRESENT() {
        return this.KEY_PRESENT;
    }

    public <K, V> INode<K, V> newRootNode() {
        Gen gen = new Gen();
        return new INode<>(new CNode(0, new BasicNode[0], gen), gen);
    }
}
