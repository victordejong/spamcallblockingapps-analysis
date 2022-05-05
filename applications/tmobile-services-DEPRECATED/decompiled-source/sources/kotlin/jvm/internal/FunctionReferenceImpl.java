package kotlin.jvm.internal;

import kotlin.SinceKotlin;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/FunctionReferenceImpl.class */
public class FunctionReferenceImpl extends FunctionReference {
    @SinceKotlin
    public FunctionReferenceImpl(int i, Class cls, String str, String str2, int i2) {
        super(i, CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    @SinceKotlin
    public FunctionReferenceImpl(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2, i2);
    }
}
