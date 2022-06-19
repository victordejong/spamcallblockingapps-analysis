package scala.runtime;

import scala.collection.IndexedSeq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000113A!\u0001\u0002\u0003\u000f\ty1+Z9DQ\u0006\u00148+Z9vK:\u001cWM\u0003\u0002\u0004\t\u00059!/\u001e8uS6,'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0019\u0001\u0001\u0003\t\u0011\u0005%qQ\"\u0001\u0006\u000b\u0005-a\u0011\u0001\u00027b]\u001eT\u0011!D\u0001\u0005U\u00064\u0018-\u0003\u0002\u0010\u0015\t1qJ\u00196fGR\u0004\"!C\t\n\u0005IQ!\u0001D\"iCJ\u001cV-];f]\u000e,\u0007\u0002\u0003\u000b\u0001\u0005\u000b\u0007I\u0011A\u000b\u0002\u0005a\u001cX#\u0001\f\u0011\u0007]QB$D\u0001\u0019\u0015\tIB!\u0001\u0006d_2dWm\u0019;j_:L!a\u0007\r\u0003\u0015%sG-\u001a=fIN+\u0017\u000f\u0005\u0002\u001e=5\tA!\u0003\u0002 \t\t!1\t[1s\u0011!\t\u0003A!A!\u0002\u00131\u0012a\u0001=tA!)1\u0005\u0001C\u0001I\u00051A(\u001b8jiz\"\"!J\u0014\u0011\u0005\u0019\u0002Q\"\u0001\u0002\t\u000bQ\u0011\u0003\u0019\u0001\f\t\u000b%\u0002A\u0011\u0001\u0016\u0002\r1,gn\u001a;i)\u0005Y\u0003CA\u000f-\u0013\tiCAA\u0002J]RDQa\f\u0001\u0005\u0002A\naa\u00195be\u0006#HC\u0001\u000f2\u0011\u0015\u0011d\u00061\u0001,\u0003\u0015Ig\u000eZ3y\u0011\u0015!\u0004\u0001\"\u00016\u0003-\u0019XOY*fcV,gnY3\u0015\u0007A1\u0004\bC\u00038g\u0001\u00071&A\u0003ti\u0006\u0014H\u000fC\u0003:g\u0001\u00071&A\u0002f]\u0012DQa\u000f\u0001\u0005Bq\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002{A\u0011a(\u0011\b\u0003;}J!\u0001\u0011\u0003\u0002\rA\u0013X\rZ3g\u0013\t\u00115I\u0001\u0004TiJLgn\u001a\u0006\u0003\u0001\u0012AC\u0001A#I\u0015B\u0011QDR\u0005\u0003\u000f\u0012\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005I\u0015AG+tK\u0002\u0002&/\u001a3fM:\u001aV-]\"iCJ\u001cV-];f]\u000e,\u0017%A&\u0002\rIr\u0013'\r\u00181\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/SeqCharSequence.class */
public final class SeqCharSequence implements CharSequence {

    /* renamed from: xs */
    private final IndexedSeq<Object> f1631xs;

    public SeqCharSequence(IndexedSeq<Object> indexedSeq) {
        this.f1631xs = indexedSeq;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return BoxesRunTime.unboxToChar(m18xs().apply(i));
    }

    @Override // java.lang.CharSequence
    public int length() {
        return m18xs().length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return new SeqCharSequence(m18xs().slice(i, i2));
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return m18xs().mkString("");
    }

    /* renamed from: xs */
    public IndexedSeq<Object> m18xs() {
        return this.f1631xs;
    }
}
