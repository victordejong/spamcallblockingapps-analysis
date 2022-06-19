package p164m1;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import p076e0.C2518h;
import p087f0.C2697d;
/* renamed from: m1.c */
/* loaded from: classes-dex2jar.jar:m1/c.class */
public class C3620c {

    /* renamed from: m1.c$a */
    /* loaded from: classes-dex2jar.jar:m1/c$a.class */
    public static class C3621a implements TypeEvaluator<C2697d.C2698a[]> {

        /* renamed from: a */
        public C2697d.C2698a[] f11830a;

        @Override // android.animation.TypeEvaluator
        public C2697d.C2698a[] evaluate(float f, C2697d.C2698a[] c2698aArr, C2697d.C2698a[] c2698aArr2) {
            C2697d.C2698a[] c2698aArr3 = c2698aArr;
            C2697d.C2698a[] c2698aArr4 = c2698aArr2;
            if (C2697d.m3250a(c2698aArr3, c2698aArr4)) {
                if (!C2697d.m3250a(this.f11830a, c2698aArr3)) {
                    this.f11830a = C2697d.m3246e(c2698aArr3);
                }
                for (int i = 0; i < c2698aArr3.length; i++) {
                    C2697d.C2698a c2698a = this.f11830a[i];
                    C2697d.C2698a c2698a2 = c2698aArr3[i];
                    C2697d.C2698a c2698a3 = c2698aArr4[i];
                    Objects.requireNonNull(c2698a);
                    c2698a.f9277a = c2698a2.f9277a;
                    int i2 = 0;
                    while (true) {
                        float[] fArr = c2698a2.f9278b;
                        if (i2 < fArr.length) {
                            c2698a.f9278b[i2] = (c2698a3.f9278b[i2] * f) + ((1.0f - f) * fArr[i2]);
                            i2++;
                        }
                    }
                }
                return this.f11830a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:199:0x05fd, code lost:
        if (r14 == null) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0602, code lost:
        if (r19 == null) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0605, code lost:
        r0 = new android.animation.Animator[r19.size()];
        r0 = r19.iterator();
        r21 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x061d, code lost:
        if (r0.hasNext() == false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0620, code lost:
        r0[r21] = (android.animation.Animator) r0.next();
        r21 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0635, code lost:
        if (r15 != 0) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0638, code lost:
        r14.playTogether(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0641, code lost:
        r14.playSequentially(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0649, code lost:
        return r18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator m1974a(android.content.Context r9, android.content.res.Resources r10, android.content.res.Resources.Theme r11, org.xmlpull.v1.XmlPullParser r12, android.util.AttributeSet r13, android.animation.AnimatorSet r14, int r15, float r16) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p164m1.C3620c.m1974a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: b */
    public static Keyframe m1973b(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02c3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.PropertyValuesHolder m1972c(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 727
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p164m1.C3620c.m1972c(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* renamed from: d */
    public static boolean m1971d(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: e */
    public static ValueAnimator m1970e(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        float length;
        PropertyValuesHolder propertyValuesHolder;
        TypedArray m3487d = C2518h.m3487d(resources, theme, attributeSet, C3615a.f11813g);
        TypedArray m3487d2 = C2518h.m3487d(resources, theme, attributeSet, C3615a.f11817k);
        ValueAnimator valueAnimator2 = valueAnimator == null ? new ValueAnimator() : valueAnimator;
        int i = 300;
        if (C2518h.m3488c(xmlPullParser, "duration")) {
            i = m3487d.getInt(1, 300);
        }
        long j = i;
        long j2 = !C2518h.m3488c(xmlPullParser, "startOffset") ? 0 : m3487d.getInt(2, 0);
        int i2 = !C2518h.m3488c(xmlPullParser, "valueType") ? 4 : m3487d.getInt(7, 4);
        if (C2518h.m3488c(xmlPullParser, "valueFrom") && C2518h.m3488c(xmlPullParser, "valueTo")) {
            int i3 = i2;
            if (i2 == 4) {
                TypedValue peekValue = m3487d.peekValue(5);
                boolean z = peekValue != null;
                int i4 = z ? peekValue.type : 0;
                TypedValue peekValue2 = m3487d.peekValue(6);
                boolean z2 = peekValue2 != null;
                i3 = ((!z || !m1971d(i4)) && (!z2 || !m1971d(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder m1972c = m1972c(m3487d, i3, 5, 6, "");
            if (m1972c != null) {
                valueAnimator2.setValues(m1972c);
            }
        }
        valueAnimator2.setDuration(j);
        valueAnimator2.setStartDelay(j2);
        valueAnimator2.setRepeatCount(!C2518h.m3488c(xmlPullParser, "repeatCount") ? 0 : m3487d.getInt(3, 0));
        valueAnimator2.setRepeatMode(!C2518h.m3488c(xmlPullParser, "repeatMode") ? 1 : m3487d.getInt(4, 1));
        if (m3487d2 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator2;
            String m3489b = C2518h.m3489b(m3487d2, xmlPullParser, "pathData", 1);
            if (m3489b != null) {
                String m3489b2 = C2518h.m3489b(m3487d2, xmlPullParser, "propertyXName", 2);
                String m3489b3 = C2518h.m3489b(m3487d2, xmlPullParser, "propertyYName", 3);
                if (m3489b2 == null && m3489b3 == null) {
                    throw new InflateException(m3487d2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path m3247d = C2697d.m3247d(m3489b);
                PathMeasure pathMeasure = new PathMeasure(m3247d, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f2 = 0.0f;
                do {
                    length = f2 + pathMeasure.getLength();
                    arrayList.add(Float.valueOf(length));
                    f2 = length;
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(m3247d, false);
                int min = Math.min(100, ((int) (length / (0.5f * f))) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f3 = length / (min - 1);
                int i5 = 0;
                float f4 = 0.0f;
                int i6 = 0;
                while (true) {
                    propertyValuesHolder = null;
                    if (i6 >= min) {
                        break;
                    }
                    pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i5)).floatValue(), fArr3, null);
                    fArr[i6] = fArr3[0];
                    fArr2[i6] = fArr3[1];
                    f4 += f3;
                    int i7 = i5 + 1;
                    int i8 = i5;
                    if (i7 < arrayList.size()) {
                        i8 = i5;
                        if (f4 > ((Float) arrayList.get(i7)).floatValue()) {
                            pathMeasure2.nextContour();
                            i8 = i7;
                        }
                    }
                    i6++;
                    i5 = i8;
                }
                PropertyValuesHolder ofFloat = m3489b2 != null ? PropertyValuesHolder.ofFloat(m3489b2, fArr) : null;
                if (m3489b3 != null) {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(m3489b3, fArr2);
                }
                if (ofFloat == null) {
                    objectAnimator.setValues(propertyValuesHolder);
                } else if (propertyValuesHolder == null) {
                    objectAnimator.setValues(ofFloat);
                } else {
                    objectAnimator.setValues(ofFloat, propertyValuesHolder);
                }
            } else {
                objectAnimator.setPropertyName(C2518h.m3489b(m3487d2, xmlPullParser, "propertyName", 0));
            }
        }
        int i9 = 0;
        if (C2518h.m3488c(xmlPullParser, "interpolator")) {
            i9 = m3487d.getResourceId(0, 0);
        }
        if (i9 > 0) {
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, i9));
        }
        m3487d.recycle();
        if (m3487d2 != null) {
            m3487d2.recycle();
        }
        return valueAnimator2;
    }
}
