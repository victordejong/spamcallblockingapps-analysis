package scala.util.matching;

import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.collection.Seq;
import scala.collection.immutable.IndexedSeq$;
import scala.runtime.RichInt$;
import scala.util.matching.Regex;
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Groups$.class */
public class Regex$Groups$ {
    public static final Regex$Groups$ MODULE$ = null;

    static {
        new Regex$Groups$();
    }

    public Regex$Groups$() {
        MODULE$ = this;
    }

    public Option<Seq<String>> unapplySeq(Regex.Match match) {
        Some some;
        if (match.groupCount() > 0) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            some = new Some(richInt$.to$extension0(1, match.groupCount()).map(new Regex$Groups$$anonfun$unapplySeq$4(match), IndexedSeq$.MODULE$.canBuildFrom()));
        } else {
            some = None$.MODULE$;
        }
        return some;
    }
}
