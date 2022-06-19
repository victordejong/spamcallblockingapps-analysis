package scala.collection.mutable;

import scala.Function1;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.immutable.List;
import scala.collection.immutable.Set;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ua\u0001B\u0001\u0003\u0001%\u00111#S7nkR\f'\r\\3TKR\fE-\u00199u_JT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"E\n\u0005\u0001-Yb\u0004E\u0002\r\u001b=i\u0011AA\u0005\u0003\u001d\t\u00111\"\u00112tiJ\f7\r^*fiB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0004\u0019qy\u0011BA\u000f\u0003\u0005\r\u0019V\r\u001e\t\u0003+}I!\u0001\t\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011\t\u0002!\u00111A\u0005\u0012\r\n1a]3u+\u0005!\u0003cA\u0013)\u001f5\taE\u0003\u0002(\t\u0005I\u0011.\\7vi\u0006\u0014G.Z\u0005\u0003;\u0019B\u0001B\u000b\u0001\u0003\u0002\u0004%\tbK\u0001\bg\u0016$x\fJ3r)\tas\u0006\u0005\u0002\u0016[%\u0011aF\u0002\u0002\u0005+:LG\u000fC\u00041S\u0005\u0005\t\u0019\u0001\u0013\u0002\u0007a$\u0013\u0007\u0003\u00053\u0001\t\u0005\t\u0015)\u0003%\u0003\u0011\u0019X\r\u001e\u0011\t\u000bQ\u0002A\u0011A\u001b\u0002\rqJg.\u001b;?)\t1t\u0007E\u0002\r\u0001=AQAI\u001aA\u0002\u0011BQ!\u000f\u0001\u0005Bi\nAa]5{KV\t1\b\u0005\u0002\u0016y%\u0011QH\u0002\u0002\u0004\u0013:$\b\"B \u0001\t\u0003\u0002\u0015aB5t\u000b6\u0004H/_\u000b\u0002\u0003B\u0011QCQ\u0005\u0003\u0007\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0003F\u0001\u0011\u0005a)\u0001\u0005d_:$\u0018-\u001b8t)\t\tu\tC\u0003I\t\u0002\u0007q\"\u0001\u0003fY\u0016l\u0007\"\u0002&\u0001\t\u0003Z\u0015a\u00024pe\u0016\f7\r[\u000b\u0003\u0019N#\"\u0001L'\t\u000b9K\u0005\u0019A(\u0002\u0003\u0019\u0004B!\u0006)\u0010%&\u0011\u0011K\u0002\u0002\n\rVt7\r^5p]F\u0002\"\u0001E*\u0005\u000bQK%\u0019A\n\u0003\u0003UCQA\u0016\u0001\u0005B]\u000ba!\u001a=jgR\u001cHCA!Y\u0011\u0015IV\u000b1\u0001[\u0003\u0005\u0001\b\u0003B\u000bQ\u001f\u0005CQ\u0001\u0018\u0001\u0005Bu\u000ba\u0001^8MSN$X#\u00010\u0011\u0007}\u0013wB\u0004\u0002\u0016A&\u0011\u0011MB\u0001\ba\u0006\u001c7.Y4f\u0013\t\u0019GM\u0001\u0003MSN$(BA1\u0007\u0011\u00151\u0007\u0001\"\u0011h\u0003!!xn\u0015;sS:<G#\u00015\u0011\u0005%dgBA\u000bk\u0013\tYg!\u0001\u0004Qe\u0016$WMZ\u0005\u0003[:\u0014aa\u0015;sS:<'BA6\u0007\u0011\u0015\u0001\b\u0001\"\u0001r\u0003!IG/\u001a:bi>\u0014X#\u0001:\u0011\u0007M$x\"D\u0001\u0005\u0013\t)HA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u00159\b\u0001\"\u0001y\u0003!!\u0003\u000f\\;tI\u0015\fHCA={\u001b\u0005\u0001\u0001\"\u0002%w\u0001\u0004y\u0001\"\u0002?\u0001\t\u0003i\u0018!\u0003\u0013nS:,8\u000fJ3r)\tIh\u0010C\u0003Iw\u0002\u0007q\u0002C\u0004\u0002\u0002\u0001!\t%a\u0001\u0002\u000b\rdW-\u0019:\u0015\u00031Bs\u0001AA\u0004\u0003\u001b\t\t\u0002E\u0002\u0016\u0003\u0013I1!a\u0003\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0003\u0003\u001f\tQ)\u00113baR|'o\u001d\u0011be\u0016\u0004\u0013N\u001c5fe\u0016tG\u000f\\=!k:\u0014X\r\\5bE2,\u0007%\u00198eAA\u0014xN\\3!i>\u0004\u0003/\u001a:g_Jl\u0017M\\2fAA\u0014xN\u00197f[Nt\u0013EAA\n\u0003\u0019\u0011d&M\u0019/a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ImmutableSetAdaptor.class */
public class ImmutableSetAdaptor<A> extends AbstractSet<A> implements Serializable {
    private Set<A> set;

    public ImmutableSetAdaptor(Set<A> set) {
        this.set = set;
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    public ImmutableSetAdaptor<A> $minus$eq(A a) {
        set_$eq((Set) set().$minus((Set<A>) a));
        return this;
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public ImmutableSetAdaptor<A> $plus$eq(A a) {
        set_$eq((Set) set().$plus((Set<A>) a));
        return this;
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        set_$eq((Set) set().empty());
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(A a) {
        return set().contains(a);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return set().exists(function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        set().foreach(function1);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return set().isEmpty();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return set().iterator();
    }

    public Set<A> set() {
        return this.set;
    }

    public void set_$eq(Set<A> set) {
        this.set = set;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return set().size();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        return set().toList();
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return set().toString();
    }
}
