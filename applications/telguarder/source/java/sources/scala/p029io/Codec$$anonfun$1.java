package scala.p029io;

import java.nio.charset.CharacterCodingException;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* renamed from: scala.io.Codec$$anonfun$1 */
/* loaded from: classes3-dex2jar.jar:scala/io/Codec$$anonfun$1.class */
public final class Codec$$anonfun$1 extends AbstractFunction1<CharacterCodingException, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;

    public Codec$$anonfun$1(Codec codec) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        throw apply((CharacterCodingException) obj);
    }

    public final Nothing$ apply(CharacterCodingException characterCodingException) {
        throw characterCodingException;
    }
}
