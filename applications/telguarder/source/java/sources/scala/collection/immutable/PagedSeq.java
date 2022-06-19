package scala.collection.immutable;

import java.io.File;
import java.io.Reader;
import scala.Function3;
import scala.Predef$;
import scala.collection.AbstractSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.Iterator;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.p029io.Source;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0005-x!B\u0001\u0003\u0011\u0003I\u0011\u0001\u0003)bO\u0016$7+Z9\u000b\u0005\r!\u0011!C5n[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001!\tQ1\"D\u0001\u0003\r\u0015a!\u0001#\u0001\u000e\u0005!\u0001\u0016mZ3e'\u0016\f8CA\u0006\u000f!\ty\u0001#D\u0001\u0007\u0013\t\tbA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006'-!\t\u0001F\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003%AqAF\u0006C\u0002\u0013\u0015q#A\bV]\u0012,G/\u001a:nS:,G-\u00128e+\u0005Ar\"A\r\u001e\t}|����@\u0005\u00077-\u0001\u000bQ\u0002\r\u0002!UsG-\u001a;fe6Lg.\u001a3F]\u0012\u0004\u0003\"B\u000f\f\t\u0003q\u0012\u0001\u00044s_6LE/\u001a:bi>\u0014XcA\u0010\u0002NQ\u0019\u0001%!\u0016\u0015\u0007\u0005\ny\u0005\u0005\u0003\u000bE\u0005-c\u0001\u0002\u0007\u0003\u0001\r*\"\u0001J\u0016\u0014\u0007\t*C\u0007E\u0002'O%j\u0011\u0001B\u0005\u0003Q\u0011\u00111\"\u00112tiJ\f7\r^*fcB\u0011!f\u000b\u0007\u0001\t\u0015a#E1\u0001.\u0005\u0005!\u0016C\u0001\u00182!\tyq&\u0003\u00021\r\t9aj\u001c;iS:<\u0007CA\b3\u0013\t\u0019dAA\u0002B]f\u00042AJ\u001b*\u0013\t1DA\u0001\u0006J]\u0012,\u00070\u001a3TKFD\u0001\u0002\u000f\u0012\u0003\u0002\u0003\u0006I!O\u0001\u0005[>\u0014X\r\u0005\u0004\u0010uqzthP\u0005\u0003w\u0019\u0011\u0011BR;oGRLwN\\\u001a\u0011\u0007=i\u0014&\u0003\u0002?\r\t)\u0011I\u001d:bsB\u0011q\u0002Q\u0005\u0003\u0003\u001a\u00111!\u00138u\u0011!\u0019%E!A!\u0002\u0013!\u0015A\u00024jeN$\u0018\u0007E\u0002\u000b\u000b&J!A\u0012\u0002\u0003\tA\u000bw-\u001a\u0005\t\u0011\n\u0012\t\u0011)A\u0005\u007f\u0005)1\u000f^1si\"A!J\tB\u0001B\u0003%q(A\u0002f]\u0012D\u0001\u0002\u0014\u0012\u0003\u0004\u0003\u0006Y!T\u0001\u000bKZLG-\u001a8dK\u0012\u001a\u0004c\u0001(RS5\tqJ\u0003\u0002Q\r\u00059!/\u001a4mK\u000e$\u0018B\u0001*P\u0005!\u0019E.Y:t)\u0006<\u0007\"B\n#\t#!F#B+Y3j[FC\u0001,X!\rQ!%\u000b\u0005\u0006\u0019N\u0003\u001d!\u0014\u0005\u0006qM\u0003\r!\u000f\u0005\u0006\u0007N\u0003\r\u0001\u0012\u0005\u0006\u0011N\u0003\ra\u0010\u0005\u0006\u0015N\u0003\ra\u0010\u0005\u0006'\t\"\t!\u0018\u000b\u0003=\u0006$\"AV0\t\u000f\u0001d\u0016\u0011!a\u0002\u001b\u0006QQM^5eK:\u001cW\r\n\u001b\t\u000bab\u0006\u0019A\u001d\t\u000f\r\u0014\u0003\u0019!C\u0005I\u000691-\u001e:sK:$X#\u0001#\t\u000f\u0019\u0014\u0003\u0019!C\u0005O\u0006Y1-\u001e:sK:$x\fJ3r)\tA7\u000e\u0005\u0002\u0010S&\u0011!N\u0002\u0002\u0005+:LG\u000fC\u0004mK\u0006\u0005\t\u0019\u0001#\u0002\u0007a$\u0013\u0007\u0003\u0004oE\u0001\u0006K\u0001R\u0001\tGV\u0014(/\u001a8uA!)\u0001O\tC\u0005I\u00061A.\u0019;fgRDQA\u001d\u0012\u0005\nM\fq!\u00193e\u001b>\u0014X\rF\u0001E\u0011\u0015)(\u0005\"\u0003w\u0003\u0011\u0001\u0018mZ3\u0015\u0005\u0011;\b\"\u0002=u\u0001\u0004y\u0014\u0001C1cg&tG-\u001a=\t\u000bi\u0014C\u0011A>\u0002\r1,gn\u001a;i+\u0005y\u0004\"B?#\t\u0003q\u0018!B1qa2LHCA\u0015��\u0011\u0019\t\t\u0001 a\u0001\u007f\u0005)\u0011N\u001c3fq\"9\u0011Q\u0001\u0012\u0005B\u0005\u001d\u0011aC5t\t\u00164\u0017N\\3e\u0003R$B!!\u0003\u0002\u0010A\u0019q\"a\u0003\n\u0007\u00055aAA\u0004C_>dW-\u00198\t\u000f\u0005\u0005\u00111\u0001a\u0001\u007f!9\u00111\u0003\u0012\u0005B\u0005U\u0011!B:mS\u000e,G#\u0002,\u0002\u0018\u0005m\u0001bBA\r\u0003#\u0001\raP\u0001\u0007?N$\u0018M\u001d;\t\u000f\u0005u\u0011\u0011\u0003a\u0001\u007f\u0005!q,\u001a8e\u0011\u001d\t\u0019B\tC\u0001\u0003C!2AVA\u0012\u0011\u0019A\u0015q\u0004a\u0001\u007f!9\u0011q\u0005\u0012\u0005B\u0005%\u0012\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u0005-\u0002\u0003BA\u0017\u0003oi!!a\f\u000b\t\u0005E\u00121G\u0001\u0005Y\u0006twM\u0003\u0002\u00026\u0005!!.\u0019<b\u0013\u0011\tI$a\f\u0003\rM#(/\u001b8hQ\u001d\u0011\u0013QHA\"\u0003\u000f\u00022aDA \u0013\r\t\tE\u0002\u0002\u0016I\u0016\u0004(/Z2bi\u0016$\u0017J\u001c5fe&$\u0018M\\2fC\t\t)%A(UQ\u0016\u0004\u0013.\u001c9mK6,g\u000e^1uS>t\u0007\u0005Z3uC&d7\u000fI8gAA\fw-\u001a3!g\u0016\fX/\u001a8dKN\u0004S.Y6fA%t\u0007.\u001a:ji&tw\r\t4s_6\u0004C\u000f[3nAUtw/[:f]\u0005\u0012\u0011\u0011J\u0001\u0007e9\n\u0014G\f\u0019\u0011\u0007)\ni\u0005B\u0003-9\t\u0007Q\u0006C\u0005\u0002Rq\t\t\u0011q\u0001\u0002T\u0005QQM^5eK:\u001cW\rJ\u0019\u0011\t9\u000b\u00161\n\u0005\b\u0003/b\u0002\u0019AA-\u0003\u0019\u0019x.\u001e:dKB)a%a\u0017\u0002L%\u0019\u0011Q\f\u0003\u0003\u0011%#XM]1u_JDq!!\u0019\f\t\u0003\t\u0019'\u0001\u0007ge>l\u0017\n^3sC\ndW-\u0006\u0003\u0002f\u00055D\u0003BA4\u0003k\"B!!\u001b\u0002pA!!BIA6!\rQ\u0013Q\u000e\u0003\u0007Y\u0005}#\u0019A\u0017\t\u0015\u0005E\u0014qLA\u0001\u0002\b\t\u0019(\u0001\u0006fm&$WM\\2fII\u0002BAT)\u0002l!A\u0011qKA0\u0001\u0004\t9\bE\u0003\u000b\u0003s\nY'C\u0002\u0002|\t\u0011\u0001\"\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0003\u007fZA\u0011AAA\u0003-1'o\\7TiJLgnZ:\u0015\t\u0005\r\u00151\u0012\t\u0005\u0015\t\n)\tE\u0002\u0010\u0003\u000fK1!!#\u0007\u0005\u0011\u0019\u0005.\u0019:\t\u0011\u0005]\u0013Q\u0010a\u0001\u0003\u001b\u0003RAJA.\u0003\u001f\u0003B!!%\u0002\u0018:\u0019q\"a%\n\u0007\u0005Ue!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003s\tIJC\u0002\u0002\u0016\u001aAq!a \f\t\u0003\ti\n\u0006\u0003\u0002\u0004\u0006}\u0005\u0002CA,\u00037\u0003\r!!)\u0011\u000b)\tI(a$\t\u000f\u0005\u00156\u0002\"\u0001\u0002(\u0006IaM]8n\u0019&tWm\u001d\u000b\u0005\u0003\u0007\u000bI\u000b\u0003\u0005\u0002X\u0005\r\u0006\u0019AAG\u0011\u001d\t)k\u0003C\u0001\u0003[#B!a!\u00020\"A\u0011qKAV\u0001\u0004\t\t\u000bC\u0004\u00024.!\t!!.\u0002\u0015\u0019\u0014x.\u001c*fC\u0012,'\u000f\u0006\u0003\u0002\u0004\u0006]\u0006\u0002CA,\u0003c\u0003\r!!/\u0011\t\u0005m\u0016\u0011Y\u0007\u0003\u0003{SA!a0\u00024\u0005\u0011\u0011n\\\u0005\u0005\u0003\u0007\fiL\u0001\u0004SK\u0006$WM\u001d\u0005\b\u0003\u000f\\A\u0011AAe\u0003!1'o\\7GS2,G\u0003BAB\u0003\u0017D\u0001\"a\u0016\u0002F\u0002\u0007\u0011Q\u001a\t\u0005\u0003w\u000by-\u0003\u0003\u0002R\u0006u&\u0001\u0002$jY\u0016Dq!a2\f\t\u0003\t)\u000e\u0006\u0003\u0002\u0004\u0006]\u0007\u0002CA,\u0003'\u0004\r!a$\t\u000f\u0005m7\u0002\"\u0001\u0002^\u0006QaM]8n'>,(oY3\u0015\t\u0005\r\u0015q\u001c\u0005\t\u0003/\nI\u000e1\u0001\u0002bB!\u00111]At\u001b\t\t)OC\u0002\u0002@\u001aIA!!;\u0002f\n11k\\;sG\u0016\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq.class */
public class PagedSeq<T> extends AbstractSeq<T> implements IndexedSeq<T> {
    private Page<T> current;
    private final int end;
    private final ClassTag<T> evidence$3;
    private final Page<T> first1;
    private final Function3<Object, Object, Object, Object> more;
    private final int start;

    public PagedSeq(Function3<Object, Object, Object, Object> function3, Page<T> page, int i, int i2, ClassTag<T> classTag) {
        this.more = function3;
        this.first1 = page;
        this.start = i;
        this.end = i2;
        this.evidence$3 = classTag;
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        this.current = page;
    }

    public PagedSeq(Function3<Object, Object, Object, Object> function3, ClassTag<T> classTag) {
        this(function3, new Page(0, classTag), 0, Integer.MAX_VALUE, classTag);
    }

    public static int UndeterminedEnd() {
        return PagedSeq$.MODULE$.UndeterminedEnd();
    }

    private Page<T> addMore() {
        return latest().addMore(this.more);
    }

    private Page<T> current() {
        return this.current;
    }

    private void current_$eq(Page<T> page) {
        this.current = page;
    }

    public static PagedSeq<Object> fromFile(File file) {
        return PagedSeq$.MODULE$.fromFile(file);
    }

    public static PagedSeq<Object> fromFile(String str) {
        return PagedSeq$.MODULE$.fromFile(str);
    }

    public static <T> PagedSeq<T> fromIterable(Iterable<T> iterable, ClassTag<T> classTag) {
        return PagedSeq$.MODULE$.fromIterable(iterable, classTag);
    }

    public static <T> PagedSeq<T> fromIterator(Iterator<T> iterator, ClassTag<T> classTag) {
        return PagedSeq$.MODULE$.fromIterator(iterator, classTag);
    }

    public static PagedSeq<Object> fromLines(Iterator<String> iterator) {
        return PagedSeq$.MODULE$.fromLines(iterator);
    }

    public static PagedSeq<Object> fromLines(Iterable<String> iterable) {
        return PagedSeq$.MODULE$.fromLines(iterable);
    }

    public static PagedSeq<Object> fromReader(Reader reader) {
        return PagedSeq$.MODULE$.fromReader(reader);
    }

    public static PagedSeq<Object> fromSource(Source source) {
        return PagedSeq$.MODULE$.fromSource(source);
    }

    public static PagedSeq<Object> fromStrings(Iterator<String> iterator) {
        return PagedSeq$.MODULE$.fromStrings(iterator);
    }

    public static PagedSeq<Object> fromStrings(Iterable<String> iterable) {
        return PagedSeq$.MODULE$.fromStrings(iterable);
    }

    private Page<T> latest() {
        return this.first1.latest();
    }

    private Page<T> page(int i) {
        if (i < current().start()) {
            current_$eq(this.first1);
        }
        while (i >= current().end() && current().next() != null) {
            current_$eq(current().next());
        }
        while (i >= current().end() && !current().isLast()) {
            current_$eq(addMore());
        }
        return current();
    }

    @Override // scala.collection.GenSeqLike
    public T apply(int i) {
        if (isDefinedAt(i)) {
            return page(this.start + i).apply(i + this.start);
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if ((r0 >= 0 && r0 < page(r0).end()) != false) goto L15;
     */
    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isDefinedAt(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 < 0) goto L3c
            r0 = r4
            int r0 = r0.end
            r7 = r0
            r0 = r4
            int r0 = r0.start
            r8 = r0
            r0 = r5
            r1 = r7
            r2 = r8
            int r1 = r1 - r2
            if (r0 >= r1) goto L3c
            r0 = r5
            r1 = r8
            int r0 = r0 + r1
            r5 = r0
            r0 = r5
            if (r0 < 0) goto L33
            r0 = r5
            r1 = r4
            r2 = r5
            scala.collection.immutable.Page r1 = r1.page(r2)
            int r1 = r1.end()
            if (r0 >= r1) goto L33
            r0 = 1
            r5 = r0
            goto L35
        L33:
            r0 = 0
            r5 = r0
        L35:
            r0 = r5
            if (r0 == 0) goto L3c
            goto L3e
        L3c:
            r0 = 0
            r6 = r0
        L3e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.PagedSeq.isDefinedAt(int):boolean");
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<T> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        while (!latest().isLast() && latest().end() < this.end) {
            addMore();
        }
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return richInt$.min$extension(latest().end(), this.end) - this.start;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<T> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    public PagedSeq<T> slice(int i) {
        return slice(i, Integer.MAX_VALUE);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public PagedSeq<T> slice(int i, int i2) {
        Page<T> page;
        page(this.start);
        int i3 = this.start;
        int i4 = i3 + i;
        if (i2 != Integer.MAX_VALUE) {
            i2 += i3;
        }
        Page<T> page2 = this.first1;
        while (true) {
            page = page2;
            if (page.end() > i4 || page.isLast()) {
                break;
            }
            if (page.next() == null) {
                page.addMore(this.more);
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            page2 = page.next();
        }
        return new PagedSeq<>(this.more, page, i4, i2, this.evidence$3);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq<T> thisCollection() {
        return IndexedSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        iterator().foreach(new PagedSeq$$anonfun$toString$1(this, stringBuilder));
        return stringBuilder.toString();
    }
}
