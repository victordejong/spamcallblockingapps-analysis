package scala.sys;

import com.facebook.internal.ServerProtocol;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/sys/BooleanProp$$anonfun$valueIsTrue$1.class */
public final class BooleanProp$$anonfun$valueIsTrue$1 extends AbstractFunction1<String, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((String) obj));
    }

    public final boolean apply(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase != null && lowerCase.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
    }
}
