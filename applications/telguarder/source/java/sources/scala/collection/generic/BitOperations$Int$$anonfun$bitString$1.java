package scala.collection.generic;

import com.facebook.appevents.AppEventsConstants;
import scala.Serializable;
import scala.collection.generic.BitOperations;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Int$$anonfun$bitString$1.class */
public final class BitOperations$Int$$anonfun$bitString$1 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public BitOperations$Int$$anonfun$bitString$1(BitOperations.Int r3) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToBoolean(obj));
    }

    public final String apply(boolean z) {
        return z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO;
    }
}
