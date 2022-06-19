package scala.collection.mutable;

import scala.Function2;
import scala.Option;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Set;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Map$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ee\u0001B\u0001\u0003\u0001%\u00111#S7nkR\f'\r\\3NCB\fE-\u00199u_JT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019!\"\u0005\u000f\u0014\t\u0001Ya$\t\t\u0005\u00195y1$D\u0001\u0003\u0013\tq!AA\u0006BEN$(/Y2u\u001b\u0006\u0004\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\t\u0001B\u0004B\u0003\u001e\u0001\t\u00071CA\u0001C!\u0011aqdD\u000e\n\u0005\u0001\u0012!aA'baB\u0011QCI\u0005\u0003G\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001\"\n\u0001\u0003\u0002\u0004%\tBJ\u0001\u0005S6\f\u0007/F\u0001(!\u0011A3fD\u000e\u000e\u0003%R!A\u000b\u0003\u0002\u0013%lW.\u001e;bE2,\u0017B\u0001\u0011*\u0011!i\u0003A!a\u0001\n#q\u0013\u0001C5nCB|F%Z9\u0015\u0005=\u0012\u0004CA\u000b1\u0013\t\tdA\u0001\u0003V]&$\bbB\u001a-\u0003\u0003\u0005\raJ\u0001\u0004q\u0012\n\u0004\u0002C\u001b\u0001\u0005\u0003\u0005\u000b\u0015B\u0014\u0002\u000b%l\u0017\r\u001d\u0011\t\u000b]\u0002A\u0011\u0001\u001d\u0002\rqJg.\u001b;?)\tI$\b\u0005\u0003\r\u0001=Y\u0002\"B\u00137\u0001\u00049\u0003\"\u0002\u001f\u0001\t\u0003j\u0014\u0001B:ju\u0016,\u0012A\u0010\t\u0003+}J!\u0001\u0011\u0004\u0003\u0007%sG\u000fC\u0003C\u0001\u0011\u00051)A\u0002hKR$\"\u0001R$\u0011\u0007U)5$\u0003\u0002G\r\t1q\n\u001d;j_:DQ\u0001S!A\u0002=\t1a[3z\u0011\u0015Q\u0005\u0001\"\u0011L\u0003\u001dI7/R7qif,\u0012\u0001\u0014\t\u0003+5K!A\u0014\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001\u000b\u0001C!#\u0006)\u0011\r\u001d9msR\u00111D\u0015\u0005\u0006\u0011>\u0003\ra\u0004\u0005\u0006)\u0002!\t%V\u0001\tG>tG/Y5ogR\u0011AJ\u0016\u0005\u0006\u0011N\u0003\ra\u0004\u0005\u00061\u0002!\t%W\u0001\fSN$UMZ5oK\u0012\fE\u000f\u0006\u0002M5\")\u0001j\u0016a\u0001\u001f!)A\f\u0001C!;\u000611.Z=TKR,\u0012A\u0018\t\u0004?\u0002|Q\"\u0001\u0003\n\u0005\u0005$!aA*fi\")1\r\u0001C!I\u0006a1.Z=t\u0013R,'/\u0019;peV\tQ\rE\u0002`M>I!a\u001a\u0003\u0003\u0011%#XM]1u_JDQ!\u001b\u0001\u0005B)\fAa[3zgV\t1\u000eE\u0002`Y>I!!\u001c\u0003\u0003\u0011%#XM]1cY\u0016DC\u0001[8voB\u0011\u0001o]\u0007\u0002c*\u0011!OB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001;r\u0005%i\u0017n\u001a:bi&|g.I\u0001w\u0003M\u00027.Z=tA\u0002\u0012X\r^;s]N\u0004\u0013\n^3sC\ndWmW!^AI\fG\u000f[3sAQD\u0017M\u001c\u0011Ji\u0016\u0014\u0018\r^8s7\u0006kf&I\u0001y\u0003\u0015\u0011d\u0006\u000f\u00181\u0011\u0015Q\b\u0001\"\u0011|\u000391\u0018\r\\;fg&#XM]1u_J,\u0012\u0001 \t\u0004?\u001a\\\u0002\"\u0002@\u0001\t\u0003z\u0018A\u0002<bYV,7/\u0006\u0002\u0002\u0002A\u0019q\f\\\u000e)\u000bu|\u0017QA<\"\u0005\u0005\u001d\u0011!\u000e1wC2,Xm\u001d1!e\u0016$XO\u001d8tA%#XM]1cY\u0016\\&)\u0018\u0011sCRDWM\u001d\u0011uQ\u0006t\u0007%\u0013;fe\u0006$xN].C;:Bq!a\u0003\u0001\t\u0003\ti!\u0001\u0005ji\u0016\u0014\u0018\r^8s+\t\ty\u0001\u0005\u0003`M\u0006E\u0001#B\u000b\u0002\u0014=Y\u0012bAA\u000b\r\t1A+\u001e9mKJBq!!\u0007\u0001\t\u0003\nY\"\u0001\u0004u_2K7\u000f^\u000b\u0003\u0003;\u0001b!a\b\u0002&\u0005EabA\u000b\u0002\"%\u0019\u00111\u0005\u0004\u0002\u000fA\f7m[1hK&!\u0011qEA\u0015\u0005\u0011a\u0015n\u001d;\u000b\u0007\u0005\rb\u0001C\u0004\u0002.\u0001!\t%a\f\u0002\rU\u0004H-\u0019;f)\u0015y\u0013\u0011GA\u001a\u0011\u0019A\u00151\u0006a\u0001\u001f!9\u0011QGA\u0016\u0001\u0004Y\u0012!\u0002<bYV,\u0007bBA\u001d\u0001\u0011\u0005\u00111H\u0001\nI5Lg.^:%KF$B!!\u0010\u0002@5\t\u0001\u0001\u0003\u0004I\u0003o\u0001\ra\u0004\u0005\b\u0003\u0007\u0002A\u0011AA#\u0003!!\u0003\u000f\\;tI\u0015\fH\u0003BA\u001f\u0003\u000fB\u0001\"!\u0013\u0002B\u0001\u0007\u0011\u0011C\u0001\u0003WZDq!!\u0014\u0001\t\u0003\ny%A\u0003dY\u0016\f'\u000fF\u00010\u0011\u001d\t\u0019\u0006\u0001C!\u0003+\n\u0011\u0002\u001e:b]N4wN]7\u0015\t\u0005u\u0012q\u000b\u0005\t\u00033\n\t\u00061\u0001\u0002\\\u0005\ta\r\u0005\u0004\u0016\u0003;z1dG\u0005\u0004\u0003?2!!\u0003$v]\u000e$\u0018n\u001c83\u0011\u001d\t\u0019\u0007\u0001C!\u0003K\naA]3uC&tG\u0003BA\u001f\u0003OB\u0001\"!\u001b\u0002b\u0001\u0007\u00111N\u0001\u0002aB1Q#!\u0018\u001071Cq!a\u001c\u0001\t\u0003\n\t(\u0001\u0005u_N#(/\u001b8h)\t\t\u0019\b\u0005\u0003\u0002v\u0005mdbA\u000b\u0002x%\u0019\u0011\u0011\u0010\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\ti(a \u0003\rM#(/\u001b8h\u0015\r\tIH\u0002\u0015\b\u0001\u0005\r\u0015\u0011RAG!\r)\u0012QQ\u0005\u0004\u0003\u000f3!A\u00033faJ,7-\u0019;fI\u0006\u0012\u00111R\u0001F\u0003\u0012\f\u0007\u000f^8sg\u0002\n'/\u001a\u0011j]\",'/\u001a8uYf\u0004SO\u001c:fY&\f'\r\\3!C:$\u0007\u0005\u001d:p]\u0016\u0004Co\u001c\u0011qKJ4wN]7b]\u000e,\u0007\u0005\u001d:pE2,Wn\u001d\u0018\"\u0005\u0005=\u0015A\u0002\u001a/cEr\u0003\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ImmutableMapAdaptor.class */
public class ImmutableMapAdaptor<A, B> extends AbstractMap<A, B> implements Serializable {
    private Map<A, B> imap;

    public ImmutableMapAdaptor(Map<A, B> map) {
        this.imap = map;
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public ImmutableMapAdaptor<A, B> $minus$eq(A a) {
        imap_$eq((Map) imap().$minus((Map<A, B>) a));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.MapLike
    public ImmutableMapAdaptor<A, B> $plus$eq(Tuple2<A, B> tuple2) {
        imap_$eq(imap().$plus((Tuple2) tuple2));
        return this;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public B apply(A a) {
        return imap().apply(a);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        imap_$eq(imap().empty());
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(A a) {
        return imap().contains(a);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        return imap().get(a);
    }

    public Map<A, B> imap() {
        return this.imap;
    }

    public void imap_$eq(Map<A, B> map) {
        this.imap = map;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(A a) {
        return imap().isDefinedAt(a);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return imap().isEmpty();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return (Iterator<A>) imap().iterator();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.Set<A>, scala.collection.immutable.Set] */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Set<A> keySet() {
        return imap().keySet();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.Iterable, scala.collection.Iterable<A>] */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterable<A> keys() {
        return imap().keys();
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<A> keysIterator() {
        return imap().keysIterator();
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public ImmutableMapAdaptor<A, B> retain(Function2<A, B, Object> function2) {
        imap_$eq((Map) imap().filter(new ImmutableMapAdaptor$$anonfun$retain$1(this, function2)));
        return this;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return imap().size();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Tuple2<A, B>> toList() {
        return (List<A>) imap().toList();
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return imap().toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public ImmutableMapAdaptor<A, B> transform(Function2<A, B, B> function2) {
        imap_$eq((Map) imap().transform(function2, Map$.MODULE$.canBuildFrom()));
        return this;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public void update(A a, B b) {
        imap_$eq(imap().updated((Map<A, B>) a, (A) b));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.Iterable<B>, scala.collection.Iterable] */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterable<B> values() {
        return imap().values();
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<B> valuesIterator() {
        return imap().valuesIterator();
    }
}
