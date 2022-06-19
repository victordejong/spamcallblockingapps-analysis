package scala.collection.parallel.mutable;

import scala.Predef$;
import scala.reflect.ScalaSignature;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001A2\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005!A\u0003\u0002\r'&TX-T1q+RLGn\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\b\u0011\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003%\tQa]2bY\u0006\u001c\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0005\n\u00059A!AB!osJ+g\rC\u0003\u0011\u0001\u0011\u0005!#\u0001\u0004%S:LG\u000fJ\u0002\u0001)\u0005\u0019\u0002C\u0001\u0007\u0015\u0013\t)\u0002B\u0001\u0003V]&$\b\"B\f\u0001\t#A\u0012\u0001D2bY\u000etU/\\#mK6\u001cH#B\r\u001d=\u0001\u0012\u0003C\u0001\u0007\u001b\u0013\tY\u0002BA\u0002J]RDQ!\b\fA\u0002e\tAA\u001a:p[\")qD\u0006a\u00013\u0005)QO\u001c;jY\")\u0011E\u0006a\u00013\u0005YA/\u00192mK2+gn\u001a;i\u0011\u0015\u0019c\u00031\u0001\u001a\u0003E\u0019\u0018N_3NCB\u0014UoY6fiNK'0\u001a\u0005\u0006K\u00011\tBJ\u0001\u000bG>,h\u000e^#mK6\u001cHcA\r(Q!)Q\u0004\na\u00013!)q\u0004\na\u00013!)!\u0006\u0001D\tW\u0005\u00012m\\;oi\n+8m[3u'&TXm\u001d\u000b\u000431r\u0003\"B\u0017*\u0001\u0004I\u0012A\u00034s_6\u0014UoY6fi\")q&\u000ba\u00013\u0005YQO\u001c;jY\n+8m[3u\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/SizeMapUtils.class */
public interface SizeMapUtils {

    /* renamed from: scala.collection.parallel.mutable.SizeMapUtils$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/SizeMapUtils$class.class */
    public abstract class Cclass {
        public static void $init$(SizeMapUtils sizeMapUtils) {
        }

        public static int calcNumElems(SizeMapUtils sizeMapUtils, int i, int i2, int i3, int i4) {
            int i5;
            int i6 = i / i4;
            int i7 = i2 / i4;
            if (i6 == i7) {
                i5 = sizeMapUtils.countElems(i, i2);
            } else {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                int i8 = i6 + 1;
                int countElems = sizeMapUtils.countElems(i, richInt$.min$extension(i8 * i4, i3));
                i5 = countElems + sizeMapUtils.countBucketSizes(i8, i7) + sizeMapUtils.countElems(i4 * i7, i2);
            }
            return i5;
        }
    }

    int calcNumElems(int i, int i2, int i3, int i4);

    int countBucketSizes(int i, int i2);

    int countElems(int i, int i2);
}
