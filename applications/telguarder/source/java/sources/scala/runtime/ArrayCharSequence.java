package scala.runtime;

import scala.math.package$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\r3A!\u0001\u0002\u0003\u000f\t\t\u0012I\u001d:bs\u000eC\u0017M]*fcV,gnY3\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011c\u0001\u0001\t!A\u0011\u0011BD\u0007\u0002\u0015)\u00111\u0002D\u0001\u0005Y\u0006twMC\u0001\u000e\u0003\u0011Q\u0017M^1\n\u0005=Q!AB(cU\u0016\u001cG\u000f\u0005\u0002\n#%\u0011!C\u0003\u0002\r\u0007\"\f'oU3rk\u0016t7-\u001a\u0005\t)\u0001\u0011)\u0019!C\u0001+\u0005\u0011\u0001p]\u000b\u0002-A\u0019q\u0003\u0007\u000e\u000e\u0003\u0011I!!\u0007\u0003\u0003\u000b\u0005\u0013(/Y=\u0011\u0005]Y\u0012B\u0001\u000f\u0005\u0005\u0011\u0019\u0005.\u0019:\t\u0011y\u0001!\u0011!Q\u0001\nY\t1\u0001_:!\u0011!\u0001\u0003A!A!\u0002\u0013\t\u0013!B:uCJ$\bCA\f#\u0013\t\u0019CAA\u0002J]RD\u0001\"\n\u0001\u0003\u0002\u0003\u0006I!I\u0001\u0004K:$\u0007\"B\u0014\u0001\t\u0003A\u0013A\u0002\u001fj]&$h\b\u0006\u0003*W1j\u0003C\u0001\u0016\u0001\u001b\u0005\u0011\u0001\"\u0002\u000b'\u0001\u00041\u0002\"\u0002\u0011'\u0001\u0004\t\u0003\"B\u0013'\u0001\u0004\t\u0003\"B\u0018\u0001\t\u0003\u0001\u0014A\u00027f]\u001e$\b\u000eF\u0001\"\u0011\u0015\u0011\u0004\u0001\"\u00014\u0003\u0019\u0019\u0007.\u0019:BiR\u0011!\u0004\u000e\u0005\u0006kE\u0002\r!I\u0001\u0006S:$W\r\u001f\u0005\u0006o\u0001!\t\u0001O\u0001\fgV\u00147+Z9vK:\u001cW\rF\u0002\u0011smBQA\u000f\u001cA\u0002\u0005\naa\u001d;beR\u0004\u0004\"\u0002\u001f7\u0001\u0004\t\u0013\u0001B3oIBBQA\u0010\u0001\u0005B}\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002\u0001B\u0011\u0011\"Q\u0005\u0003\u0005*\u0011aa\u0015;sS:<\u0007")
/* loaded from: classes3-dex2jar.jar:scala/runtime/ArrayCharSequence.class */
public final class ArrayCharSequence implements CharSequence {
    private final int end;
    private final int start;

    /* renamed from: xs */
    private final char[] f1629xs;

    public ArrayCharSequence(char[] cArr, int i, int i2) {
        this.f1629xs = cArr;
        this.start = i;
        this.end = i2;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        if (i < 0 || i >= length()) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        return m28xs()[this.start + i];
    }

    @Override // java.lang.CharSequence
    public int length() {
        return package$.MODULE$.max(0, this.end - this.start);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        ArrayCharSequence arrayCharSequence;
        if (i >= 0) {
            if (i2 > length()) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i2 <= i) {
                arrayCharSequence = new ArrayCharSequence(m28xs(), 0, 0);
            } else {
                int i3 = this.start + i;
                arrayCharSequence = new ArrayCharSequence(m28xs(), i3, (i2 - i) + i3);
            }
            return arrayCharSequence;
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        int max = package$.MODULE$.max(this.start, 0);
        int min = package$.MODULE$.min(m28xs().length, length() + max);
        return max >= min ? "" : new String(m28xs(), max, min - max);
    }

    /* renamed from: xs */
    public char[] m28xs() {
        return this.f1629xs;
    }
}
