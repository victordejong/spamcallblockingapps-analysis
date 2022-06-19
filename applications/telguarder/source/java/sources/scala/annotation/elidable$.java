package scala.annotation;

import com.facebook.ads.AdError;
import com.pubmatic.sdk.video.POBVastError;
import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Tuple2;
import scala.collection.immutable.Map;
import scala.collection.immutable.Map$;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/annotation/elidable$.class */
public final class elidable$ {
    public static final elidable$ MODULE$ = null;
    private final int ALL;
    private final int ASSERTION;
    private final int CONFIG;
    private final int FINE;
    private final int FINER;
    private final int FINEST;
    private final int INFO;
    private final int MAXIMUM;
    private final int MINIMUM;
    private final int OFF;
    private final int SEVERE;
    private final int WARNING;
    private final Map<String, Object> byName;

    static {
        new elidable$();
    }

    private elidable$() {
        MODULE$ = this;
        Map$ Map = Predef$.MODULE$.Map();
        Predef$ predef$ = Predef$.MODULE$;
        Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple2 = new Tuple2(Predef$.MODULE$.ArrowAssoc("FINEST"), BoxesRunTime.boxToInteger(300));
        Predef$ArrowAssoc$ predef$ArrowAssoc$2 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple22 = new Tuple2(Predef$.MODULE$.ArrowAssoc("FINER"), BoxesRunTime.boxToInteger(POBVastError.GENERAL_LINEAR_ERROR));
        Predef$ArrowAssoc$ predef$ArrowAssoc$3 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple23 = new Tuple2(Predef$.MODULE$.ArrowAssoc("FINE"), BoxesRunTime.boxToInteger(500));
        Predef$ArrowAssoc$ predef$ArrowAssoc$4 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple24 = new Tuple2(Predef$.MODULE$.ArrowAssoc("CONFIG"), BoxesRunTime.boxToInteger(700));
        Predef$ArrowAssoc$ predef$ArrowAssoc$5 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple25 = new Tuple2(Predef$.MODULE$.ArrowAssoc("INFO"), BoxesRunTime.boxToInteger(800));
        Predef$ArrowAssoc$ predef$ArrowAssoc$6 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple26 = new Tuple2(Predef$.MODULE$.ArrowAssoc("WARNING"), BoxesRunTime.boxToInteger(POBVastError.UNDEFINED_ERROR));
        Predef$ArrowAssoc$ predef$ArrowAssoc$7 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple27 = new Tuple2(Predef$.MODULE$.ArrowAssoc("SEVERE"), BoxesRunTime.boxToInteger(1000));
        Predef$ArrowAssoc$ predef$ArrowAssoc$8 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple28 = new Tuple2(Predef$.MODULE$.ArrowAssoc("ASSERTION"), BoxesRunTime.boxToInteger(AdError.SERVER_ERROR_CODE));
        Predef$ArrowAssoc$ predef$ArrowAssoc$9 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple29 = new Tuple2(Predef$.MODULE$.ArrowAssoc("ALL"), BoxesRunTime.boxToInteger(Integer.MIN_VALUE));
        Predef$ArrowAssoc$ predef$ArrowAssoc$10 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple210 = new Tuple2(Predef$.MODULE$.ArrowAssoc("OFF"), BoxesRunTime.boxToInteger(Integer.MAX_VALUE));
        Predef$ArrowAssoc$ predef$ArrowAssoc$11 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple211 = new Tuple2(Predef$.MODULE$.ArrowAssoc("MAXIMUM"), BoxesRunTime.boxToInteger(Integer.MAX_VALUE));
        Predef$ArrowAssoc$ predef$ArrowAssoc$12 = Predef$ArrowAssoc$.MODULE$;
        this.byName = (Map) Map.apply(predef$.wrapRefArray(new Tuple2[]{tuple2, tuple22, tuple23, tuple24, tuple25, tuple26, tuple27, tuple28, tuple29, tuple210, tuple211, new Tuple2(Predef$.MODULE$.ArrowAssoc("MINIMUM"), BoxesRunTime.boxToInteger(Integer.MIN_VALUE))}));
    }

    public final int ALL() {
        return Integer.MIN_VALUE;
    }

    public final int ASSERTION() {
        return AdError.SERVER_ERROR_CODE;
    }

    public final int CONFIG() {
        return 700;
    }

    public final int FINE() {
        return 500;
    }

    public final int FINER() {
        return POBVastError.GENERAL_LINEAR_ERROR;
    }

    public final int FINEST() {
        return 300;
    }

    public final int INFO() {
        return 800;
    }

    public final int MAXIMUM() {
        return Integer.MAX_VALUE;
    }

    public final int MINIMUM() {
        return Integer.MIN_VALUE;
    }

    public final int OFF() {
        return Integer.MAX_VALUE;
    }

    public final int SEVERE() {
        return 1000;
    }

    public final int WARNING() {
        return POBVastError.UNDEFINED_ERROR;
    }

    public Map<String, Object> byName() {
        return this.byName;
    }
}
