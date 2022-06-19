package scala.collection.generic;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005]a!B\u0001\u0003\u0003\u0003I!!\u0004)be6\u000b\u0007OR1di>\u0014\u0018P\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'\r\u00011\u0002\u000e\t\u0004\u00195yQ\"\u0001\u0002\n\u00059\u0011!!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0002\u0011#1\u0001A!\u0002\n\u0001\u0005\u0004\u0019\"AA\"D+\r!2EK\t\u0003+e\u0001\"AF\f\u000e\u0003\u0019I!\u0001\u0007\u0004\u0003\u000f9{G\u000f[5oOJ\u0019!\u0004\b\u0017\u0007\tm\u0001\u0001!\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005;\u0001\u0012\u0013&D\u0001\u001f\u0015\tyB!\u0001\u0005qCJ\fG\u000e\\3m\u0013\t\tcD\u0001\u0004QCJl\u0015\r\u001d\t\u0003!\r\"Q\u0001J\tC\u0002\u0015\u0012\u0011\u0001W\t\u0003+\u0019\u0002\"AF\u0014\n\u0005!2!aA!osB\u0011\u0001C\u000b\u0003\u0006WE\u0011\r!\n\u0002\u00023B\u0012QF\r\t\u0007;9\u0012\u0013\u0006M\u0019\n\u0005=r\"A\u0003)be6\u000b\u0007\u000fT5lKB!\u0001#\u0005\u0012*!\t\u0001\"\u0007B\u00054#\u0005\u0005\t\u0011!B\u0001K\t\u0019q\fJ\u0019\u0011\u00071)t\"\u0003\u00027\u0005\t1r)\u001a8fe&\u001c\u0007+\u0019:NCB\u001cu.\u001c9b]&|g\u000eC\u00039\u0001\u0011\u0005\u0011(\u0001\u0004=S:LGO\u0010\u000b\u0002uA\u0019A\u0002A\b\u0006\tq\u0002\u0001!\u0010\u0002\b\u001b\u0006\u00048i\u001c7ma\rq\u0004i\u0011\t\u0005!Ey$\t\u0005\u0002\u0011\u0001\u0012I\u0011iOA\u0001\u0002\u0003\u0015\t!\n\u0002\u0004?\u0012\u0012\u0004C\u0001\tD\t%!5(!A\u0001\u0002\u000b\u0005QEA\u0002`IMBQA\u0012\u0001\u0005B\u001d\u000b!B\\3x\u0005VLG\u000eZ3s+\rA5KV\u000b\u0002\u0013B!!*T(Y\u001b\u0005Y%B\u0001'\u0005\u0003\u001diW\u000f^1cY\u0016L!AT&\u0003\u000f\t+\u0018\u000e\u001c3feB!a\u0003\u0015*V\u0013\t\tfA\u0001\u0004UkBdWM\r\t\u0003!M#Q\u0001V#C\u0002\u0015\u0012\u0011a\u0013\t\u0003!Y#QaV#C\u0002\u0015\u0012\u0011A\u0016\t\u0005!E\u0011V\u000bC\u0003[\u0001\u0019\u00051,A\u0006oK^\u001cu.\u001c2j]\u0016\u0014Xc\u0001/cIV\tQ\f\u0005\u0003\u001e=\u0002,\u0017BA0\u001f\u0005!\u0019u.\u001c2j]\u0016\u0014\b\u0003\u0002\fQC\u000e\u0004\"\u0001\u00052\u0005\u000bQK&\u0019A\u0013\u0011\u0005A!G!B,Z\u0005\u0004)\u0003\u0003\u0002\t\u0012C\u000e4Aa\u001a\u0001\u0001Q\n\t2)\u00198D_6\u0014\u0017N\\3Ge>lW*\u00199\u0016\u0007%THpE\u0002gU6\u0004\"AF6\n\u000514!AB!osJ+g\rE\u0003\r]BDX0\u0003\u0002p\u0005\tq1)\u00198D_6\u0014\u0017N\\3Ge>l\u0007gA9tmB!\u0001#\u0005:v!\t\u00012\u000fB\u0005uM\u0006\u0005\t\u0011!B\u0001K\t\u0019q\f\n\u001b\u0011\u0005A1H!C<g\u0003\u0003\u0005\tQ!\u0001&\u0005\ryF%\u000e\t\u0005-AK8\u0010\u0005\u0002\u0011u\u0012)AK\u001ab\u0001KA\u0011\u0001\u0003 \u0003\u0006/\u001a\u0014\r!\n\t\u0005!EI8\u0010C\u00039M\u0012\u0005q\u0010\u0006\u0002\u0002\u0002A)\u00111\u00014zw6\t\u0001\u0001C\u0004\u0002\b\u0019$\t!!\u0003\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\t\u0005-\u0011Q\u0002\t\u0005;yCX\u0010\u0003\u0005\u0002\u0010\u0005\u0015\u0001\u0019AA\t\u0003\u00111'o\\7\u0011\u0007\u0005\r1\bC\u0004\u0002\b\u0019$\t!!\u0006\u0015\u0005\u0005-\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/ParMapFactory.class */
public abstract class ParMapFactory<CC extends ParMap<Object, Object>> extends GenMapFactory<CC> implements GenericParMapCompanion<CC> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/ParMapFactory$CanCombineFromMap.class */
    public class CanCombineFromMap<K, V> implements CanCombineFrom<CC, Tuple2<K, V>, CC> {
        public final /* synthetic */ ParMapFactory $outer;

        public CanCombineFromMap(ParMapFactory<CC> parMapFactory) {
            Objects.requireNonNull(parMapFactory);
            this.$outer = parMapFactory;
        }

        @Override // scala.collection.generic.CanCombineFrom, scala.collection.generic.CanBuildFrom
        public Combiner<Tuple2<K, V>, CC> apply() {
            return scala$collection$generic$ParMapFactory$CanCombineFromMap$$$outer().newCombiner();
        }

        public Combiner<Tuple2<K, V>, CC> apply(CC cc) {
            return cc.genericMapCombiner();
        }

        public /* synthetic */ ParMapFactory scala$collection$generic$ParMapFactory$CanCombineFromMap$$$outer() {
            return this.$outer;
        }
    }

    @Override // scala.collection.generic.GenMapFactory
    public <K, V> Builder<Tuple2<K, V>, CC> newBuilder() {
        return newCombiner();
    }

    @Override // scala.collection.generic.GenericParMapCompanion
    public abstract <K, V> Combiner<Tuple2<K, V>, CC> newCombiner();
}
