package scala.sys;

import java.security.AccessControlException;
import scala.Function0;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.MapLike;
import scala.collection.mutable.AbstractMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005Md\u0001B\u0001\u0003\u0001\u001d\u0011\u0001cU=ti\u0016l\u0007K]8qKJ$\u0018.Z:\u000b\u0005\r!\u0011aA:zg*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0007\u0001A\u0001\u0004\u0005\u0003\n\u001dA\u0001R\"\u0001\u0006\u000b\u0005-a\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u001b\u0011\t!bY8mY\u0016\u001cG/[8o\u0013\ty!BA\u0006BEN$(/Y2u\u001b\u0006\u0004\bCA\t\u0016\u001d\t\u00112#D\u0001\u0005\u0013\t!B!\u0001\u0004Qe\u0016$WMZ\u0005\u0003-]\u0011aa\u0015;sS:<'B\u0001\u000b\u0005!\u0011I\u0011\u0004\u0005\t\n\u0005iQ!aA'ba\")A\u0004\u0001C\u0001;\u00051A(\u001b8jiz\"\u0012A\b\t\u0003?\u0001i\u0011A\u0001\u0005\u0006C\u0001!\tEI\u0001\u0006K6\u0004H/_\u000b\u0002=!)A\u0005\u0001C!K\u00059A-\u001a4bk2$HC\u0001\t'\u0011\u001593\u00051\u0001\u0011\u0003\rYW-\u001f\u0005\u0006S\u0001!\tAK\u0001\tSR,'/\u0019;peV\t1\u0006E\u0002-[=j\u0011\u0001D\u0005\u0003]1\u0011\u0001\"\u0013;fe\u0006$xN\u001d\t\u0005%A\u0002\u0002#\u0003\u00022\t\t1A+\u001e9mKJBQa\r\u0001\u0005\u0002Q\n1aZ3u)\t)t\bE\u0002\u0013maJ!a\u000e\u0003\u0003\r=\u0003H/[8o!\tId(D\u0001;\u0015\tYD(\u0001\u0003mC:<'\"A\u001f\u0002\t)\fg/Y\u0005\u0003-iBQa\n\u001aA\u0002AAQ!\u0011\u0001\u0005B\t\u000b\u0001bY8oi\u0006Lgn\u001d\u000b\u0003\u0007\u001a\u0003\"A\u0005#\n\u0005\u0015#!a\u0002\"p_2,\u0017M\u001c\u0005\u0006O\u0001\u0003\r\u0001\u0005\u0005\u0006\u0011\u0002!\t!S\u0001\nI5Lg.^:%KF$\"AS&\u000e\u0003\u0001AQaJ$A\u0002AAQ!\u0014\u0001\u0005\u00029\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u0015>CQ\u0001\u0015'A\u0002=\n!a\u001b<\t\u000bI\u0003A\u0011A*\u0002\u0015]\u0014\u0018\r]!dG\u0016\u001c8/\u0006\u0002U1R\u0011Q+\u0019\t\u0004%Y2\u0006CA,Y\u0019\u0001!Q!W)C\u0002i\u0013\u0011\u0001V\t\u00037z\u0003\"A\u0005/\n\u0005u#!a\u0002(pi\"Lgn\u001a\t\u0003%}K!\u0001\u0019\u0003\u0003\u0007\u0005s\u0017\u0010\u0003\u0004c#\u0012\u0005\raY\u0001\u0005E>$\u0017\u0010E\u0002\u0013IZK!!\u001a\u0003\u0003\u0011q\u0012\u0017P\\1nKzB1b\u001a\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003iU\u0006q1/\u001e9fe\u0012\u001awN\u001c;bS:\u001cHCA\"j\u0011\u00159c\r1\u0001\u0011\u0013\t\t5.\u0003\u0002m\u0019\t9Q*\u00199MS.,w!\u00028\u0003\u0011\u0003y\u0017\u0001E*zgR,W\u000e\u0015:pa\u0016\u0014H/[3t!\ty\u0002OB\u0003\u0002\u0005!\u0005\u0011o\u0005\u0002qeB\u0011!c]\u0005\u0003i\u0012\u0011a!\u00118z%\u00164\u0007\"\u0002\u000fq\t\u00031H#A8\t\u000ba\u0004H\u0011A=\u0002\u0017\u0015D8\r\\;tSZ,G._\u000b\u0003ur$\"a_?\u0011\u0005]cH!B-x\u0005\u0004Q\u0006B\u00022x\t\u0003\u0007a\u0010E\u0002\u0013InDq!!\u0001q\t\u0007\t\u0019!A\u000etsN$X-\u001c)s_B,'\u000f^5fgR{7i\\7qC:LwN\u001c\u000b\u0005\u0003\u000b\t9A\u0004\u0002 [\"1\u0011\u0011B@A\u0002y\t\u0011\u0001\u001d\u0005\u000b\u0003\u001b\u0001\bR1A\u0005\n\u0005=\u0011\u0001\u00049s_B,'\u000f^=IK2\u0004X#\u0001\r\t\u0013\u0005M\u0001\u000f#A!B\u0013A\u0012!\u00049s_B,'\u000f^=IK2\u0004\b\u0005C\u0004\u0002\u0018A$I!!\u0007\u0002\u000f\u0005$G\rS3maV!\u00111DA\u0010)\u0019\ti\"a\r\u00026A\u0019q+a\b\u0005\u0011\u0005\u0005\u0012Q\u0003b\u0001\u0003G\u0011\u0011\u0001U\t\u00047\u0006\u0015\u0002\u0007BA\u0014\u0003_\u0001RaHA\u0015\u0003[I1!a\u000b\u0003\u0005\u0011\u0001&o\u001c9\u0011\u0007]\u000by\u0003B\u0006\u00022\u0005}\u0011\u0011!A\u0001\u0006\u0003Q&aA0%c!A\u0011\u0011BA\u000b\u0001\u0004\ti\u0002C\u0004\u00028\u0005U\u0001\u0019\u0001\t\u0002\u0011!,G\u000e\u001d+fqRDq!a\u000fq\t\u0013\ti$\u0001\u0003c_>dGCBA \u0003\u000b\n9\u0005E\u0002 \u0003\u0003J1!a\u0011\u0003\u0005-\u0011un\u001c7fC:\u0004&o\u001c9\t\r\u001d\nI\u00041\u0001\u0011\u0011\u001d\t9$!\u000fA\u0002AAq!a\u0013q\t\u0003\ti%\u0001\u0003iK2\u0004Hc\u0001\t\u0002P!1q%!\u0013A\u0002AA!\"a\u0015q\u0011\u000b\u0007I\u0011AA+\u0003!AW-\u00193mKN\u001cXCAA \u0011)\tI\u0006\u001dE\u0001B\u0003&\u0011qH\u0001\nQ\u0016\fG\r\\3tg\u0002B!\"!\u0018q\u0011\u000b\u0007I\u0011AA+\u0003=\u0001(/\u001a4fe&\u0003f\u000fN*uC\u000e\\\u0007BCA1a\"\u0005\t\u0015)\u0003\u0002@\u0005\u0001\u0002O]3gKJL\u0005K\u001e\u001bTi\u0006\u001c7\u000e\t\u0005\u000b\u0003K\u0002\bR1A\u0005\u0002\u0005U\u0013a\u00059sK\u001a,'/\u0013)wm\u0005#GM]3tg\u0016\u001c\bBCA5a\"\u0005\t\u0015)\u0003\u0002@\u0005!\u0002O]3gKJL\u0005K\u001e\u001cBI\u0012\u0014Xm]:fg\u0002B!\"!\u001cq\u0011\u000b\u0007I\u0011AA+\u0003Eqw\u000e\u0016:bG\u0016\u001cV\u000f\u001d:fgNLwN\u001c\u0005\u000b\u0003c\u0002\b\u0012!Q!\n\u0005}\u0012A\u00058p)J\f7-Z*vaJ,7o]5p]\u0002\u0002")
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties.class */
public class SystemProperties extends AbstractMap<String, String> {
    public static <T> T exclusively(Function0<T> function0) {
        return (T) SystemProperties$.MODULE$.exclusively(function0);
    }

    public static BooleanProp headless() {
        return SystemProperties$.MODULE$.headless();
    }

    public static String help(String str) {
        return SystemProperties$.MODULE$.help(str);
    }

    public static BooleanProp noTraceSupression() {
        return SystemProperties$.MODULE$.noTraceSupression();
    }

    public static BooleanProp preferIPv4Stack() {
        return SystemProperties$.MODULE$.preferIPv4Stack();
    }

    public static BooleanProp preferIPv6Addresses() {
        return SystemProperties$.MODULE$.preferIPv6Addresses();
    }

    public static SystemProperties$ systemPropertiesToCompanion(SystemProperties systemProperties) {
        return SystemProperties$.MODULE$.systemPropertiesToCompanion(systemProperties);
    }

    public SystemProperties $minus$eq(String str) {
        wrapAccess(new SystemProperties$$anonfun$$minus$eq$1(this, str));
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public SystemProperties $plus$eq(Tuple2<String, String> tuple2) {
        wrapAccess(new SystemProperties$$anonfun$$plus$eq$1(this, tuple2));
        return this;
    }

    public boolean contains(String str) {
        Option wrapAccess = wrapAccess(new SystemProperties$$anonfun$contains$1(this, str));
        return !wrapAccess.isEmpty() && BoxesRunTime.unboxToBoolean(wrapAccess.get());
    }

    /* renamed from: default */
    public String mo6041default(String str) {
        return null;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public SystemProperties empty() {
        return new SystemProperties();
    }

    public Option<String> get(String str) {
        Option wrapAccess = wrapAccess(new SystemProperties$$anonfun$get$1(this, str));
        return wrapAccess.isEmpty() ? None$.MODULE$ : (Option) wrapAccess.get();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<String, String>> iterator() {
        Option wrapAccess = wrapAccess(new SystemProperties$$anonfun$iterator$1(this));
        return (Iterator) (wrapAccess.isEmpty() ? Iterator$.MODULE$.empty() : wrapAccess.get());
    }

    public /* synthetic */ boolean scala$sys$SystemProperties$$super$contains(String str) {
        return MapLike.Cclass.contains(this, str);
    }

    public <T> Option<T> wrapAccess(Function0<T> function0) {
        Some some;
        try {
            some = new Some(function0.apply());
        } catch (AccessControlException e) {
            some = None$.MODULE$;
        }
        return some;
    }
}
