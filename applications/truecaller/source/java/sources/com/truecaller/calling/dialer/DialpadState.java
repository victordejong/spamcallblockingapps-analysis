package com.truecaller.calling.dialer;

import com.truecaller.C2752R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B%\b\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/calling/dialer/DialpadState;", "", "", "colorAttr", "I", "getColorAttr", "()I", "drawable", "getDrawable", "", "scale", "F", "getScale", "()F", "<init>", "(Ljava/lang/String;IFII)V", "DIALPAD_DOWN", "DIALPAD_UP", "NUMBER_ENTERED", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/dialer/DialpadState.class */
public enum DialpadState {
    DIALPAD_DOWN(0.85f, 2130970017, C2752R.C2753drawable.ic_dialer_toolbar_dialpad),
    DIALPAD_UP(1.0f, 2130970017, C2752R.C2753drawable.ic_dialer_toolbar_dialpad),
    NUMBER_ENTERED(1.0f, 2130969964, 2131231665);
    
    private final int colorAttr;
    private final int drawable;
    private final float scale;

    DialpadState(float f, int i, int i2) {
        this.scale = f;
        this.colorAttr = i;
        this.drawable = i2;
    }

    public final int getColorAttr() {
        return this.colorAttr;
    }

    public final int getDrawable() {
        return this.drawable;
    }

    public final float getScale() {
        return this.scale;
    }
}
