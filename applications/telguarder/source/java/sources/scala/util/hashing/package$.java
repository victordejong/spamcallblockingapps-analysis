package scala.util.hashing;
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public int byteswap32(int i) {
        return Integer.reverseBytes(i * (-1640532531)) * (-1640532531);
    }

    public long byteswap64(long j) {
        return Long.reverseBytes(j * (-7046033566014671411L)) * (-7046033566014671411L);
    }
}
