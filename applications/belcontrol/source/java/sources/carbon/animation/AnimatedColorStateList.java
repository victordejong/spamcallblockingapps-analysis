package carbon.animation;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.StateSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import java.lang.reflect.Field;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:carbon/animation/AnimatedColorStateList.class */
public class AnimatedColorStateList extends ColorStateList {
    public static final Parcelable.Creator<AnimatedColorStateList> CREATOR;

    /* renamed from: f */
    public static Field f2217f;

    /* renamed from: g */
    public static Field f2218g;

    /* renamed from: h */
    public static Field f2219h;

    /* renamed from: a */
    public final int[][] f2220a;

    /* renamed from: b */
    public int[] f2221b = null;

    /* renamed from: c */
    public ValueAnimator f2222c;

    /* renamed from: d */
    public int f2223d;

    /* renamed from: carbon.animation.AnimatedColorStateList$a */
    /* loaded from: classes-dex2jar.jar:carbon/animation/AnimatedColorStateList$a.class */
    public static final class C0299a implements Parcelable.Creator<AnimatedColorStateList> {
        /* JADX WARN: Type inference failed for: r0v3, types: [int[], int[][]] */
        /* renamed from: a */
        public AnimatedColorStateList createFromParcel(Parcel parcel) {
            int readInt = parcel.readInt();
            ?? r0 = new int[readInt];
            for (int i = 0; i < readInt; i++) {
                r0[i] = parcel.createIntArray();
            }
            return AnimatedColorStateList.m5400b(new ColorStateList(r0, parcel.createIntArray()), null);
        }

        /* renamed from: b */
        public AnimatedColorStateList[] newArray(int i) {
            return new AnimatedColorStateList[i];
        }
    }

    static {
        try {
            Field declaredField = ColorStateList.class.getDeclaredField("mStateSpecs");
            f2217f = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = ColorStateList.class.getDeclaredField("mColors");
            f2218g = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = ColorStateList.class.getDeclaredField("mDefaultColor");
            f2219h = declaredField3;
            declaredField3.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
        CREATOR = new C0299a();
    }

    public AnimatedColorStateList(int[][] iArr, int[] iArr2, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        super(iArr, iArr2);
        this.f2222c = null;
        this.f2220a = iArr;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        this.f2222c = ofInt;
        ofInt.setEvaluator(new rc0());
        this.f2222c.setDuration(200L);
        this.f2222c.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f2222c.addUpdateListener(new u90(this, animatorUpdateListener));
    }

    /* renamed from: b */
    public static AnimatedColorStateList m5400b(ColorStateList colorStateList, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        try {
            int[][] iArr = (int[][]) f2217f.get(colorStateList);
            int[] iArr2 = (int[]) f2218g.get(colorStateList);
            int intValue = ((Integer) f2219h.get(colorStateList)).intValue();
            AnimatedColorStateList animatedColorStateList = new AnimatedColorStateList(iArr, iArr2, animatorUpdateListener);
            f2219h.set(animatedColorStateList, Integer.valueOf(intValue));
            return animatedColorStateList;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m5398d(ValueAnimator.AnimatorUpdateListener animatorUpdateListener, ValueAnimator valueAnimator) {
        synchronized (this) {
            this.f2223d = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            animatorUpdateListener.onAnimationUpdate(valueAnimator);
        }
    }

    /* renamed from: a */
    public final void m5401a() {
        this.f2222c.cancel();
    }

    /* renamed from: e */
    public void m5397e(int[] iArr) {
        if (Arrays.equals(iArr, this.f2221b)) {
            return;
        }
        if (this.f2221b != null) {
            m5401a();
        }
        for (int[] iArr2 : this.f2220a) {
            if (StateSet.stateSetMatches(iArr2, iArr)) {
                int colorForState = super.getColorForState(this.f2221b, getDefaultColor());
                this.f2222c.setIntValues(colorForState, super.getColorForState(iArr, getDefaultColor()));
                this.f2221b = iArr;
                this.f2223d = colorForState;
                this.f2222c.start();
                return;
            }
        }
        this.f2221b = iArr;
    }

    @Override // android.content.res.ColorStateList
    public int getColorForState(int[] iArr, int i) {
        synchronized (this) {
            if (Arrays.equals(iArr, this.f2221b)) {
                return this.f2223d;
            }
            return super.getColorForState(iArr, i);
        }
    }
}
