package org.spongycastle.math.field;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/field/ExtensionField.class */
public interface ExtensionField extends FiniteField {
    int getDegree();

    FiniteField getSubfield();
}
