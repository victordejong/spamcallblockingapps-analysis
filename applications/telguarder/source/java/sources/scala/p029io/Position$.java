package scala.p029io;

import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
/* renamed from: scala.io.Position$ */
/* loaded from: classes3-dex2jar.jar:scala/io/Position$.class */
public final class Position$ extends Position {
    public static final Position$ MODULE$ = null;

    static {
        new Position$();
    }

    private Position$() {
        MODULE$ = this;
    }

    @Override // scala.p029io.Position
    public void checkInput(int i, int i2) {
        if (i >= 0) {
            if (i == 0 && i2 != 0) {
                throw new IllegalArgumentException(new StringBuilder().append(i).append((Object) ",").append(BoxesRunTime.boxToInteger(i2)).append((Object) " not allowed").toString());
            }
            if (i2 < 0) {
                throw new IllegalArgumentException(new StringBuilder().append(i).append((Object) ",").append(BoxesRunTime.boxToInteger(i2)).append((Object) " not allowed").toString());
            }
            return;
        }
        throw new IllegalArgumentException(new StringBuilder().append(i).append((Object) " < 0").toString());
    }
}
