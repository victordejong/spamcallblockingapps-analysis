package p1727n3.p1792h0.p1793a.p1794a;

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
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import p1727n3.p1807k.p1812c.C26495c;
/* renamed from: n3.h0.a.a.d */
/* loaded from: classes-dex2jar.jar:n3/h0/a/a/d.class */
public class C26257d {

    /* renamed from: n3.h0.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/d$a.class */
    public static class C26258a implements TypeEvaluator<C26495c[]> {

        /* renamed from: a */
        public C26495c[] f73198a;

        @Override // android.animation.TypeEvaluator
        public C26495c[] evaluate(float f, C26495c[] c26495cArr, C26495c[] c26495cArr2) {
            C26495c[] c26495cArr3 = c26495cArr;
            C26495c[] c26495cArr4 = c26495cArr2;
            if (MediaSessionCompat.m43220m(c26495cArr3, c26495cArr4)) {
                if (!MediaSessionCompat.m43220m(this.f73198a, c26495cArr3)) {
                    this.f73198a = MediaSessionCompat.m43270T(c26495cArr3);
                }
                for (int i = 0; i < c26495cArr3.length; i++) {
                    C26495c c26495c = this.f73198a[i];
                    C26495c c26495c2 = c26495cArr3[i];
                    C26495c c26495c3 = c26495cArr4[i];
                    Objects.requireNonNull(c26495c);
                    c26495c.f74281a = c26495c2.f74281a;
                    int i2 = 0;
                    while (true) {
                        float[] fArr = c26495c2.f74282b;
                        if (i2 < fArr.length) {
                            c26495c.f74282b[i2] = (c26495c3.f74282b[i2] * f) + ((1.0f - f) * fArr[i2]);
                            i2++;
                        }
                    }
                }
                return this.f73198a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:200:0x061c, code lost:
        if (r14 == null) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0621, code lost:
        if (r19 == null) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0624, code lost:
        r0 = new android.animation.Animator[r19.size()];
        r0 = r19.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0639, code lost:
        if (r0.hasNext() == false) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x063c, code lost:
        r0[r22] = (android.animation.Animator) r0.next();
        r22 = r22 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0651, code lost:
        if (r15 != 0) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0654, code lost:
        r14.playTogether(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x065d, code lost:
        r14.playSequentially(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0665, code lost:
        return r18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator m2253a(android.content.Context r9, android.content.res.Resources r10, android.content.res.Resources.Theme r11, org.xmlpull.v1.XmlPullParser r12, android.util.AttributeSet r13, android.animation.AnimatorSet r14, int r15, float r16) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1792h0.p1793a.p1794a.C26257d.m2253a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: b */
    public static Keyframe m2252b(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02a6  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.PropertyValuesHolder m2251c(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1792h0.p1793a.p1794a.C26257d.m2251c(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* renamed from: d */
    public static boolean m2250d(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: e */
    public static ValueAnimator m2249e(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        float length;
        PropertyValuesHolder propertyValuesHolder;
        TypedArray m43263W0 = MediaSessionCompat.m43263W0(resources, theme, attributeSet, C26251a.f73181g);
        TypedArray m43263W02 = MediaSessionCompat.m43263W0(resources, theme, attributeSet, C26251a.f73185k);
        ValueAnimator valueAnimator2 = valueAnimator == null ? new ValueAnimator() : valueAnimator;
        int i = 300;
        if (MediaSessionCompat.m43312D0(xmlPullParser, VastIconXmlManager.DURATION)) {
            i = m43263W0.getInt(1, 300);
        }
        long j = i;
        long j2 = !MediaSessionCompat.m43312D0(xmlPullParser, "startOffset") ? 0 : m43263W0.getInt(2, 0);
        int i2 = !MediaSessionCompat.m43312D0(xmlPullParser, "valueType") ? 4 : m43263W0.getInt(7, 4);
        if (MediaSessionCompat.m43312D0(xmlPullParser, "valueFrom") && MediaSessionCompat.m43312D0(xmlPullParser, "valueTo")) {
            int i3 = i2;
            if (i2 == 4) {
                TypedValue peekValue = m43263W0.peekValue(5);
                boolean z = peekValue != null;
                int i4 = z ? peekValue.type : 0;
                TypedValue peekValue2 = m43263W0.peekValue(6);
                boolean z2 = peekValue2 != null;
                i3 = ((!z || !m2250d(i4)) && (!z2 || !m2250d(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder m2251c = m2251c(m43263W0, i3, 5, 6, "");
            if (m2251c != null) {
                valueAnimator2.setValues(m2251c);
            }
        }
        valueAnimator2.setDuration(j);
        valueAnimator2.setStartDelay(j2);
        valueAnimator2.setRepeatCount(!MediaSessionCompat.m43312D0(xmlPullParser, "repeatCount") ? 0 : m43263W0.getInt(3, 0));
        valueAnimator2.setRepeatMode(!MediaSessionCompat.m43312D0(xmlPullParser, "repeatMode") ? 1 : m43263W0.getInt(4, 1));
        if (m43263W02 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator2;
            String m43210p0 = MediaSessionCompat.m43210p0(m43263W02, xmlPullParser, "pathData", 1);
            if (m43210p0 != null) {
                String m43210p02 = MediaSessionCompat.m43210p0(m43263W02, xmlPullParser, "propertyXName", 2);
                String m43210p03 = MediaSessionCompat.m43210p0(m43263W02, xmlPullParser, "propertyYName", 3);
                if (m43210p02 == null && m43210p03 == null) {
                    throw new InflateException(m43263W02.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path m43283N = MediaSessionCompat.m43283N(m43210p0);
                PathMeasure pathMeasure = new PathMeasure(m43283N, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f2 = 0.0f;
                do {
                    length = f2 + pathMeasure.getLength();
                    arrayList.add(Float.valueOf(length));
                    f2 = length;
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(m43283N, false);
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
                PropertyValuesHolder ofFloat = m43210p02 != null ? PropertyValuesHolder.ofFloat(m43210p02, fArr) : null;
                if (m43210p03 != null) {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(m43210p03, fArr2);
                }
                if (ofFloat == null) {
                    objectAnimator.setValues(propertyValuesHolder);
                } else if (propertyValuesHolder == null) {
                    objectAnimator.setValues(ofFloat);
                } else {
                    objectAnimator.setValues(ofFloat, propertyValuesHolder);
                }
            } else {
                objectAnimator.setPropertyName(MediaSessionCompat.m43210p0(m43263W02, xmlPullParser, "propertyName", 0));
            }
        }
        int i9 = 0;
        if (MediaSessionCompat.m43312D0(xmlPullParser, "interpolator")) {
            i9 = m43263W0.getResourceId(0, 0);
        }
        if (i9 > 0) {
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, i9));
        }
        m43263W0.recycle();
        if (m43263W02 != null) {
            m43263W02.recycle();
        }
        return valueAnimator2;
    }
}
