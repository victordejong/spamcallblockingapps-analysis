package scala.ref;

import java.lang.ref.Reference;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001a3A!\u0001\u0002\u0001\u000f\tq!+\u001a4fe\u0016t7-Z)vKV,'BA\u0002\u0005\u0003\r\u0011XM\u001a\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002=\ta\u0001P5oSRtD#\u0001\t\u0011\u0007E\u0001!#D\u0001\u0003!\t\u0019B\u0003\u0004\u0001\u0005\rU\u0001AQ1\u0001\u0017\u0005\u0005!\u0016CA\f\n!\tQ\u0001$\u0003\u0002\u001a\t\t9aj\u001c;iS:<\u0007\u0002C\u000e\u0001\u0005\u0004%\tA\u0001\u000f\u0002\u0015UtG-\u001a:ms&tw-F\u0001\u001ea\tqr\u0005E\u0002 K\u0019j\u0011\u0001\t\u0006\u0003\u0007\u0005R!AI\u0012\u0002\t1\fgn\u001a\u0006\u0002I\u0005!!.\u0019<b\u0013\t\t\u0001\u0005\u0005\u0002\u0014O\u0011I\u0001&KA\u0001\u0002\u0003\u0015\ta\f\u0002\u0004?\u0012\n\u0004B\u0002\u0016\u0001A\u0003%1&A\u0006v]\u0012,'\u000f\\=j]\u001e\u0004\u0003G\u0001\u0017/!\ryR%\f\t\u0003'9\"\u0011\u0002K\u0015\u0002\u0002\u0003\u0005)\u0011A\u0018\u0012\u0005]\u0011\u0002\"B\u0019\u0001\t\u0003\u0012\u0014\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0003M\u0002\"\u0001N\u001b\u000e\u0003\u0005J!AN\u0011\u0003\rM#(/\u001b8h\u0011\u0015A\u0004\u0001\"\u0005:\u0003\u001d9&/\u00199qKJ$\"A\u000f!\u0011\u0007)YT(\u0003\u0002=\t\t1q\n\u001d;j_:\u00042!\u0005 \u0013\u0013\ty$AA\u0005SK\u001a,'/\u001a8dK\")\u0011i\u000ea\u0001\u0005\u0006!!N]3ga\t\u0019e\tE\u0002 \t\u0016K!a\u0010\u0011\u0011\u0005M1E!C$A\u0003\u0003\u0005\tQ!\u0001I\u0005\ryFEM\t\u0003/%\u0003\"A\u0003&\n\u0005-#!aA!os\")Q\n\u0001C\u0001\u001d\u0006!\u0001o\u001c7m+\u0005Q\u0004\"\u0002)\u0001\t\u0003q\u0015A\u0002:f[>4X\rC\u0003Q\u0001\u0011\u0005!\u000b\u0006\u0002;'\")A+\u0015a\u0001+\u00069A/[7f_V$\bC\u0001\u0006W\u0013\t9FA\u0001\u0003M_:<\u0007")
/* loaded from: classes3-dex2jar.jar:scala/ref/ReferenceQueue.class */
public class ReferenceQueue<T> {
    private final java.lang.ref.ReferenceQueue<? extends T> underlying = new java.lang.ref.ReferenceQueue<>();

    public Option<Reference<T>> Wrapper(Reference<?> reference) {
        return reference == null ? None$.MODULE$ : new Some(((ReferenceWithWrapper) reference).wrapper());
    }

    public Option<Reference<T>> poll() {
        return Wrapper(underlying().poll());
    }

    public Option<Reference<T>> remove() {
        return Wrapper(underlying().remove());
    }

    public Option<Reference<T>> remove(long j) {
        return Wrapper(underlying().remove(j));
    }

    public String toString() {
        return underlying().toString();
    }

    public java.lang.ref.ReferenceQueue<? extends T> underlying() {
        return this.underlying;
    }
}
