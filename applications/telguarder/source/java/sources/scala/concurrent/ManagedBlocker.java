package scala.concurrent;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001u1\u0001\"\u0001\u0002\u0011\u0002G\u0005AA\u0002\u0002\u000f\u001b\u0006t\u0017mZ3e\u00052|7m[3s\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011!B\u0001\u0006g\u000e\fG.Y\n\u0003\u0001\u001d\u0001\"\u0001C\u0005\u000e\u0003\u0011I!A\u0003\u0003\u0003\r\u0005s\u0017PU3g\u0011\u0015a\u0001A\"\u0001\u000f\u0003\u0015\u0011Gn\\2l\u0007\u0001!\u0012a\u0004\t\u0003\u0011AI!!\u0005\u0003\u0003\u000f\t{w\u000e\\3b]\")1\u0003\u0001D\u0001)\u0005a\u0011n\u001d*fY\u0016\f7/\u00192mKV\tq\u0002\u000b\u0003\u0001-eY\u0002C\u0001\u0005\u0018\u0013\tABA\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0013AG\u0001\u0018+N,\u0007\u0005\u00192m_\u000e\\\u0017N\\4aA%t7\u000f^3bI:\n\u0013\u0001H\u0001\u0007e9\n\u0004G\f\u0019")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/ManagedBlocker.class */
public interface ManagedBlocker {
    boolean block();

    boolean isReleasable();
}
