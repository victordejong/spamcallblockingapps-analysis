package scala.util.control;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0007O_N#\u0018mY6Ue\u0006\u001cWM\u0003\u0002\u0004\t\u000591m\u001c8ue>d'BA\u0003\u0007\u0003\u0011)H/\u001b7\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001a\u0005\u0002\u0001\u0015A\u00111b\u0004\b\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\tq\u0001]1dW\u0006<W-\u0003\u0002\u0011#\tIA\u000b\u001b:po\u0006\u0014G.\u001a\u0006\u0003\u001d\u0019AQa\u0005\u0001\u0005\u0002Q\ta\u0001J5oSR$C#A\u000b\u0011\u000511\u0012BA\f\u0007\u0005\u0011)f.\u001b;\t\u000be\u0001A\u0011\t\u000e\u0002!\u0019LG\u000e\\%o'R\f7m\u001b+sC\u000e,G#\u0001\u0006\t\u0017q\u0001\u0001\u0013aA\u0001\u0002\u0013%Q$J\u0001\u0017gV\u0004XM\u001d\u0013gS2d\u0017J\\*uC\u000e\\GK]1dKR\ta\u0004\u0005\u0002 I5\t\u0001E\u0003\u0002\"E\u0005!A.\u00198h\u0015\u0005\u0019\u0013\u0001\u00026bm\u0006L!\u0001\u0005\u0011\n\u0005e!s!B\u0014\u0003\u0011\u0003A\u0013\u0001\u0004(p'R\f7m\u001b+sC\u000e,\u0007CA\u0015+\u001b\u0005\u0011a!B\u0001\u0003\u0011\u0003Y3c\u0001\u0016-_A\u0011A\"L\u0005\u0003]\u0019\u0011a!\u00118z%\u00164\u0007C\u0001\u00071\u0013\t\tdA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u00034U\u0011\u0005A'\u0001\u0004=S:LGO\u0010\u000b\u0002Q!)aG\u000bC\u0003o\u0005ian\\*vaB\u0014Xm]:j_:,\u0012\u0001\u000f\t\u0003\u0019eJ!A\u000f\u0004\u0003\u000f\t{w\u000e\\3b]\"9AH\u000ba\u0001\n\u001b9\u0014AD0o_N+\b\u000f\u001d:fgNLwN\u001c\u0005\b})\u0002\r\u0011\"\u0004@\u0003Iyfn\\*vaB\u0014Xm]:j_:|F%Z9\u0015\u0005U\u0001\u0005bB!>\u0003\u0003\u0005\r\u0001O\u0001\u0004q\u0012\n\u0004BB\"+A\u00036\u0001(A\b`]>\u001cV\u000f\u001d9sKN\u001c\u0018n\u001c8!\u0011\u001d)%&!A\u0005\n\u0019\u000b1B]3bIJ+7o\u001c7wKR\tq\t\u0005\u0002 \u0011&\u0011\u0011\n\t\u0002\u0007\u001f\nTWm\u0019;")
/* loaded from: classes3-dex2jar.jar:scala/util/control/NoStackTrace.class */
public interface NoStackTrace {

    /* renamed from: scala.util.control.NoStackTrace$class */
    /* loaded from: classes3-dex2jar.jar:scala/util/control/NoStackTrace$class.class */
    public abstract class Cclass {
        public static void $init$(NoStackTrace noStackTrace) {
        }

        public static Throwable fillInStackTrace(NoStackTrace noStackTrace) {
            return NoStackTrace$.MODULE$.noSuppression() ? noStackTrace.scala$util$control$NoStackTrace$$super$fillInStackTrace() : (Throwable) noStackTrace;
        }
    }

    Throwable fillInStackTrace();

    /* synthetic */ Throwable scala$util$control$NoStackTrace$$super$fillInStackTrace();
}
