package scala.reflect;

import java.lang.reflect.AccessibleObject;
@ScalaSignature(bytes = "\u0006\u0001!<Q!\u0001\u0002\t\u0002\u001d\tq\u0001]1dW\u0006<WM\u0003\u0002\u0004\t\u00059!/\u001a4mK\u000e$(\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011\u0001\"C\u0007\u0002\u0005\u0019)!B\u0001E\u0001\u0017\t9\u0001/Y2lC\u001e,7CA\u0005\r!\tia\"D\u0001\u0005\u0013\tyAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006#%!\tAE\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u001d)A\u0001F\u0005\u0001+\ti1\t\\1tg6\u000bg.\u001b4fgR,\"AF\u000e\u0011\u0007!9\u0012$\u0003\u0002\u0019\u0005\tA1\t\\1tgR\u000bw\r\u0005\u0002\u001b71\u0001A!\u0002\u000f\u0014\u0005\u0004i\"!\u0001+\u0012\u0005y\t\u0003CA\u0007 \u0013\t\u0001CAA\u0004O_RD\u0017N\\4\u0011\u00055\u0011\u0013BA\u0012\u0005\u0005\r\te.\u001f\u0015\u0004'\u0015Z\u0003C\u0001\u0014*\u001b\u00059#B\u0001\u0015\u0005\u0003)\tgN\\8uCRLwN\\\u0005\u0003U\u001d\u0012\u0001#[7qY&\u001c\u0017\u000e\u001e(pi\u001a{WO\u001c3\"\u00031\nAET8!\u00072\f7o]'b]&4Wm\u001d;!CZ\f\u0017\u000e\\1cY\u0016\u0004cm\u001c:!Im$VP\f\u0015\u0005'9\n4\u0007\u0005\u0002\u000e_%\u0011\u0001\u0007\u0002\u0002\u000bI\u0016\u0004(/Z2bi\u0016$\u0017%\u0001\u001a\u0002EU\u001bX\rI:dC2\fgF]3gY\u0016\u001cGOL\"mCN\u001cH+Y4!S:\u001cH/Z1eC\u0005!\u0014A\u0002\u001a/cAr\u0003\u0007C\u00047\u0013\t\u0007I\u0011A\u001c\u0002\u001b\rc\u0017m]:NC:Lg-Z:u+\u0005AdB\u0001\u0005:\u0013\tQ$!\u0001\u000bDY\u0006\u001c8/T1oS\u001a,7\u000f\u001e$bGR|'/\u001f\u0015\u0005k9\n4\u0007\u0003\u0004>\u0013\u0001\u0006I\u0001O\u0001\u000f\u00072\f7o]'b]&4Wm\u001d;!\u0011\u001dy\u0014B1A\u0005\u0002\u0001\u000b\u0001\"T1oS\u001a,7\u000f^\u000b\u0002\u0003:\u0011\u0001BQ\u0005\u0003\u0007\n\tq\"T1oS\u001a,7\u000f\u001e$bGR|'/\u001f\u0005\u0007\u000b&\u0001\u000b\u0011B!\u0002\u00135\u000bg.\u001b4fgR\u0004\u0003\"B$\n\t\u0003A\u0015\u0001C2mCN\u001cH+Y4\u0016\u0005%cEC\u0001&N!\rAqc\u0013\t\u000351#Q\u0001\b$C\u0002uAQA\u0014$A\u0004)\u000bAa\u0019;bO\")\u0001+\u0003C\u0001#\u0006\u0001RM\\:ve\u0016\f5mY3tg&\u0014G.Z\u000b\u0003%R#\"aU0\u0011\u0005i!F!\u0002\u000fP\u0005\u0004)\u0016C\u0001\u0010W!\t9V,D\u0001Y\u0015\t\u0019\u0011L\u0003\u0002[7\u0006!A.\u00198h\u0015\u0005a\u0016\u0001\u00026bm\u0006L!A\u0018-\u0003!\u0005\u001b7-Z:tS\ndWm\u00142kK\u000e$\b\"\u00021P\u0001\u0004\u0019\u0016!A7\t\u000f\tL!\u0011\"\u0001\u0005G\u0006\u0019R.\u0019;fe&\fG.\u001b>f\u00072\f7o\u001d+bOV\u0011Am\u001a\u000b\u0002KB\u0019\u0001b\u00064\u0011\u0005i9G!\u0002\u000fb\u0005\u0004i\u0002")
/* renamed from: scala.reflect.package */
/* loaded from: classes3-dex2jar.jar:scala/reflect/package.class */
public final class Cpackage {
    public static ClassManifestFactory$ ClassManifest() {
        return package$.MODULE$.ClassManifest();
    }

    public static ManifestFactory$ Manifest() {
        return package$.MODULE$.Manifest();
    }

    public static <T> ClassTag<T> classTag(ClassTag<T> classTag) {
        return package$.MODULE$.classTag(classTag);
    }

    public static <T extends AccessibleObject> T ensureAccessible(T t) {
        return (T) package$.MODULE$.ensureAccessible(t);
    }
}
