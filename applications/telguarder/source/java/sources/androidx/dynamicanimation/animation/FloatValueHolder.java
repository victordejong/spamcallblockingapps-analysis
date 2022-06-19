package androidx.dynamicanimation.animation;
/* loaded from: classes-dex2jar.jar:androidx/dynamicanimation/animation/FloatValueHolder.class */
public final class FloatValueHolder {
    private float mValue = 0.0f;

    public FloatValueHolder() {
    }

    public FloatValueHolder(float f) {
        setValue(f);
    }

    public float getValue() {
        return this.mValue;
    }

    public void setValue(float f) {
        this.mValue = f;
    }
}
