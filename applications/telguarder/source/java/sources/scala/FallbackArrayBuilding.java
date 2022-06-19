package scala;

import scala.Predef;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.ArraySeq;
import scala.collection.mutable.ArraySeq$;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m2A!\u0001\u0002\u0001\u000b\t)b)\u00197mE\u0006\u001c7.\u0011:sCf\u0014U/\u001b7eS:<'\"A\u0002\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0011\u0001A\u0002\t\u0003\u000f!i\u0011AA\u0005\u0003\u0013\t\u0011a!\u00118z%\u00164\u0007\"B\u0006\u0001\t\u0003a\u0011A\u0002\u001fj]&$h\bF\u0001\u000e!\t9\u0001\u0001C\u0003\u0010\u0001\u0011\r\u0001#\u0001\u000bgC2d'-Y2l\u0007\u0006t')^5mI\u001a\u0013x.\\\u000b\u0003#)\"\"A\u0005\u001a\u0011\u000bMA\"$\u000b\u0017\u000e\u0003QQ!!\u0006\f\u0002\u000f\u001d,g.\u001a:jG*\u0011qCA\u0001\u000bG>dG.Z2uS>t\u0017BA\r\u0015\u00051\u0019\u0015M\u001c\"vS2$gI]8na\tY\u0002\u0005E\u0002\b9yI!!\b\u0002\u0003\u000b\u0005\u0013(/Y=\u0011\u0005}\u0001C\u0002\u0001\u0003\nC9\t\t\u0011!A\u0003\u0002\t\u00121a\u0018\u00132#\t\u0019c\u0005\u0005\u0002\bI%\u0011QE\u0001\u0002\b\u001d>$\b.\u001b8h!\t9q%\u0003\u0002)\u0005\t\u0019\u0011I\\=\u0011\u0005}QC!B\u0016\u000f\u0005\u0004\u0011#!\u0001+\u0011\u00075\u0002\u0014&D\u0001/\u0015\tyc#A\u0004nkR\f'\r\\3\n\u0005Er#\u0001C!se\u0006L8+Z9\t\u000bMr\u00019\u0001\u001b\u0002\u00035\u0004\"!\u000e\u001d\u000f\u0005\u001d1\u0014BA\u001c\u0003\u0003\u0019\u0001&/\u001a3fM&\u0011\u0011H\u000f\u0002\u000e\tVlW._%na2L7-\u001b;\u000b\u0005]\u0012\u0001")
/* loaded from: classes3-dex2jar.jar:scala/FallbackArrayBuilding.class */
public class FallbackArrayBuilding {
    public <T> CanBuildFrom<Object, T, ArraySeq<T>> fallbackCanBuildFrom(Predef.DummyImplicit dummyImplicit) {
        return new CanBuildFrom<Object, T, ArraySeq<T>>(this) { // from class: scala.FallbackArrayBuilding$$anon$1
            @Override // scala.collection.generic.CanBuildFrom
            public Builder<T, ArraySeq<T>> apply() {
                return ArraySeq$.MODULE$.newBuilder();
            }

            @Override // scala.collection.generic.CanBuildFrom
            public Builder<T, ArraySeq<T>> apply(Object obj) {
                return ArraySeq$.MODULE$.newBuilder();
            }
        };
    }
}
