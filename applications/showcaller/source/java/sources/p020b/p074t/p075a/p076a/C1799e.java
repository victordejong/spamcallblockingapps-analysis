package p020b.p074t.p075a.p076a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.core.content.p007d.C0614g;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p041h.p042e.C1524c;
/* renamed from: b.t.a.a.e */
/* loaded from: classes-dex2jar.jar:b/t/a/a/e.class */
public class C1799e {

    /* renamed from: b.t.a.a.e$a */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/e$a.class */
    public static class C1800a implements TypeEvaluator<C1524c.C1526b[]> {

        /* renamed from: a */
        private C1524c.C1526b[] f6666a;

        C1800a() {
        }

        /* renamed from: a */
        public C1524c.C1526b[] evaluate(float f, C1524c.C1526b[] c1526bArr, C1524c.C1526b[] c1526bArr2) {
            if (C1524c.m29841b(c1526bArr, c1526bArr2)) {
                if (!C1524c.m29841b(this.f6666a, c1526bArr)) {
                    this.f6666a = C1524c.m29837f(c1526bArr);
                }
                for (int i = 0; i < c1526bArr.length; i++) {
                    this.f6666a[i].m29829d(c1526bArr[i], c1526bArr2[i], f);
                }
                return this.f6666a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* renamed from: a */
    private static Animator m28880a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return m28879b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x014c, code lost:
        if (r17 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0151, code lost:
        if (r22 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0154, code lost:
        r0 = new android.animation.Animator[r22.size()];
        r0 = r22.iterator();
        r25 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x016d, code lost:
        if (r0.hasNext() == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0170, code lost:
        r0[r25] = (android.animation.Animator) r0.next();
        r25 = r25 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0185, code lost:
        if (r18 != 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0188, code lost:
        r17.playTogether(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0191, code lost:
        r17.playSequentially(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0199, code lost:
        return r21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v69, types: [android.animation.ValueAnimator] */
    /* JADX WARN: Type inference failed for: r0v71, types: [android.animation.ObjectAnimator] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.Animator m28879b(android.content.Context r12, android.content.res.Resources r13, android.content.res.Resources.Theme r14, org.xmlpull.v1.XmlPullParser r15, android.util.AttributeSet r16, android.animation.AnimatorSet r17, int r18, float r19) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p074t.p075a.p076a.C1799e.m28879b(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: c */
    private static Keyframe m28878c(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: d */
    private static void m28877d(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L40;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.PropertyValuesHolder m28876e(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p074t.p075a.p076a.C1799e.m28876e(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (m28873h(r7) != false) goto L26;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m28875f(android.content.res.TypedArray r3, int r4, int r5) {
        /*
            r0 = r3
            r1 = r4
            android.util.TypedValue r0 = r0.peekValue(r1)
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L15
            r0 = 1
            r4 = r0
            goto L17
        L15:
            r0 = 0
            r4 = r0
        L17:
            r0 = r4
            if (r0 == 0) goto L24
            r0 = r6
            int r0 = r0.type
            r9 = r0
            goto L27
        L24:
            r0 = 0
            r9 = r0
        L27:
            r0 = r3
            r1 = r5
            android.util.TypedValue r0 = r0.peekValue(r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L37
            r0 = r7
            r5 = r0
            goto L39
        L37:
            r0 = 0
            r5 = r0
        L39:
            r0 = r5
            if (r0 == 0) goto L46
            r0 = r3
            int r0 = r0.type
            r7 = r0
            goto L49
        L46:
            r0 = 0
            r7 = r0
        L49:
            r0 = r4
            if (r0 == 0) goto L55
            r0 = r9
            boolean r0 = m28873h(r0)
            if (r0 != 0) goto L67
        L55:
            r0 = r8
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L69
            r0 = r8
            r4 = r0
            r0 = r7
            boolean r0 = m28873h(r0)
            if (r0 == 0) goto L69
        L67:
            r0 = 3
            r4 = r0
        L69:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p074t.p075a.p076a.C1799e.m28875f(android.content.res.TypedArray, int, int):int");
    }

    /* renamed from: g */
    private static int m28874g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6650j);
        TypedValue m33248l = C0614g.m33248l(m33249k, xmlPullParser, "value", 0);
        int i = 0;
        if (m33248l != null) {
            i = 0;
            if (m28873h(m33248l.type)) {
                i = 3;
            }
        }
        m33249k.recycle();
        return i;
    }

    /* renamed from: h */
    private static boolean m28873h(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: i */
    public static Animator m28872i(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : m28871j(context, context.getResources(), context.getTheme(), i);
    }

    /* renamed from: j */
    public static Animator m28871j(Context context, Resources resources, Resources.Theme theme, int i) {
        return m28870k(context, resources, theme, i, 1.0f);
    }

    /* renamed from: k */
    public static Animator m28870k(Context context, Resources resources, Resources.Theme theme, int i, float f) {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator m28880a = m28880a(context, resources, theme, animation, f);
                if (animation != null) {
                    animation.close();
                }
                return m28880a;
            } catch (IOException e) {
                XmlResourceParser xmlResourceParser4 = xmlResourceParser;
                XmlResourceParser xmlResourceParser5 = xmlResourceParser;
                StringBuilder sb = new StringBuilder();
                XmlResourceParser xmlResourceParser6 = xmlResourceParser;
                sb.append("Can't load animation resource ID #0x");
                XmlResourceParser xmlResourceParser7 = xmlResourceParser;
                sb.append(Integer.toHexString(i));
                XmlResourceParser xmlResourceParser8 = xmlResourceParser;
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                XmlResourceParser xmlResourceParser9 = xmlResourceParser;
                notFoundException.initCause(e);
                XmlResourceParser xmlResourceParser10 = xmlResourceParser;
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                XmlResourceParser xmlResourceParser11 = xmlResourceParser2;
                XmlResourceParser xmlResourceParser12 = xmlResourceParser2;
                StringBuilder sb2 = new StringBuilder();
                XmlResourceParser xmlResourceParser13 = xmlResourceParser2;
                sb2.append("Can't load animation resource ID #0x");
                XmlResourceParser xmlResourceParser14 = xmlResourceParser2;
                sb2.append(Integer.toHexString(i));
                XmlResourceParser xmlResourceParser15 = xmlResourceParser2;
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(sb2.toString());
                XmlResourceParser xmlResourceParser16 = xmlResourceParser2;
                notFoundException2.initCause(e2);
                XmlResourceParser xmlResourceParser17 = xmlResourceParser2;
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (xmlResourceParser3 != null) {
                xmlResourceParser3.close();
            }
            throw th;
        }
    }

    /* renamed from: l */
    private static ValueAnimator m28869l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6647g);
        TypedArray m33249k2 = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6651k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        m28864q(valueAnimator2, m33249k, m33249k2, f, xmlPullParser);
        int m33252h = C0614g.m33252h(m33249k, xmlPullParser, "interpolator", 0, 0);
        if (m33252h > 0) {
            valueAnimator2.setInterpolator(C1798d.m28881b(context, m33252h));
        }
        m33249k.recycle();
        if (m33249k2 != null) {
            m33249k2.recycle();
        }
        return valueAnimator2;
    }

    /* renamed from: m */
    private static Keyframe m28868m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6650j);
        float m33254f = C0614g.m33254f(m33249k, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue m33248l = C0614g.m33248l(m33249k, xmlPullParser, "value", 0);
        boolean z = m33248l != null;
        int i2 = i;
        if (i == 4) {
            i2 = (!z || !m28873h(m33248l.type)) ? 0 : 3;
        }
        Keyframe ofInt = z ? i2 != 0 ? (i2 == 1 || i2 == 3) ? Keyframe.ofInt(m33254f, C0614g.m33253g(m33249k, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(m33254f, C0614g.m33254f(m33249k, xmlPullParser, "value", 0, 0.0f)) : i2 == 0 ? Keyframe.ofFloat(m33254f) : Keyframe.ofInt(m33254f);
        int m33252h = C0614g.m33252h(m33249k, xmlPullParser, "interpolator", 1, 0);
        if (m33252h > 0) {
            ofInt.setInterpolator(C1798d.m28881b(context, m33252h));
        }
        m33249k.recycle();
        return ofInt;
    }

    /* renamed from: n */
    private static ObjectAnimator m28867n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m28869l(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* renamed from: o */
    private static PropertyValuesHolder m28866o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) {
        ArrayList arrayList = null;
        int i2 = i;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            } else if (xmlPullParser.getName().equals("keyframe")) {
                int i3 = i2;
                if (i2 == 4) {
                    i3 = m28874g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m28868m = m28868m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i3, xmlPullParser);
                ArrayList arrayList2 = arrayList;
                if (m28868m != null) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(m28868m);
                }
                xmlPullParser.next();
                arrayList = arrayList2;
                i2 = i3;
            }
        }
        PropertyValuesHolder propertyValuesHolder = null;
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolder = null;
            if (size > 0) {
                Keyframe keyframe = (Keyframe) arrayList.get(0);
                Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
                float fraction = keyframe2.getFraction();
                int i4 = size;
                if (fraction < 1.0f) {
                    if (fraction < 0.0f) {
                        keyframe2.setFraction(1.0f);
                        i4 = size;
                    } else {
                        arrayList.add(arrayList.size(), m28878c(keyframe2, 1.0f));
                        i4 = size + 1;
                    }
                }
                float fraction2 = keyframe.getFraction();
                int i5 = i4;
                if (fraction2 != 0.0f) {
                    if (fraction2 < 0.0f) {
                        keyframe.setFraction(0.0f);
                        i5 = i4;
                    } else {
                        arrayList.add(0, m28878c(keyframe, 0.0f));
                        i5 = i4 + 1;
                    }
                }
                Keyframe[] keyframeArr = new Keyframe[i5];
                arrayList.toArray(keyframeArr);
                for (int i6 = 0; i6 < i5; i6++) {
                    Keyframe keyframe3 = keyframeArr[i6];
                    if (keyframe3.getFraction() < 0.0f) {
                        if (i6 == 0) {
                            keyframe3.setFraction(0.0f);
                        } else {
                            int i7 = i5 - 1;
                            if (i6 == i7) {
                                keyframe3.setFraction(1.0f);
                            } else {
                                int i8 = i6;
                                for (int i9 = i6 + 1; i9 < i7 && keyframeArr[i9].getFraction() < 0.0f; i9++) {
                                    i8 = i9;
                                }
                                m28877d(keyframeArr, keyframeArr[i8 + 1].getFraction() - keyframeArr[i6 - 1].getFraction(), i6, i8);
                            }
                        }
                    }
                }
                PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
                propertyValuesHolder = ofKeyframe;
                if (i2 == 3) {
                    ofKeyframe.setEvaluator(C1801f.m28860a());
                    propertyValuesHolder = ofKeyframe;
                }
            }
        }
        return propertyValuesHolder;
    }

    /* renamed from: p */
    private static PropertyValuesHolder[] m28865p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        int i;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            i = 0;
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6649i);
                    String m33251i = C0614g.m33251i(m33249k, xmlPullParser, "propertyName", 3);
                    int m33253g = C0614g.m33253g(m33249k, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder m28866o = m28866o(context, resources, theme, xmlPullParser, m33251i, m33253g);
                    PropertyValuesHolder propertyValuesHolder = m28866o;
                    if (m28866o == null) {
                        propertyValuesHolder = m28876e(m33249k, m33253g, 0, 1, m33251i);
                    }
                    ArrayList arrayList2 = arrayList;
                    if (propertyValuesHolder != null) {
                        arrayList2 = arrayList;
                        if (arrayList == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(propertyValuesHolder);
                    }
                    m33249k.recycle();
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
            }
        }
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        if (arrayList != null) {
            int size = arrayList.size();
            PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[size];
            while (true) {
                propertyValuesHolderArr = propertyValuesHolderArr2;
                if (i >= size) {
                    break;
                }
                propertyValuesHolderArr2[i] = (PropertyValuesHolder) arrayList.get(i);
                i++;
            }
        }
        return propertyValuesHolderArr;
    }

    /* renamed from: q */
    private static void m28864q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long m33253g = C0614g.m33253g(typedArray, xmlPullParser, "duration", 1, 300);
        long m33253g2 = C0614g.m33253g(typedArray, xmlPullParser, "startOffset", 2, 0);
        int m33253g3 = C0614g.m33253g(typedArray, xmlPullParser, "valueType", 7, 4);
        int i = m33253g3;
        if (C0614g.m33250j(xmlPullParser, "valueFrom")) {
            i = m33253g3;
            if (C0614g.m33250j(xmlPullParser, "valueTo")) {
                int i2 = m33253g3;
                if (m33253g3 == 4) {
                    i2 = m28875f(typedArray, 5, 6);
                }
                PropertyValuesHolder m28876e = m28876e(typedArray, i2, 5, 6, "");
                i = i2;
                if (m28876e != null) {
                    valueAnimator.setValues(m28876e);
                    i = i2;
                }
            }
        }
        valueAnimator.setDuration(m33253g);
        valueAnimator.setStartDelay(m33253g2);
        valueAnimator.setRepeatCount(C0614g.m33253g(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C0614g.m33253g(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m28863r(valueAnimator, typedArray2, i, f, xmlPullParser);
        }
    }

    /* renamed from: r */
    private static void m28863r(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String m33251i = C0614g.m33251i(typedArray, xmlPullParser, "pathData", 1);
        if (m33251i == null) {
            objectAnimator.setPropertyName(C0614g.m33251i(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String m33251i2 = C0614g.m33251i(typedArray, xmlPullParser, "propertyXName", 2);
        String m33251i3 = C0614g.m33251i(typedArray, xmlPullParser, "propertyYName", 3);
        if (i != 2) {
        }
        if (m33251i2 != null || m33251i3 != null) {
            m28862s(C1524c.m29838e(m33251i), objectAnimator, f * 0.5f, m33251i2, m33251i3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    /* renamed from: s */
    private static void m28862s(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
        float f2 = 0.0f;
        do {
            length = f2 + pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
            f2 = length;
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f3 = length / (min - 1);
        int i = 0;
        int i2 = 0;
        float f4 = 0.0f;
        while (i < min) {
            pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i] = fArr3[0];
            fArr2[i] = fArr3[1];
            f4 += f3;
            int i3 = i2 + 1;
            int i4 = i2;
            if (i3 < arrayList.size()) {
                i4 = i2;
                if (f4 > ((Float) arrayList.get(i3)).floatValue()) {
                    pathMeasure2.nextContour();
                    i4 = i3;
                }
            }
            i++;
            i2 = i4;
        }
        PropertyValuesHolder ofFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolder = null;
        if (str2 != null) {
            propertyValuesHolder = PropertyValuesHolder.ofFloat(str2, fArr2);
        }
        if (ofFloat == null) {
            objectAnimator.setValues(propertyValuesHolder);
        } else if (propertyValuesHolder == null) {
            objectAnimator.setValues(ofFloat);
        } else {
            objectAnimator.setValues(ofFloat, propertyValuesHolder);
        }
    }
}
