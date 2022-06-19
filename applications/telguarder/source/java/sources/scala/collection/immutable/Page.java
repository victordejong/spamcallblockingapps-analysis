package scala.collection.immutable;

import scala.Function3;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001u4A!\u0001\u0002\u0005\u0013\t!\u0001+Y4f\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"I\n\u0003\u0001-\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g\u0011!\u0001\u0002A!b\u0001\n\u0003\t\u0012a\u00018v[V\t!\u0003\u0005\u0002\r'%\u0011AC\u0002\u0002\u0004\u0013:$\b\u0002\u0003\f\u0001\u0005\u0003\u0005\u000b\u0011\u0002\n\u0002\t9,X\u000e\t\u0005\t1\u0001\u0011\u0019\u0011)A\u00063\u0005QQM^5eK:\u001cW\rJ\u001b\u0011\u0007iir$D\u0001\u001c\u0015\tab!A\u0004sK\u001adWm\u0019;\n\u0005yY\"\u0001C\"mCN\u001cH+Y4\u0011\u0005\u0001\nC\u0002\u0001\u0003\u0006E\u0001\u0011\ra\t\u0002\u0002)F\u0011Ae\n\t\u0003\u0019\u0015J!A\n\u0004\u0003\u000f9{G\u000f[5oOB\u0011A\u0002K\u0005\u0003S\u0019\u00111!\u00118z\u0011\u0015Y\u0003\u0001\"\u0001-\u0003\u0019a\u0014N\\5u}Q\u0011Q&\r\u000b\u0003]A\u00022a\f\u0001 \u001b\u0005\u0011\u0001\"\u0002\r+\u0001\bI\u0002\"\u0002\t+\u0001\u0004\u0011\u0002bB\u001a\u0001\u0005\u0004%i\u0001N\u0001\t!\u0006<WmU5{KV\tQgD\u00017;\t\u0001\u0002\u0001\u0003\u00049\u0001\u0001\u0006i!N\u0001\n!\u0006<WmU5{K\u0002BqA\u000f\u0001A\u0002\u0013\u00051(\u0001\u0003oKb$X#\u0001\u0018\t\u000fu\u0002\u0001\u0019!C\u0001}\u0005Aa.\u001a=u?\u0012*\u0017\u000f\u0006\u0002@\u0005B\u0011A\u0002Q\u0005\u0003\u0003\u001a\u0011A!\u00168ji\"91\tPA\u0001\u0002\u0004q\u0013a\u0001=%c!1Q\t\u0001Q!\n9\nQA\\3yi\u0002Bqa\u0012\u0001A\u0002\u0013\u00051(A\u0003mCR,'\u000fC\u0004J\u0001\u0001\u0007I\u0011\u0001&\u0002\u00131\fG/\u001a:`I\u0015\fHCA L\u0011\u001d\u0019\u0005*!AA\u00029Ba!\u0014\u0001!B\u0013q\u0013A\u00027bi\u0016\u0014\b\u0005C\u0004P\u0001\u0001\u0007I\u0011A\t\u0002\r\u0019LG\u000e\\3e\u0011\u001d\t\u0006\u00011A\u0005\u0002I\u000b!BZ5mY\u0016$w\fJ3r)\ty4\u000bC\u0004D!\u0006\u0005\t\u0019\u0001\n\t\rU\u0003\u0001\u0015)\u0003\u0013\u0003\u001d1\u0017\u000e\u001c7fI\u0002Bqa\u0016\u0001A\u0002\u0013\u0005\u0001,\u0001\u0004jg2\u000b7\u000f^\u000b\u00023B\u0011ABW\u0005\u00037\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0004^\u0001\u0001\u0007I\u0011\u00010\u0002\u0015%\u001cH*Y:u?\u0012*\u0017\u000f\u0006\u0002@?\"91\tXA\u0001\u0002\u0004I\u0006BB1\u0001A\u0003&\u0011,A\u0004jg2\u000b7\u000f\u001e\u0011\t\u000f\r\u0004!\u0019!C\u0003I\u0006!A-\u0019;b+\u0005)\u0007c\u0001\u0007g?%\u0011qM\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\u0007S\u0002\u0001\u000bQB3\u0002\u000b\u0011\fG/\u0019\u0011\t\u000b-\u0004AQA\t\u0002\u000bM$\u0018M\u001d;\t\u000b5\u0004AQA\t\u0002\u0007\u0015tG\rC\u0003p\u0001\u0011\u00151(\u0001\u0004mCR,7\u000f\u001e\u0005\u0006c\u0002!\tA]\u0001\u0006CB\u0004H.\u001f\u000b\u0003?MDQ\u0001\u001e9A\u0002I\tQ!\u001b8eKbDQA\u001e\u0001\u0005\u0006]\fq!\u00193e\u001b>\u0014X\r\u0006\u0002/q\")\u00110\u001ea\u0001u\u0006!Qn\u001c:f!\u0019a10\u001a\n\u0013%%\u0011AP\u0002\u0002\n\rVt7\r^5p]N\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Page.class */
public class Page<T> {
    private final int PageSize;
    private final Object data;
    private final ClassTag<T> evidence$5;
    private final int num;
    private Page<T> next = null;
    private Page<T> later = this;
    private int filled = 0;
    private boolean isLast = false;

    public Page(int i, ClassTag<T> classTag) {
        this.num = i;
        this.evidence$5 = classTag;
        this.data = classTag.newArray(4096);
    }

    private final int PageSize() {
        return 4096;
    }

    public final Page<T> addMore(Function3<Object, Object, Object, Object> function3) {
        Page<T> page;
        Page<T> page2 = this;
        while (true) {
            page = page2;
            if (page.filled() != 4096) {
                break;
            }
            page.next_$eq(new Page<>(page.num() + 1, page.evidence$5));
            page2 = page.next();
        }
        int unboxToInt = BoxesRunTime.unboxToInt(function3.apply(page.data(), BoxesRunTime.boxToInteger(page.filled()), BoxesRunTime.boxToInteger(4096 - page.filled())));
        if (unboxToInt < 0) {
            page.isLast_$eq(true);
        } else {
            page.filled_$eq(page.filled() + unboxToInt);
        }
        return page;
    }

    public T apply(int i) {
        if (i < start() || i - start() >= filled()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        return (T) ScalaRunTime$.MODULE$.array_apply(data(), i - start());
    }

    public final Object data() {
        return this.data;
    }

    public final int end() {
        return start() + filled();
    }

    public int filled() {
        return this.filled;
    }

    public void filled_$eq(int i) {
        this.filled = i;
    }

    public boolean isLast() {
        return this.isLast;
    }

    public void isLast_$eq(boolean z) {
        this.isLast = z;
    }

    public Page<T> later() {
        return this.later;
    }

    public void later_$eq(Page<T> page) {
        this.later = page;
    }

    public final Page<T> latest() {
        if (later().next() != null) {
            later_$eq(later().next().latest());
        }
        return later();
    }

    public Page<T> next() {
        return this.next;
    }

    public void next_$eq(Page<T> page) {
        this.next = page;
    }

    public int num() {
        return this.num;
    }

    public final int start() {
        return num() * 4096;
    }
}
