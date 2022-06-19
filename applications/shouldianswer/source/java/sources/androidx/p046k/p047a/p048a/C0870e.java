package androidx.p046k.p047a.p048a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
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
import androidx.core.graphics.C0570b;
import androidx.core.p015a.p016a.C0424g;
import com.google.android.flexbox.FlexItem;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.k.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/e.class */
public class C0870e {

    /* renamed from: androidx.k.a.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/e$a.class */
    public static class C0871a implements TypeEvaluator<C0570b.C0572b[]> {

        /* renamed from: a */
        private C0570b.C0572b[] f2735a;

        C0871a() {
        }

        /* renamed from: a */
        public C0570b.C0572b[] evaluate(float f, C0570b.C0572b[] c0572bArr, C0570b.C0572b[] c0572bArr2) {
            if (C0570b.m6163a(c0572bArr, c0572bArr2)) {
                if (!C0570b.m6163a(this.f2735a, c0572bArr)) {
                    this.f2735a = C0570b.m6164a(c0572bArr);
                }
                for (int i = 0; i < c0572bArr.length; i++) {
                    this.f2735a[i].m6156a(c0572bArr[i], c0572bArr2[i], f);
                }
                return this.f2735a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* renamed from: a */
    private static int m5190a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2719j);
        TypedValue m6687b = C0424g.m6687b(m6696a, xmlPullParser, "value", 0);
        int i = 0;
        if (m6687b != null) {
            i = 0;
            if (m5204a(m6687b.type)) {
                i = 3;
            }
        }
        m6696a.recycle();
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (m5204a(r7) != false) goto L26;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m5189a(android.content.res.TypedArray r3, int r4, int r5) {
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
            boolean r0 = m5204a(r0)
            if (r0 != 0) goto L67
        L55:
            r0 = r8
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L69
            r0 = r8
            r4 = r0
            r0 = r7
            boolean r0 = m5204a(r0)
            if (r0 == 0) goto L69
        L67:
            r0 = 3
            r4 = r0
        L69:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p046k.p047a.p048a.C0870e.m5189a(android.content.res.TypedArray, int, int):int");
    }

    /* renamed from: a */
    public static Animator m5200a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : m5199a(context, context.getResources(), context.getTheme(), i);
    }

    /* renamed from: a */
    public static Animator m5199a(Context context, Resources resources, Resources.Theme theme, int i) {
        return m5198a(context, resources, theme, i, 1.0f);
    }

    /* renamed from: a */
    public static Animator m5198a(Context context, Resources resources, Resources.Theme theme, int i, float f) {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator m5194a = m5194a(context, resources, theme, animation, f);
                if (animation != null) {
                    animation.close();
                }
                return m5194a;
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

    /* renamed from: a */
    private static Animator m5194a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return m5192a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* renamed from: a */
    private static Animator m5192a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) {
        ObjectAnimator objectAnimator;
        int depth = xmlPullParser.getDepth();
        ObjectAnimator objectAnimator2 = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            boolean z = false;
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("objectAnimator")) {
                        objectAnimator = m5197a(context, resources, theme, attributeSet, f, xmlPullParser);
                    } else if (name.equals("animator")) {
                        objectAnimator = m5195a(context, resources, theme, attributeSet, null, f, xmlPullParser);
                    } else if (name.equals("set")) {
                        objectAnimator = new AnimatorSet();
                        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2717h);
                        m5192a(context, resources, theme, xmlPullParser, attributeSet, objectAnimator, C0424g.m6691a(m6696a, xmlPullParser, "ordering", 0, 0), f);
                        m6696a.recycle();
                    } else if (!name.equals("propertyValuesHolder")) {
                        throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                    } else {
                        PropertyValuesHolder[] m5193a = m5193a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (m5193a != null && (objectAnimator2 instanceof ValueAnimator)) {
                            objectAnimator2.setValues(m5193a);
                        }
                        z = true;
                        objectAnimator = objectAnimator2;
                    }
                    objectAnimator2 = objectAnimator;
                    if (animatorSet != null) {
                        objectAnimator2 = objectAnimator;
                        if (!z) {
                            ArrayList arrayList2 = arrayList;
                            if (arrayList == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(objectAnimator);
                            objectAnimator2 = objectAnimator;
                            arrayList = arrayList2;
                        }
                    }
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                animatorArr[i2] = (Animator) it.next();
                i2++;
            }
            if (i == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return objectAnimator2;
    }

    /* renamed from: a */
    private static Keyframe m5203a(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: a */
    private static Keyframe m5196a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2719j);
        float m6692a = C0424g.m6692a(m6696a, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue m6687b = C0424g.m6687b(m6696a, xmlPullParser, "value", 0);
        boolean z = m6687b != null;
        int i2 = i;
        if (i == 4) {
            i2 = (!z || !m5204a(m6687b.type)) ? 0 : 3;
        }
        Keyframe ofInt = z ? i2 != 0 ? (i2 == 1 || i2 == 3) ? Keyframe.ofInt(m6692a, C0424g.m6691a(m6696a, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(m6692a, C0424g.m6692a(m6696a, xmlPullParser, "value", 0, (float) FlexItem.FLEX_GROW_DEFAULT)) : i2 == 0 ? Keyframe.ofFloat(m6692a) : Keyframe.ofInt(m6692a);
        int m6685c = C0424g.m6685c(m6696a, xmlPullParser, "interpolator", 1, 0);
        if (m6685c > 0) {
            ofInt.setInterpolator(C0869d.m5206a(context, m6685c));
        }
        m6696a.recycle();
        return ofInt;
    }

    /* renamed from: a */
    private static ObjectAnimator m5197a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m5195a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* renamed from: a */
    private static PropertyValuesHolder m5191a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) {
        ArrayList arrayList = null;
        int i2 = i;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            } else if (xmlPullParser.getName().equals("keyframe")) {
                int i3 = i2;
                if (i2 == 4) {
                    i3 = m5190a(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m5196a = m5196a(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i3, xmlPullParser);
                ArrayList arrayList2 = arrayList;
                if (m5196a != null) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(m5196a);
                }
                xmlPullParser.next();
                i2 = i3;
                arrayList = arrayList2;
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
                    if (fraction < FlexItem.FLEX_GROW_DEFAULT) {
                        keyframe2.setFraction(1.0f);
                        i4 = size;
                    } else {
                        arrayList.add(arrayList.size(), m5203a(keyframe2, 1.0f));
                        i4 = size + 1;
                    }
                }
                float fraction2 = keyframe.getFraction();
                int i5 = i4;
                if (fraction2 != FlexItem.FLEX_GROW_DEFAULT) {
                    if (fraction2 < FlexItem.FLEX_GROW_DEFAULT) {
                        keyframe.setFraction(FlexItem.FLEX_GROW_DEFAULT);
                        i5 = i4;
                    } else {
                        arrayList.add(0, m5203a(keyframe, (float) FlexItem.FLEX_GROW_DEFAULT));
                        i5 = i4 + 1;
                    }
                }
                Keyframe[] keyframeArr = new Keyframe[i5];
                arrayList.toArray(keyframeArr);
                for (int i6 = 0; i6 < i5; i6++) {
                    Keyframe keyframe3 = keyframeArr[i6];
                    if (keyframe3.getFraction() < FlexItem.FLEX_GROW_DEFAULT) {
                        if (i6 == 0) {
                            keyframe3.setFraction(FlexItem.FLEX_GROW_DEFAULT);
                        } else {
                            int i7 = i5 - 1;
                            if (i6 == i7) {
                                keyframe3.setFraction(1.0f);
                            } else {
                                int i8 = i6;
                                for (int i9 = i6 + 1; i9 < i7 && keyframeArr[i9].getFraction() < FlexItem.FLEX_GROW_DEFAULT; i9++) {
                                    i8 = i9;
                                }
                                m5186a(keyframeArr, keyframeArr[i8 + 1].getFraction() - keyframeArr[i6 - 1].getFraction(), i6, i8);
                            }
                        }
                    }
                }
                PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
                propertyValuesHolder = ofKeyframe;
                if (i2 == 3) {
                    ofKeyframe.setEvaluator(C0872f.m5184a());
                    propertyValuesHolder = ofKeyframe;
                }
            }
        }
        return propertyValuesHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L40;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.PropertyValuesHolder m5188a(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p046k.p047a.p048a.C0870e.m5188a(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* renamed from: a */
    private static ValueAnimator m5195a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2716g);
        TypedArray m6696a2 = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2720k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        m5201a(valueAnimator2, m6696a, m6696a2, f, xmlPullParser);
        int m6685c = C0424g.m6685c(m6696a, xmlPullParser, "interpolator", 0, 0);
        if (m6685c > 0) {
            valueAnimator2.setInterpolator(C0869d.m5206a(context, m6685c));
        }
        m6696a.recycle();
        if (m6696a2 != null) {
            m6696a2.recycle();
        }
        return valueAnimator2;
    }

    /* renamed from: a */
    private static void m5202a(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String m6693a = C0424g.m6693a(typedArray, xmlPullParser, "pathData", 1);
        if (m6693a == null) {
            objectAnimator.setPropertyName(C0424g.m6693a(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String m6693a2 = C0424g.m6693a(typedArray, xmlPullParser, "propertyXName", 2);
        String m6693a3 = C0424g.m6693a(typedArray, xmlPullParser, "propertyYName", 3);
        if (i != 2) {
        }
        if (m6693a2 != null || m6693a3 != null) {
            m5187a(C0570b.m6169a(m6693a), objectAnimator, f * 0.5f, m6693a2, m6693a3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    /* renamed from: a */
    private static void m5201a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long m6691a = C0424g.m6691a(typedArray, xmlPullParser, "duration", 1, 300);
        long m6691a2 = C0424g.m6691a(typedArray, xmlPullParser, "startOffset", 2, 0);
        int m6691a3 = C0424g.m6691a(typedArray, xmlPullParser, "valueType", 7, 4);
        int i = m6691a3;
        if (C0424g.m6688a(xmlPullParser, "valueFrom")) {
            i = m6691a3;
            if (C0424g.m6688a(xmlPullParser, "valueTo")) {
                int i2 = m6691a3;
                if (m6691a3 == 4) {
                    i2 = m5189a(typedArray, 5, 6);
                }
                PropertyValuesHolder m5188a = m5188a(typedArray, i2, 5, 6, "");
                i = i2;
                if (m5188a != null) {
                    valueAnimator.setValues(m5188a);
                    i = i2;
                }
            }
        }
        valueAnimator.setDuration(m6691a);
        valueAnimator.setStartDelay(m6691a2);
        valueAnimator.setRepeatCount(C0424g.m6691a(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C0424g.m6691a(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m5202a(valueAnimator, typedArray2, i, f, xmlPullParser);
        }
    }

    /* renamed from: a */
    private static void m5187a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT));
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
        float f4 = 0.0f;
        int i2 = 0;
        while (i2 < min) {
            pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i)).floatValue(), fArr3, null);
            fArr[i2] = fArr3[0];
            fArr2[i2] = fArr3[1];
            f4 += f3;
            int i3 = i + 1;
            int i4 = i;
            if (i3 < arrayList.size()) {
                i4 = i;
                if (f4 > ((Float) arrayList.get(i3)).floatValue()) {
                    pathMeasure2.nextContour();
                    i4 = i3;
                }
            }
            i2++;
            i = i4;
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

    /* renamed from: a */
    private static void m5186a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* renamed from: a */
    private static boolean m5204a(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: a */
    private static PropertyValuesHolder[] m5193a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
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
                    TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2718i);
                    String m6693a = C0424g.m6693a(m6696a, xmlPullParser, "propertyName", 3);
                    int m6691a = C0424g.m6691a(m6696a, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder m5191a = m5191a(context, resources, theme, xmlPullParser, m6693a, m6691a);
                    PropertyValuesHolder propertyValuesHolder = m5191a;
                    if (m5191a == null) {
                        propertyValuesHolder = m5188a(m6696a, m6691a, 0, 1, m6693a);
                    }
                    ArrayList arrayList2 = arrayList;
                    if (propertyValuesHolder != null) {
                        arrayList2 = arrayList;
                        if (arrayList == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(propertyValuesHolder);
                    }
                    m6696a.recycle();
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
}
