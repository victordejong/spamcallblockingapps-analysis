package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Oscillator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.core.app.NotificationCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator.class */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    protected ConstraintAttribute mCustom;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet.class */
    public static class AlphaSet extends KeyCycleOscillator {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setAlpha(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet.class */
    public static class CustomSet extends KeyCycleOscillator {
        float[] value = new float[1];

        CustomSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            this.value[0] = get(f);
            this.mCustom.setInterpolatedValue(view, this.value);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator.class */
    public static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        static final int UNSET = -1;
        CurveFit mCurveFit;
        float[] mOffset;
        float mPathLength;
        float[] mPeriod;
        double[] mPosition;
        float[] mScale;
        double[] mSplineSlopeCache;
        double[] mSplineValueCache;
        float[] mValues;
        private final int mVariesBy;
        int mWaveShape;
        Oscillator mOscillator = new Oscillator();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        CycleOscillator(int i, int i2, int i3) {
            this.mWaveShape = i;
            this.mVariesBy = i2;
            this.mOscillator.setType(i);
            this.mValues = new float[i3];
            this.mPosition = new double[i3];
            this.mPeriod = new float[i3];
            this.mOffset = new float[i3];
            this.mScale = new float[i3];
        }

        private ConstraintAttribute get(String str, ConstraintAttribute.AttributeType attributeType) {
            ConstraintAttribute constraintAttribute;
            if (this.mCustomConstraints.containsKey(str)) {
                constraintAttribute = this.mCustomConstraints.get(str);
                if (constraintAttribute.getType() != attributeType) {
                    throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
                }
            } else {
                ConstraintAttribute constraintAttribute2 = new ConstraintAttribute(str, attributeType);
                this.mCustomConstraints.put(str, constraintAttribute2);
                constraintAttribute = constraintAttribute2;
            }
            return constraintAttribute;
        }

        public double getSlope(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                double d = f;
                curveFit.getSlope(d, this.mSplineSlopeCache);
                this.mCurveFit.getPos(d, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineSlopeCache;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            double value = this.mOscillator.getValue(d2);
            double slope = this.mOscillator.getSlope(d2);
            double[] dArr2 = this.mSplineSlopeCache;
            return dArr2[0] + (value * dArr2[1]) + (slope * this.mSplineValueCache[1]);
        }

        public double getValues(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                curveFit.getPos(f, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineValueCache;
                dArr[0] = this.mOffset[0];
                dArr[1] = this.mValues[0];
            }
            return this.mSplineValueCache[0] + (this.mOscillator.getValue(f) * this.mSplineValueCache[1]);
        }

        public void setPoint(int i, int i2, float f, float f2, float f3) {
            this.mPosition[i] = i2 / 100.0d;
            this.mPeriod[i] = f;
            this.mOffset[i] = f2;
            this.mValues[i] = f3;
        }

        public void setup(float f) {
            float[] fArr;
            this.mPathLength = f;
            double[][] dArr = new double[this.mPosition.length][2];
            float[] fArr2 = this.mValues;
            this.mSplineValueCache = new double[fArr2.length + 1];
            this.mSplineSlopeCache = new double[fArr2.length + 1];
            if (this.mPosition[0] > 0.0d) {
                this.mOscillator.addPoint(0.0d, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.mOffset[i];
                int i2 = 0;
                while (true) {
                    if (i2 < this.mValues.length) {
                        dArr[i2][1] = fArr[i2];
                        i2++;
                    }
                }
                this.mOscillator.addPoint(this.mPosition[i], this.mPeriod[i]);
            }
            this.mOscillator.normalize();
            double[] dArr3 = this.mPosition;
            if (dArr3.length > 1) {
                this.mCurveFit = CurveFit.get(0, dArr3, dArr);
            } else {
                this.mCurveFit = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet.class */
    public static class ElevationSet extends KeyCycleOscillator {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(f));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort.class */
    private static class IntDoubleSort {
        private IntDoubleSort() {
        }

        private static int partition(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i >= i2) {
                    swap(iArr, fArr, i5, i2);
                    return i5;
                }
                int i6 = i5;
                if (iArr[i] <= i3) {
                    swap(iArr, fArr, i5, i);
                    i6 = i5 + 1;
                }
                i++;
                i4 = i6;
            }
        }

        static void sort(int[] iArr, float[] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                int i6 = i4 - 1;
                int i7 = iArr2[i6];
                i3 = i6;
                if (i5 < i7) {
                    int partition = partition(iArr, fArr, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = partition - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = partition + 1;
                }
            }
        }

        private static void swap(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort.class */
    private static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }

        private static int partition(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i >= i2) {
                    swap(iArr, fArr, fArr2, i5, i2);
                    return i5;
                }
                int i6 = i5;
                if (iArr[i] <= i3) {
                    swap(iArr, fArr, fArr2, i5, i);
                    i6 = i5 + 1;
                }
                i++;
                i4 = i6;
            }
        }

        static void sort(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                int i6 = i4 - 1;
                int i7 = iArr2[i6];
                i3 = i6;
                if (i5 < i7) {
                    int partition = partition(iArr, fArr, fArr2, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = partition - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = partition + 1;
                }
            }
        }

        private static void swap(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
            float f2 = fArr2[i];
            fArr2[i] = fArr2[i2];
            fArr2[i2] = f2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet.class */
    public static class PathRotateSet extends KeyCycleOscillator {
        PathRotateSet() {
        }

        public void setPathRotate(View view, float f, double d, double d2) {
            view.setRotation(get(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet.class */
    public static class ProgressSet extends KeyCycleOscillator {
        boolean mNoMethod = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f));
            } else if (this.mNoMethod) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.mNoMethod = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf(get(f)));
                } catch (IllegalAccessException e2) {
                    Log.e(KeyCycleOscillator.TAG, "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e(KeyCycleOscillator.TAG, "unable to setProgress", e3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet.class */
    public static class RotationSet extends KeyCycleOscillator {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotation(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset.class */
    public static class RotationXset extends KeyCycleOscillator {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotationX(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset.class */
    public static class RotationYset extends KeyCycleOscillator {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotationY(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset.class */
    public static class ScaleXset extends KeyCycleOscillator {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setScaleX(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset.class */
    public static class ScaleYset extends KeyCycleOscillator {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setScaleY(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset.class */
    public static class TranslationXset extends KeyCycleOscillator {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationX(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset.class */
    public static class TranslationYset extends KeyCycleOscillator {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationY(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset.class */
    public static class TranslationZset extends KeyCycleOscillator {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(f));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint.class */
    public static class WavePoint {
        float mOffset;
        float mPeriod;
        int mPosition;
        float mValue;

        public WavePoint(int i, float f, float f2, float f3) {
            this.mPosition = i;
            this.mValue = f3;
            this.mOffset = f2;
            this.mPeriod = f;
        }
    }

    public static KeyCycleOscillator makeSpline(String str) {
        if (str.startsWith("CUSTOM")) {
            return new CustomSet();
        }
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    z = false;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    z = true;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    z = true;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals(NotificationCompat.CATEGORY_PROGRESS)) {
                    z = true;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    z = true;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    z = true;
                    break;
                }
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    z = true;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    z = true;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    z = true;
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    z = true;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    z = true;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new RotationXset();
            case true:
                return new RotationYset();
            case true:
                return new TranslationXset();
            case true:
                return new TranslationYset();
            case true:
                return new TranslationZset();
            case true:
                return new ProgressSet();
            case true:
                return new ScaleXset();
            case true:
                return new ScaleYset();
            case true:
                return new AlphaSet();
            case true:
                return new RotationSet();
            case true:
                return new ElevationSet();
            case true:
                return new PathRotateSet();
            case true:
                return new AlphaSet();
            case true:
                return new AlphaSet();
            default:
                return null;
        }
    }

    public float get(float f) {
        return (float) this.mCycleOscillator.getValues(f);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f) {
        return (float) this.mCycleOscillator.getSlope(f);
    }

    public void setPoint(int i, int i2, int i3, float f, float f2, float f3) {
        this.mWavePoints.add(new WavePoint(i, f, f2, f3));
        if (i3 != -1) {
            this.mVariesBy = i3;
        }
        this.mWaveShape = i2;
    }

    public void setPoint(int i, int i2, int i3, float f, float f2, float f3, ConstraintAttribute constraintAttribute) {
        this.mWavePoints.add(new WavePoint(i, f, f2, f3));
        if (i3 != -1) {
            this.mVariesBy = i3;
        }
        this.mWaveShape = i2;
        this.mCustom = constraintAttribute;
    }

    public abstract void setProperty(View view, float f);

    public void setType(String str) {
        this.mType = str;
    }

    public void setup(float f) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.motion.widget.KeyCycleOscillator.1
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = new double[size][2];
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mVariesBy, size);
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        int i = 0;
        while (it.hasNext()) {
            WavePoint next = it.next();
            dArr[i] = next.mPeriod * 0.01d;
            dArr2[i][0] = next.mValue;
            dArr2[i][1] = next.mOffset;
            this.mCycleOscillator.setPoint(i, next.mPosition, next.mPeriod, next.mOffset, next.mValue);
            i++;
        }
        this.mCycleOscillator.setup(f);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        while (it.hasNext()) {
            WavePoint next = it.next();
            str = str + "[" + next.mPosition + " , " + decimalFormat.format(next.mValue) + "] ";
        }
        return str;
    }

    public boolean variesByPath() {
        boolean z = true;
        if (this.mVariesBy != 1) {
            z = false;
        }
        return z;
    }
}
