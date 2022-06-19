package scala.concurrent;

import java.util.Objects;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\r4A!\u0001\u0002\u0001\u000f\t91\t[1o]\u0016d'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002=\ta\u0001P5oSRtD#\u0001\t\u0011\u0007E\u0001!#D\u0001\u0003!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\f\u0003\u0003\u0005\u000b\"a\u0006\u000e\u0011\u0005)A\u0012BA\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\u000e\n\u0005q!!aA!os\u001a!a\u0004\u0001\u0001 \u0005)a\u0015N\\6fI2K7\u000f^\u000b\u0003A\u0019\u001a\"!H\u0005\t\u000b9iB\u0011\u0001\u0012\u0015\u0003\r\u00022\u0001J\u000f&\u001b\u0005\u0001\u0001CA\n'\t\u0015)RD1\u0001\u0017\u0011%AS\u00041AA\u0002\u0013\u0005\u0011&\u0001\u0003fY\u0016lW#A\u0013\t\u0013-j\u0002\u0019!a\u0001\n\u0003a\u0013\u0001C3mK6|F%Z9\u0015\u00055\u0002\u0004C\u0001\u0006/\u0013\tyCA\u0001\u0003V]&$\bbB\u0019+\u0003\u0003\u0005\r!J\u0001\u0004q\u0012\n\u0004BB\u001a\u001eA\u0003&Q%A\u0003fY\u0016l\u0007\u0005C\u00046;\u0001\u0007I\u0011\u0001\u001c\u0002\t9,\u0007\u0010^\u000b\u0002G!9\u0001(\ba\u0001\n\u0003I\u0014\u0001\u00038fqR|F%Z9\u0015\u00055R\u0004bB\u00198\u0003\u0003\u0005\ra\t\u0005\u0007yu\u0001\u000b\u0015B\u0012\u0002\u000b9,\u0007\u0010\u001e\u0011\t\u000fy\u0002\u0001\u0019!C\u0005\u007f\u00059qO]5ui\u0016tW#\u0001!\u0011\u0007\u0011j\"\u0003C\u0004C\u0001\u0001\u0007I\u0011B\"\u0002\u0017]\u0014\u0018\u000e\u001e;f]~#S-\u001d\u000b\u0003[\u0011Cq!M!\u0002\u0002\u0003\u0007\u0001\t\u0003\u0004G\u0001\u0001\u0006K\u0001Q\u0001\toJLG\u000f^3oA!9\u0001\n\u0001a\u0001\n\u0013y\u0014a\u00037bgR<&/\u001b;uK:DqA\u0013\u0001A\u0002\u0013%1*A\bmCN$xK]5ui\u0016tw\fJ3r)\tiC\nC\u00042\u0013\u0006\u0005\t\u0019\u0001!\t\r9\u0003\u0001\u0015)\u0003A\u00031a\u0017m\u001d;Xe&$H/\u001a8!\u0011\u001d\u0001\u0006\u00011A\u0005\nE\u000b\u0001B\u001c:fC\u0012,'o]\u000b\u0002%B\u0011!bU\u0005\u0003)\u0012\u00111!\u00138u\u0011\u001d1\u0006\u00011A\u0005\n]\u000bAB\u001c:fC\u0012,'o]0%KF$\"!\f-\t\u000fE*\u0016\u0011!a\u0001%\"1!\f\u0001Q!\nI\u000b\u0011B\u001c:fC\u0012,'o\u001d\u0011\t\u000bq\u0003A\u0011A/\u0002\u000b]\u0014\u0018\u000e^3\u0015\u00055r\u0006\"B0\\\u0001\u0004\u0011\u0012!\u0001=\t\u000b\u0005\u0004A\u0011\u00012\u0002\tI,\u0017\rZ\u000b\u0002%\u0001")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Channel.class */
public class Channel<A> {
    private Channel<A>.LinkedList<A> written = new LinkedList<>(this);
    private Channel<A>.LinkedList<A> lastWritten = written();
    private int nreaders = 0;

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/Channel$LinkedList.class */
    public class LinkedList<A> {
        public final /* synthetic */ Channel $outer;
        private A elem;
        private Channel<A>.LinkedList<A> next = null;

        public LinkedList(Channel<A> channel) {
            Objects.requireNonNull(channel);
            this.$outer = channel;
        }

        public A elem() {
            return this.elem;
        }

        public void elem_$eq(A a) {
            this.elem = a;
        }

        public Channel<A>.LinkedList<A> next() {
            return this.next;
        }

        public void next_$eq(Channel<A>.LinkedList<A> linkedList) {
            this.next = linkedList;
        }

        public /* synthetic */ Channel scala$concurrent$Channel$LinkedList$$$outer() {
            return this.$outer;
        }
    }

    private Channel<A>.LinkedList<A> lastWritten() {
        return this.lastWritten;
    }

    private void lastWritten_$eq(Channel<A>.LinkedList<A> linkedList) {
        this.lastWritten = linkedList;
    }

    private int nreaders() {
        return this.nreaders;
    }

    private void nreaders_$eq(int i) {
        this.nreaders = i;
    }

    private Channel<A>.LinkedList<A> written() {
        return this.written;
    }

    private void written_$eq(Channel<A>.LinkedList<A> linkedList) {
        this.written = linkedList;
    }

    public A read() {
        A elem;
        synchronized (this) {
            while (written().next() == null) {
                nreaders_$eq(nreaders() + 1);
                wait();
                nreaders_$eq(nreaders() - 1);
            }
            elem = written().elem();
            written_$eq(written().next());
        }
        return elem;
    }

    public void write(A a) {
        synchronized (this) {
            lastWritten().elem_$eq(a);
            lastWritten().next_$eq(new LinkedList<>(this));
            lastWritten_$eq(lastWritten().next());
            if (nreaders() > 0) {
                notify();
            }
        }
    }
}
