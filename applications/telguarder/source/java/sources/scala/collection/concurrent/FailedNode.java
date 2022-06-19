package scala.collection.concurrent;

import scala.Predef$;
import scala.collection.immutable.StringOps;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001}2Q!\u0001\u0002\u0003\u0005!\u0011!BR1jY\u0016$gj\u001c3f\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b+\rI\u0001\u0003H\n\u0003\u0001)\u0001Ba\u0003\u0007\u000f75\t!!\u0003\u0002\u000e\u0005\tAQ*Y5o\u001d>$W\r\u0005\u0002\u0010!1\u0001A!B\t\u0001\u0005\u0004\u0019\"!A&\u0004\u0001E\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\bCA\b\u001d\t\u0015i\u0002A1\u0001\u0014\u0005\u00051\u0006\u0002C\u0010\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0006\u0002\u0003ADQ!\t\u0001\u0005\u0002\t\na\u0001P5oSRtDCA\u0012%!\u0011Y\u0001AD\u000e\t\u000b}\u0001\u0003\u0019\u0001\u0006\t\u000b\u0019\u0002A\u0011A\u0014\u0002\rM$(/\u001b8h)\t!\u0002\u0006C\u0003*K\u0001\u0007!&A\u0002mKZ\u0004\"!F\u0016\n\u000512!aA%oi\")a\u0006\u0001C\u0001_\u0005Q1-Y2iK\u0012\u001c\u0016N_3\u0015\u0005)\u0002\u0004\"B\u0019.\u0001\u0004\u0011\u0014AA2u!\t)2'\u0003\u00025\r\t1\u0011I\\=SK\u001aDQA\u000e\u0001\u0005B]\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002qA\u0011\u0011\b\u0010\b\u0003+iJ!a\u000f\u0004\u0002\rA\u0013X\rZ3g\u0013\tidH\u0001\u0004TiJLgn\u001a\u0006\u0003w\u0019\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/FailedNode.class */
public final class FailedNode<K, V> extends MainNode<K, V> {

    /* renamed from: p */
    private final MainNode<K, V> f1526p;

    public FailedNode(MainNode<K, V> mainNode) {
        this.f1526p = mainNode;
        WRITE_PREV(mainNode);
    }

    @Override // scala.collection.concurrent.MainNode
    public int cachedSize(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // scala.collection.concurrent.BasicNode
    public Nothing$ string(int i) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps("FailedNode(%s)").format(Predef$.MODULE$.genericWrapArray(new Object[]{this.f1526p}));
    }
}
