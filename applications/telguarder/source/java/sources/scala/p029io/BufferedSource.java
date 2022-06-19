package scala.p029io;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PushbackReader;
import java.util.Objects;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Iterator$$anon$9;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ua\u0001B\u0001\u0003\u0001\u001d\u0011aBQ;gM\u0016\u0014X\rZ*pkJ\u001cWM\u0003\u0002\u0004\t\u0005\u0011\u0011n\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011C\u0001\u0001\t!\tI!\"D\u0001\u0003\u0013\tY!A\u0001\u0004T_V\u00148-\u001a\u0005\t\u001b\u0001\u0011\t\u0011)A\u0005\u001d\u0005Y\u0011N\u001c9viN#(/Z1n!\ty1#D\u0001\u0011\u0015\t\u0019\u0011CC\u0001\u0013\u0003\u0011Q\u0017M^1\n\u0005Q\u0001\"aC%oaV$8\u000b\u001e:fC6D\u0001B\u0006\u0001\u0003\u0002\u0003\u0006IaF\u0001\u000bEV4g-\u001a:TSj,\u0007C\u0001\r\u001a\u001b\u0005!\u0011B\u0001\u000e\u0005\u0005\rIe\u000e\u001e\u0005\t9\u0001\u0011)\u0019!C\u0002;\u0005)1m\u001c3fGV\ta\u0004\u0005\u0002\n?%\u0011\u0001E\u0001\u0002\u0006\u0007>$Wm\u0019\u0005\tE\u0001\u0011\t\u0011)A\u0005=\u000511m\u001c3fG\u0002BQ\u0001\n\u0001\u0005\u0002\u0015\na\u0001P5oSRtDc\u0001\u0014*UQ\u0011q\u0005\u000b\t\u0003\u0013\u0001AQ\u0001H\u0012A\u0004yAQ!D\u0012A\u00029AQAF\u0012A\u0002]AQ\u0001\n\u0001\u0005\u00021\"\"!L\u0018\u0015\u0005\u001dr\u0003\"\u0002\u000f,\u0001\bq\u0002\"B\u0007,\u0001\u0004q\u0001\"B\u0019\u0001\t\u0003\u0011\u0014A\u0002:fC\u0012,'\u000fF\u00014!\tyA'\u0003\u00026!\t\t\u0012J\u001c9viN#(/Z1n%\u0016\fG-\u001a:\t\u000b]\u0002A\u0011\u0001\u001d\u0002\u001d\t,hMZ3sK\u0012\u0014V-\u00193feR\t\u0011\b\u0005\u0002\u0010u%\u00111\b\u0005\u0002\u000f\u0005V4g-\u001a:fIJ+\u0017\rZ3s\u0011\u001di\u0004\u00011A\u0005\ny\n\u0011c\u00195beJ+\u0017\rZ3s\u0007J,\u0017\r^3e+\u0005y\u0004C\u0001\rA\u0013\t\tEAA\u0004C_>dW-\u00198\t\u000f\r\u0003\u0001\u0019!C\u0005\t\u0006)2\r[1s%\u0016\fG-\u001a:De\u0016\fG/\u001a3`I\u0015\fHCA#I!\tAb)\u0003\u0002H\t\t!QK\\5u\u0011\u001dI%)!AA\u0002}\n1\u0001\u001f\u00132\u0011\u0019Y\u0005\u0001)Q\u0005\u007f\u0005\u00112\r[1s%\u0016\fG-\u001a:De\u0016\fG/\u001a3!\u0011!i\u0005\u0001#b\u0001\n\u0013q\u0015AC2iCJ\u0014V-\u00193feV\t\u0011\b\u0003\u0005Q\u0001!\u0005\t\u0015)\u0003:\u0003-\u0019\u0007.\u0019:SK\u0006$WM\u001d\u0011\t\u0011I\u0003\u0001R1A\u0005BM\u000bA!\u001b;feV\tA\u000bE\u0002V1jk\u0011A\u0016\u0006\u0003/\u0012\t!bY8mY\u0016\u001cG/[8o\u0013\tIfK\u0001\u0005Ji\u0016\u0014\u0018\r^8s!\tA2,\u0003\u0002]\t\t!1\t[1s\u0011!q\u0006\u0001#A!B\u0013!\u0016!B5uKJ\u0004\u0003\"\u00021\u0001\t\u0013q\u0015A\u00043fG\u0006\u001c\u0007.\u001a3SK\u0006$WM\u001d\u0004\u0005E\u0002\u00011M\u0001\u000bCk\u001a4WM]3e\u0019&tW-\u0013;fe\u0006$xN]\n\u0004C\u0012t\u0007cA+fO&\u0011aM\u0016\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004\"\u0001[6\u000f\u0005aI\u0017B\u00016\u0005\u0003\u0019\u0001&/\u001a3fM&\u0011A.\u001c\u0002\u0007'R\u0014\u0018N\\4\u000b\u0005)$\u0001cA+YO\")A%\u0019C\u0001aR\t\u0011\u000f\u0005\u0002sC6\t\u0001\u0001C\u0004uC\n\u0007I\u0011\u0002(\u0002\u00151Lg.\u001a*fC\u0012,'\u000f\u0003\u0004wC\u0002\u0006I!O\u0001\fY&tWMU3bI\u0016\u0014\b\u0005C\u0004yC\u0002\u0007I\u0011A=\u0002\u00119,\u0007\u0010\u001e'j]\u0016,\u0012a\u001a\u0005\bw\u0006\u0004\r\u0011\"\u0001}\u00031qW\r\u001f;MS:,w\fJ3r)\t)U\u0010C\u0004Ju\u0006\u0005\t\u0019A4\t\r}\f\u0007\u0015)\u0003h\u0003%qW\r\u001f;MS:,\u0007\u0005\u0003\u0004\u0002\u0004\u0005$\tEP\u0001\bQ\u0006\u001ch*\u001a=u\u0011\u001d\t9!\u0019C!\u0003\u0013\tAA\\3yiR\tq\rC\u0004\u0002\u000e\u0001!\t%a\u0004\u0002\u0011\u001d,G\u000fT5oKN$\u0012A\u001c\u0005\u0007\u0003'\u0001A\u0011I=\u0002\u00115\\7\u000b\u001e:j]\u001e\u0004")
/* renamed from: scala.io.BufferedSource */
/* loaded from: classes3-dex2jar.jar:scala/io/BufferedSource.class */
public class BufferedSource extends Source {
    private volatile byte bitmap$0;
    private final int bufferSize;
    private boolean charReaderCreated;
    private final Codec codec;
    private final InputStream inputStream;
    private Iterator<Object> iter;
    private BufferedReader scala$io$BufferedSource$$charReader;

    /* renamed from: scala.io.BufferedSource$BufferedLineIterator */
    /* loaded from: classes3-dex2jar.jar:scala/io/BufferedSource$BufferedLineIterator.class */
    public class BufferedLineIterator extends AbstractIterator<String> {
        public final /* synthetic */ BufferedSource $outer;
        private final BufferedReader lineReader;
        private String nextLine = null;

        public BufferedLineIterator(BufferedSource bufferedSource) {
            Objects.requireNonNull(bufferedSource);
            this.$outer = bufferedSource;
            this.lineReader = bufferedSource.scala$io$BufferedSource$$decachedReader();
        }

        private BufferedReader lineReader() {
            return this.lineReader;
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            if (nextLine() == null) {
                nextLine_$eq(lineReader().readLine());
            }
            return nextLine() != null;
        }

        @Override // scala.collection.Iterator
        public String next() {
            String nextLine;
            if (nextLine() == null) {
                nextLine = lineReader().readLine();
            } else {
                try {
                    nextLine = nextLine();
                } finally {
                    nextLine_$eq(null);
                }
            }
            String str = nextLine;
            if (nextLine == null) {
                str = (String) Iterator$.MODULE$.empty().next();
            }
            return str;
        }

        public String nextLine() {
            return this.nextLine;
        }

        public void nextLine_$eq(String str) {
            this.nextLine = str;
        }

        public /* synthetic */ BufferedSource scala$io$BufferedSource$BufferedLineIterator$$$outer() {
            return this.$outer;
        }
    }

    public BufferedSource(InputStream inputStream, int i, Codec codec) {
        this.inputStream = inputStream;
        this.bufferSize = i;
        this.codec = codec;
        this.charReaderCreated = false;
    }

    public BufferedSource(InputStream inputStream, Codec codec) {
        this(inputStream, Source$.MODULE$.DefaultBufSize(), codec);
    }

    private boolean charReaderCreated() {
        return this.charReaderCreated;
    }

    private void charReaderCreated_$eq(boolean z) {
        this.charReaderCreated = z;
    }

    private Iterator iter$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 2)) == 0) {
                Iterator$ iterator$ = Iterator$.MODULE$;
                this.iter = new Iterator$$anon$9(new BufferedSource$$anonfun$iter$1(this)).takeWhile(new BufferedSource$$anonfun$iter$2(this)).map(new BufferedSource$$anonfun$iter$3(this));
                this.bitmap$0 = (byte) (this.bitmap$0 | 2);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.iter;
    }

    private BufferedReader scala$io$BufferedSource$$charReader$lzycompute() {
        synchronized (this) {
            if (((byte) (this.bitmap$0 & 1)) == 0) {
                charReaderCreated_$eq(true);
                this.scala$io$BufferedSource$$charReader = bufferedReader();
                this.bitmap$0 = (byte) (this.bitmap$0 | 1);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.scala$io$BufferedSource$$charReader;
    }

    public BufferedReader bufferedReader() {
        return new BufferedReader(reader(), this.bufferSize);
    }

    public Codec codec() {
        return this.codec;
    }

    @Override // scala.p029io.Source
    public Iterator<String> getLines() {
        return new BufferedLineIterator(this);
    }

    @Override // scala.p029io.Source
    public Iterator<Object> iter() {
        return ((byte) (this.bitmap$0 & 2)) == 0 ? iter$lzycompute() : this.iter;
    }

    @Override // scala.p029io.Source, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        BufferedReader scala$io$BufferedSource$$decachedReader = scala$io$BufferedSource$$decachedReader();
        StringBuilder stringBuilder = new StringBuilder();
        char[] cArr = new char[this.bufferSize];
        int i = 0;
        while (i != -1) {
            i = scala$io$BufferedSource$$decachedReader.read(cArr);
            if (i > 0) {
                stringBuilder.appendAll(cArr, 0, i);
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }
        return stringBuilder.result();
    }

    public InputStreamReader reader() {
        return new InputStreamReader(this.inputStream, codec().decoder());
    }

    public BufferedReader scala$io$BufferedSource$$charReader() {
        return ((byte) (this.bitmap$0 & 1)) == 0 ? scala$io$BufferedSource$$charReader$lzycompute() : this.scala$io$BufferedSource$$charReader;
    }

    public BufferedReader scala$io$BufferedSource$$decachedReader() {
        BufferedReader bufferedReader;
        if (!charReaderCreated() || !iter().hasNext()) {
            bufferedReader = scala$io$BufferedSource$$charReader();
        } else {
            PushbackReader pushbackReader = new PushbackReader(scala$io$BufferedSource$$charReader());
            pushbackReader.unread(BoxesRunTime.unboxToChar(iter().next()));
            bufferedReader = new BufferedReader(pushbackReader, this.bufferSize);
        }
        return bufferedReader;
    }
}
