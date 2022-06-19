package scala.collection.generic;

import scala.Predef$;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001i2Q!\u0001\u0002\u0001\t!\u0011Qb\u00157jG\u0016Le\u000e^3sm\u0006d'BA\u0002\u0005\u0003\u001d9WM\\3sS\u000eT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\ta!\u0003\u0002\r\r\t1\u0011I\\=SK\u001aD\u0001B\u0004\u0001\u0003\u0006\u0004%\t\u0001E\u0001\u0005MJ|Wn\u0001\u0001\u0016\u0003E\u0001\"A\u0003\n\n\u0005M1!aA%oi\"AQ\u0003\u0001B\u0001B\u0003%\u0011#A\u0003ge>l\u0007\u0005\u0003\u0005\u0018\u0001\t\u0015\r\u0011\"\u0001\u0011\u0003\u0015)h\u000e^5m\u0011!I\u0002A!A!\u0002\u0013\t\u0012AB;oi&d\u0007\u0005C\u0003\u001c\u0001\u0011%A$\u0001\u0004=S:LGO\u0010\u000b\u0004;}\u0001\u0003C\u0001\u0010\u0001\u001b\u0005\u0011\u0001\"\u0002\b\u001b\u0001\u0004\t\u0002\"B\f\u001b\u0001\u0004\t\u0002\"\u0002\u0012\u0001\t\u0003\u0001\u0012!B<jIRD\u0007\"\u0002\u0013\u0001\t\u0003)\u0013a\u0003:fG\u0006d7-\u001e7bi\u0016$2!\b\u0014)\u0011\u001593\u00051\u0001\u0012\u0003\u0015yfM]8n\u0011\u0015I3\u00051\u0001\u0012\u0003\u0019yVO\u001c;jY\")A\u0005\u0001C\u0001WQ\u0011Q\u0004\f\u0005\u0006[)\u0002\r!H\u0001\tS:$XM\u001d<bY\u001e)qF\u0001E\u0001a\u0005i1\u000b\\5dK&sG/\u001a:wC2\u0004\"AH\u0019\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001a\u0014\u0005EJ\u0001\"B\u000e2\t\u0003!D#\u0001\u0019\t\u000bY\nD\u0011A\u001c\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0007uA\u0014\bC\u0003\u000fk\u0001\u0007\u0011\u0003C\u0003\u0018k\u0001\u0007\u0011\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/SliceInterval.class */
public class SliceInterval {
    private final int from;
    private final int until;

    public SliceInterval(int i, int i2) {
        this.from = i;
        this.until = i2;
    }

    public static SliceInterval apply(int i, int i2) {
        return SliceInterval$.MODULE$.apply(i, i2);
    }

    public int from() {
        return this.from;
    }

    public SliceInterval recalculate(int i, int i2) {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        int max$extension = richInt$.max$extension(i, 0);
        int min = package$.MODULE$.min(i2 - max$extension, width());
        int from = from() + max$extension;
        return min <= 0 ? new SliceInterval(from(), from()) : new SliceInterval(from, min + from);
    }

    public SliceInterval recalculate(SliceInterval sliceInterval) {
        return recalculate(sliceInterval.from(), sliceInterval.until());
    }

    public int until() {
        return this.until;
    }

    public int width() {
        return until() - from();
    }
}
