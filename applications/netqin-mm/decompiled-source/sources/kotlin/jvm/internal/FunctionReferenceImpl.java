package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9871d;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/FunctionReferenceImpl.class */
public class FunctionReferenceImpl extends FunctionReference {
    public final String name;
    public final AbstractC9871d owner;
    public final String signature;

    public FunctionReferenceImpl(int i, AbstractC9871d dVar, String str, String str2) {
        super(i);
        this.owner = dVar;
        this.name = str;
        this.signature = str2;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getName() {
        return this.name;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9871d getOwner() {
        return this.owner;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return this.signature;
    }
}
