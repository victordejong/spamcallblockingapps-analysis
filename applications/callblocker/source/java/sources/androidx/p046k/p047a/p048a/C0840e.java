package androidx.p046k.p047a.p048a;

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
import androidx.core.graphics.C0530b;
import androidx.core.p017a.p018a.C0453g;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.k.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/e.class */
public class C0840e {

    /* renamed from: androidx.k.a.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/e$a.class */
    public static class C0841a implements TypeEvaluator<C0530b.C0532b[]> {

        /* renamed from: a */
        private C0530b.C0532b[] f2868a;

        C0841a() {
        }

        /* renamed from: a */
        public C0530b.C0532b[] evaluate(float f, C0530b.C0532b[] c0532bArr, C0530b.C0532b[] c0532bArr2) {
            if (!C0530b.m20625a(c0532bArr, c0532bArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!C0530b.m20625a(this.f2868a, c0532bArr)) {
                this.f2868a = C0530b.m20626a(c0532bArr);
            }
            for (int i = 0; i < c0532bArr.length; i++) {
                this.f2868a[i].m20618a(c0532bArr[i], c0532bArr2[i], f);
            }
            return this.f2868a;
        }
    }

    /* renamed from: a */
    private static int m19303a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2852j);
        TypedValue m20831b = C0453g.m20831b(m20840a, xmlPullParser, "value", 0);
        int i = 0;
        if (m20831b != null) {
            i = 0;
            if (m19317a(m20831b.type)) {
                i = 3;
            }
        }
        m20840a.recycle();
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (m19317a(r9) != false) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m19302a(android.content.res.TypedArray r3, int r4, int r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r3
            r1 = r4
            android.util.TypedValue r0 = r0.peekValue(r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L51
            r0 = 1
            r4 = r0
        L10:
            r0 = r4
            if (r0 == 0) goto L56
            r0 = r7
            int r0 = r0.type
            r8 = r0
        L1b:
            r0 = r3
            r1 = r5
            android.util.TypedValue r0 = r0.peekValue(r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L5c
            r0 = 1
            r5 = r0
        L27:
            r0 = r5
            if (r0 == 0) goto L61
            r0 = r3
            int r0 = r0.type
            r9 = r0
        L31:
            r0 = r4
            if (r0 == 0) goto L3d
            r0 = r8
            boolean r0 = m19317a(r0)
            if (r0 != 0) goto L4d
        L3d:
            r0 = r6
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L4f
            r0 = r6
            r4 = r0
            r0 = r9
            boolean r0 = m19317a(r0)
            if (r0 == 0) goto L4f
        L4d:
            r0 = 3
            r4 = r0
        L4f:
            r0 = r4
            return r0
        L51:
            r0 = 0
            r4 = r0
            goto L10
        L56:
            r0 = 0
            r8 = r0
            goto L1b
        L5c:
            r0 = 0
            r5 = r0
            goto L27
        L61:
            r0 = 0
            r9 = r0
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p046k.p047a.p048a.C0840e.m19302a(android.content.res.TypedArray, int, int):int");
    }

    /* renamed from: a */
    public static Animator m19313a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : m19312a(context, context.getResources(), context.getTheme(), i);
    }

    /* renamed from: a */
    public static Animator m19312a(Context context, Resources resources, Resources.Theme theme, int i) {
        return m19311a(context, resources, theme, i, 1.0f);
    }

    /* renamed from: a */
    public static Animator m19311a(Context context, Resources resources, Resources.Theme theme, int i, float f) {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator m19307a = m19307a(context, resources, theme, animation, f);
                if (animation != null) {
                    animation.close();
                }
                return m19307a;
            } catch (IOException e) {
                XmlResourceParser xmlResourceParser4 = xmlResourceParser2;
                XmlResourceParser xmlResourceParser5 = xmlResourceParser2;
                XmlResourceParser xmlResourceParser6 = xmlResourceParser2;
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                XmlResourceParser xmlResourceParser7 = xmlResourceParser2;
                notFoundException.initCause(e);
                XmlResourceParser xmlResourceParser8 = xmlResourceParser2;
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                XmlResourceParser xmlResourceParser9 = xmlResourceParser3;
                XmlResourceParser xmlResourceParser10 = xmlResourceParser3;
                XmlResourceParser xmlResourceParser11 = xmlResourceParser3;
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                XmlResourceParser xmlResourceParser12 = xmlResourceParser3;
                notFoundException2.initCause(e2);
                XmlResourceParser xmlResourceParser13 = xmlResourceParser3;
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static Animator m19307a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return m19305a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0145, code lost:
        if (r14 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014a, code lost:
        if (r18 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014d, code lost:
        r0 = new android.animation.Animator[r18.size()];
        r0 = r18.iterator();
        r20 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0165, code lost:
        if (r0.hasNext() == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0168, code lost:
        r0[r20] = (android.animation.Animator) r0.next();
        r20 = r20 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x017d, code lost:
        if (r15 != 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0180, code lost:
        r14.playTogether(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0188, code lost:
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0189, code lost:
        r14.playSequentially(r0);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.Animator m19305a(android.content.Context r9, android.content.res.Resources r10, android.content.res.Resources.Theme r11, org.xmlpull.v1.XmlPullParser r12, android.util.AttributeSet r13, android.animation.AnimatorSet r14, int r15, float r16) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p046k.p047a.p048a.C0840e.m19305a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: a */
    private static Keyframe m19316a(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: a */
    private static Keyframe m19309a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        Keyframe ofFloat;
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2852j);
        float m20836a = C0453g.m20836a(m20840a, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue m20831b = C0453g.m20831b(m20840a, xmlPullParser, "value", 0);
        boolean z = m20831b != null;
        int i2 = i;
        if (i == 4) {
            i2 = (!z || !m19317a(m20831b.type)) ? 0 : 3;
        }
        if (z) {
            ofFloat = null;
            switch (i2) {
                case 0:
                    ofFloat = Keyframe.ofFloat(m20836a, C0453g.m20836a(m20840a, xmlPullParser, "value", 0, 0.0f));
                    break;
                case 1:
                case 3:
                    ofFloat = Keyframe.ofInt(m20836a, C0453g.m20835a(m20840a, xmlPullParser, "value", 0, 0));
                    break;
                case 2:
                    break;
                default:
                    ofFloat = null;
                    break;
            }
        } else {
            ofFloat = i2 == 0 ? Keyframe.ofFloat(m20836a) : Keyframe.ofInt(m20836a);
        }
        int m20829c = C0453g.m20829c(m20840a, xmlPullParser, "interpolator", 1, 0);
        if (m20829c > 0) {
            ofFloat.setInterpolator(C0839d.m19319a(context, m20829c));
        }
        m20840a.recycle();
        return ofFloat;
    }

    /* renamed from: a */
    private static ObjectAnimator m19310a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m19308a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* renamed from: a */
    private static PropertyValuesHolder m19304a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) {
        int i2;
        PropertyValuesHolder propertyValuesHolder;
        ArrayList arrayList = null;
        while (true) {
            i2 = i;
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            } else if (xmlPullParser.getName().equals("keyframe")) {
                i = i2;
                if (i2 == 4) {
                    i = m19303a(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m19309a = m19309a(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i, xmlPullParser);
                if (m19309a != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(m19309a);
                }
                xmlPullParser.next();
            } else {
                i = i2;
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            if (size > 0) {
                Keyframe keyframe = (Keyframe) arrayList.get(0);
                Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
                float fraction = keyframe2.getFraction();
                if (fraction < 1.0f) {
                    if (fraction < 0.0f) {
                        keyframe2.setFraction(1.0f);
                    } else {
                        arrayList.add(arrayList.size(), m19316a(keyframe2, 1.0f));
                        size++;
                    }
                }
                float fraction2 = keyframe.getFraction();
                int i3 = size;
                if (fraction2 != 0.0f) {
                    if (fraction2 < 0.0f) {
                        keyframe.setFraction(0.0f);
                        i3 = size;
                    } else {
                        arrayList.add(0, m19316a(keyframe, 0.0f));
                        i3 = size + 1;
                    }
                }
                Keyframe[] keyframeArr = new Keyframe[i3];
                arrayList.toArray(keyframeArr);
                for (int i4 = 0; i4 < i3; i4++) {
                    Keyframe keyframe3 = keyframeArr[i4];
                    if (keyframe3.getFraction() < 0.0f) {
                        if (i4 == 0) {
                            keyframe3.setFraction(0.0f);
                        } else if (i4 == i3 - 1) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i5 = i4;
                            for (int i6 = i4 + 1; i6 < i3 - 1 && keyframeArr[i6].getFraction() < 0.0f; i6++) {
                                i5 = i6;
                            }
                            m19299a(keyframeArr, keyframeArr[i5 + 1].getFraction() - keyframeArr[i4 - 1].getFraction(), i4, i5);
                        }
                    }
                }
                PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
                propertyValuesHolder = ofKeyframe;
                if (i2 == 3) {
                    ofKeyframe.setEvaluator(C0842f.m19297a());
                    propertyValuesHolder = ofKeyframe;
                }
                return propertyValuesHolder;
            }
        }
        propertyValuesHolder = null;
        return propertyValuesHolder;
    }

    /* renamed from: a */
    private static PropertyValuesHolder m19301a(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolder;
        PropertyValuesHolder propertyValuesHolder2;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i4 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i5 = z2 ? peekValue2.type : 0;
        int i6 = i;
        if (i == 4) {
            i6 = ((!z || !m19317a(i4)) && (!z2 || !m19317a(i5))) ? 0 : 3;
        }
        boolean z3 = i6 == 0;
        if (i6 == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            C0530b.C0532b[] m20624b = C0530b.m20624b(string);
            C0530b.C0532b[] m20624b2 = C0530b.m20624b(string2);
            if (m20624b != null || m20624b2 != null) {
                if (m20624b != null) {
                    C0841a c0841a = new C0841a();
                    if (m20624b2 == null) {
                        propertyValuesHolder2 = PropertyValuesHolder.ofObject(str, c0841a, m20624b);
                    } else if (!C0530b.m20625a(m20624b, m20624b2)) {
                        throw new InflateException(" Can't morph from " + string + " to " + string2);
                    } else {
                        propertyValuesHolder2 = PropertyValuesHolder.ofObject(str, c0841a, m20624b, m20624b2);
                    }
                } else if (m20624b2 != null) {
                    propertyValuesHolder2 = PropertyValuesHolder.ofObject(str, new C0841a(), m20624b2);
                }
            }
            propertyValuesHolder2 = null;
        } else {
            C0842f c0842f = null;
            if (i6 == 3) {
                c0842f = C0842f.m19297a();
            }
            if (z3) {
                if (z) {
                    float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                    if (z2) {
                        propertyValuesHolder = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                    } else {
                        propertyValuesHolder = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                }
            } else if (z) {
                int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : m19317a(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
                if (z2) {
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m19317a(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                } else {
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2);
                }
            } else if (z2) {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m19317a(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            } else {
                propertyValuesHolder = null;
            }
            propertyValuesHolder2 = propertyValuesHolder;
            if (propertyValuesHolder != null) {
                propertyValuesHolder2 = propertyValuesHolder;
                if (c0842f != null) {
                    propertyValuesHolder.setEvaluator(c0842f);
                    propertyValuesHolder2 = propertyValuesHolder;
                }
            }
        }
        return propertyValuesHolder2;
    }

    /* renamed from: a */
    private static ValueAnimator m19308a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2849g);
        TypedArray m20840a2 = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2853k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        m19314a(valueAnimator2, m20840a, m20840a2, f, xmlPullParser);
        int m20829c = C0453g.m20829c(m20840a, xmlPullParser, "interpolator", 0, 0);
        if (m20829c > 0) {
            valueAnimator2.setInterpolator(C0839d.m19319a(context, m20829c));
        }
        m20840a.recycle();
        if (m20840a2 != null) {
            m20840a2.recycle();
        }
        return valueAnimator2;
    }

    /* renamed from: a */
    private static void m19315a(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String m20837a = C0453g.m20837a(typedArray, xmlPullParser, "pathData", 1);
        if (m20837a == null) {
            objectAnimator.setPropertyName(C0453g.m20837a(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String m20837a2 = C0453g.m20837a(typedArray, xmlPullParser, "propertyXName", 2);
        String m20837a3 = C0453g.m20837a(typedArray, xmlPullParser, "propertyYName", 3);
        if (i == 2 || i == 4) {
        }
        if (m20837a2 == null && m20837a3 == null) {
            throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
        }
        m19300a(C0530b.m20631a(m20837a), objectAnimator, 0.5f * f, m20837a2, m20837a3);
    }

    /* renamed from: a */
    private static void m19314a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long m20835a = C0453g.m20835a(typedArray, xmlPullParser, "duration", 1, 300);
        long m20835a2 = C0453g.m20835a(typedArray, xmlPullParser, "startOffset", 2, 0);
        int m20835a3 = C0453g.m20835a(typedArray, xmlPullParser, "valueType", 7, 4);
        int i = m20835a3;
        if (C0453g.m20832a(xmlPullParser, "valueFrom")) {
            i = m20835a3;
            if (C0453g.m20832a(xmlPullParser, "valueTo")) {
                int i2 = m20835a3;
                if (m20835a3 == 4) {
                    i2 = m19302a(typedArray, 5, 6);
                }
                PropertyValuesHolder m19301a = m19301a(typedArray, i2, 5, 6, "");
                i = i2;
                if (m19301a != null) {
                    valueAnimator.setValues(m19301a);
                    i = i2;
                }
            }
        }
        valueAnimator.setDuration(m20835a);
        valueAnimator.setStartDelay(m20835a2);
        valueAnimator.setRepeatCount(C0453g.m20835a(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C0453g.m20835a(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m19315a(valueAnimator, typedArray2, i, f, xmlPullParser);
        }
    }

    /* renamed from: a */
    private static void m19300a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f2 = 0.0f;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
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
        int i = 0;
        float f3 = length / (min - 1);
        float f4 = 0.0f;
        for (int i2 = 0; i2 < min; i2++) {
            pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i)).floatValue(), fArr3, null);
            fArr[i2] = fArr3[0];
            fArr2[i2] = fArr3[1];
            f4 += f3;
            if (i + 1 < arrayList.size() && f4 > ((Float) arrayList.get(i + 1)).floatValue()) {
                i++;
                pathMeasure2.nextContour();
            }
        }
        PropertyValuesHolder propertyValuesHolder = null;
        if (str != null) {
            propertyValuesHolder = PropertyValuesHolder.ofFloat(str, fArr);
        }
        PropertyValuesHolder propertyValuesHolder2 = null;
        if (str2 != null) {
            propertyValuesHolder2 = PropertyValuesHolder.ofFloat(str2, fArr2);
        }
        if (propertyValuesHolder == null) {
            objectAnimator.setValues(propertyValuesHolder2);
        } else if (propertyValuesHolder2 == null) {
            objectAnimator.setValues(propertyValuesHolder);
        } else {
            objectAnimator.setValues(propertyValuesHolder, propertyValuesHolder2);
        }
    }

    /* renamed from: a */
    private static void m19299a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* renamed from: a */
    private static boolean m19317a(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: a */
    private static PropertyValuesHolder[] m19306a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2851i);
                    String m20837a = C0453g.m20837a(m20840a, xmlPullParser, "propertyName", 3);
                    int m20835a = C0453g.m20835a(m20840a, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder m19304a = m19304a(context, resources, theme, xmlPullParser, m20837a, m20835a);
                    if (m19304a == null) {
                        m19304a = m19301a(m20840a, m20835a, 0, 1, m20837a);
                    }
                    if (m19304a != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(m19304a);
                    }
                    m20840a.recycle();
                }
                xmlPullParser.next();
            }
        }
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (int i = 0; i < size; i++) {
                propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList.get(i);
            }
        }
        return propertyValuesHolderArr;
    }
}
