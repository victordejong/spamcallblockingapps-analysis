package androidx.palette.graphics;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Target.class */
public final class Target {
    public static final int INDEX_MAX = 2;
    public static final int INDEX_MIN = 0;
    public static final int INDEX_TARGET = 1;
    public static final int INDEX_WEIGHT_LUMA = 1;
    public static final int INDEX_WEIGHT_POP = 2;
    public static final int INDEX_WEIGHT_SAT = 0;
    public static final float MAX_DARK_LUMA = 0.45f;
    public static final float MAX_MUTED_SATURATION = 0.4f;
    public static final float MAX_NORMAL_LUMA = 0.7f;
    public static final float MIN_LIGHT_LUMA = 0.55f;
    public static final float MIN_NORMAL_LUMA = 0.3f;
    public static final float MIN_VIBRANT_SATURATION = 0.35f;
    public static final float TARGET_DARK_LUMA = 0.26f;
    public static final float TARGET_LIGHT_LUMA = 0.74f;
    public static final float TARGET_MUTED_SATURATION = 0.3f;
    public static final float TARGET_NORMAL_LUMA = 0.5f;
    public static final float TARGET_VIBRANT_SATURATION = 1.0f;
    public static final float WEIGHT_LUMA = 0.52f;
    public static final float WEIGHT_POPULATION = 0.24f;
    public static final float WEIGHT_SATURATION = 0.24f;
    public boolean mIsExclusive;
    public final float[] mLightnessTargets;
    public final float[] mSaturationTargets;
    public final float[] mWeights;
    public static final Target LIGHT_VIBRANT = new Target();
    public static final Target VIBRANT = new Target();
    public static final Target DARK_VIBRANT = new Target();
    public static final Target LIGHT_MUTED = new Target();
    public static final Target MUTED = new Target();
    public static final Target DARK_MUTED = new Target();

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Target$Builder.class */
    public static final class Builder {
        public final Target mTarget;

        public Builder() {
            this.mTarget = new Target();
        }

        public Builder(@NonNull Target target) {
            this.mTarget = new Target(target);
        }

        @NonNull
        public Target build() {
            return this.mTarget;
        }

        @NonNull
        public Builder setExclusive(boolean z) {
            this.mTarget.mIsExclusive = z;
            return this;
        }

        @NonNull
        public Builder setLightnessWeight(@FloatRange(from = 0.0d) float f) {
            this.mTarget.mWeights[1] = f;
            return this;
        }

        @NonNull
        public Builder setMaximumLightness(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
            this.mTarget.mLightnessTargets[2] = f;
            return this;
        }

        @NonNull
        public Builder setMaximumSaturation(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
            this.mTarget.mSaturationTargets[2] = f;
            return this;
        }

        @NonNull
        public Builder setMinimumLightness(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
            this.mTarget.mLightnessTargets[0] = f;
            return this;
        }

        @NonNull
        public Builder setMinimumSaturation(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
            this.mTarget.mSaturationTargets[0] = f;
            return this;
        }

        @NonNull
        public Builder setPopulationWeight(@FloatRange(from = 0.0d) float f) {
            this.mTarget.mWeights[2] = f;
            return this;
        }

        @NonNull
        public Builder setSaturationWeight(@FloatRange(from = 0.0d) float f) {
            this.mTarget.mWeights[0] = f;
            return this;
        }

        @NonNull
        public Builder setTargetLightness(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
            this.mTarget.mLightnessTargets[1] = f;
            return this;
        }

        @NonNull
        public Builder setTargetSaturation(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
            this.mTarget.mSaturationTargets[1] = f;
            return this;
        }
    }

    static {
        setDefaultLightLightnessValues(LIGHT_VIBRANT);
        setDefaultVibrantSaturationValues(LIGHT_VIBRANT);
        setDefaultNormalLightnessValues(VIBRANT);
        setDefaultVibrantSaturationValues(VIBRANT);
        setDefaultDarkLightnessValues(DARK_VIBRANT);
        setDefaultVibrantSaturationValues(DARK_VIBRANT);
        setDefaultLightLightnessValues(LIGHT_MUTED);
        setDefaultMutedSaturationValues(LIGHT_MUTED);
        setDefaultNormalLightnessValues(MUTED);
        setDefaultMutedSaturationValues(MUTED);
        setDefaultDarkLightnessValues(DARK_MUTED);
        setDefaultMutedSaturationValues(DARK_MUTED);
    }

    public Target() {
        this.mSaturationTargets = new float[3];
        this.mLightnessTargets = new float[3];
        this.mWeights = new float[3];
        this.mIsExclusive = true;
        setTargetDefaultValues(this.mSaturationTargets);
        setTargetDefaultValues(this.mLightnessTargets);
        setDefaultWeights();
    }

    public Target(@NonNull Target target) {
        this.mSaturationTargets = new float[3];
        this.mLightnessTargets = new float[3];
        this.mWeights = new float[3];
        this.mIsExclusive = true;
        float[] fArr = target.mSaturationTargets;
        float[] fArr2 = this.mSaturationTargets;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        float[] fArr3 = target.mLightnessTargets;
        float[] fArr4 = this.mLightnessTargets;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        float[] fArr5 = target.mWeights;
        float[] fArr6 = this.mWeights;
        System.arraycopy(fArr5, 0, fArr6, 0, fArr6.length);
    }

    public static void setDefaultDarkLightnessValues(Target target) {
        float[] fArr = target.mLightnessTargets;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    public static void setDefaultLightLightnessValues(Target target) {
        float[] fArr = target.mLightnessTargets;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    public static void setDefaultMutedSaturationValues(Target target) {
        float[] fArr = target.mSaturationTargets;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    public static void setDefaultNormalLightnessValues(Target target) {
        float[] fArr = target.mLightnessTargets;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    public static void setDefaultVibrantSaturationValues(Target target) {
        float[] fArr = target.mSaturationTargets;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    private void setDefaultWeights() {
        float[] fArr = this.mWeights;
        fArr[0] = 0.24f;
        fArr[1] = 0.52f;
        fArr[2] = 0.24f;
    }

    public static void setTargetDefaultValues(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    public float getLightnessWeight() {
        return this.mWeights[1];
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    public float getMaximumLightness() {
        return this.mLightnessTargets[2];
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    public float getMaximumSaturation() {
        return this.mSaturationTargets[2];
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    public float getMinimumLightness() {
        return this.mLightnessTargets[0];
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    public float getMinimumSaturation() {
        return this.mSaturationTargets[0];
    }

    public float getPopulationWeight() {
        return this.mWeights[2];
    }

    public float getSaturationWeight() {
        return this.mWeights[0];
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    public float getTargetLightness() {
        return this.mLightnessTargets[1];
    }

    @FloatRange(from = 0.0d, m37520to = 1.0d)
    public float getTargetSaturation() {
        return this.mSaturationTargets[1];
    }

    public boolean isExclusive() {
        return this.mIsExclusive;
    }

    public void normalizeWeights() {
        int length = this.mWeights.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            float f2 = this.mWeights[i];
            f = f;
            if (f2 > 0.0f) {
                f += f2;
            }
        }
        if (f != 0.0f) {
            int length2 = this.mWeights.length;
            for (int i2 = 0; i2 < length2; i2++) {
                float[] fArr = this.mWeights;
                if (fArr[i2] > 0.0f) {
                    fArr[i2] = fArr[i2] / f;
                }
            }
        }
    }
}
