package scala.reflect;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1.class */
public final class ClassManifestDeprecatedApis$$anonfun$subargs$1 extends AbstractFunction2<OptManifest<?>, OptManifest<?>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ClassManifestDeprecatedApis$$anonfun$subargs$1(ClassTag<T> classTag) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToBoolean(apply((OptManifest) obj, (OptManifest) obj2));
    }

    public final boolean apply(OptManifest<?> optManifest, OptManifest<?> optManifest2) {
        boolean z;
        Tuple2 tuple2 = new Tuple2(optManifest, optManifest2);
        if (tuple2.mo269_1() instanceof ClassTag) {
            ClassTag classTag = (ClassTag) tuple2.mo269_1();
            if (tuple2.mo268_2() instanceof ClassTag) {
                z = classTag.$less$colon$less((ClassTag) tuple2.mo268_2());
                return z;
            }
        }
        z = tuple2.mo269_1() == NoManifest$.MODULE$ && tuple2.mo268_2() == NoManifest$.MODULE$;
        return z;
    }
}
