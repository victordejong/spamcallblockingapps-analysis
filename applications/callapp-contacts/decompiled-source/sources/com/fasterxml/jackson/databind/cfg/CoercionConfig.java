package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/CoercionConfig.class */
public class CoercionConfig implements Serializable {
    private static final int INPUT_SHAPE_COUNT = CoercionInputShape.values().length;
    protected Boolean _acceptBlankAsEmpty;
    protected final CoercionAction[] _coercionsByShape;

    public CoercionConfig() {
        this._coercionsByShape = new CoercionAction[INPUT_SHAPE_COUNT];
        this._acceptBlankAsEmpty = Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CoercionConfig(CoercionConfig coercionConfig) {
        this._acceptBlankAsEmpty = coercionConfig._acceptBlankAsEmpty;
        CoercionAction[] coercionActionArr = coercionConfig._coercionsByShape;
        this._coercionsByShape = (CoercionAction[]) Arrays.copyOf(coercionActionArr, coercionActionArr.length);
    }

    public CoercionAction findAction(CoercionInputShape coercionInputShape) {
        return this._coercionsByShape[coercionInputShape.ordinal()];
    }

    public Boolean getAcceptBlankAsEmpty() {
        return this._acceptBlankAsEmpty;
    }
}
