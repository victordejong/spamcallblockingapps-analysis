package androidx.p057l.p058a.p059a;

import android.animation.Animator;
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
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.core.content.res.C0810g;
import androidx.core.graphics.C0836c;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.l.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/e.class */
public final class C1203e {

    /* renamed from: androidx.l.a.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/e$a.class */
    public static final class C1204a implements TypeEvaluator<C0836c.C0838b[]> {

        /* renamed from: a */
        private C0836c.C0838b[] f4689a;

        C1204a() {
        }

        C1204a(C0836c.C0838b[] c0838bArr) {
            this.f4689a = c0838bArr;
        }

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ C0836c.C0838b[] evaluate(float f, C0836c.C0838b[] c0838bArr, C0836c.C0838b[] c0838bArr2) {
            C0836c.C0838b[] c0838bArr3 = c0838bArr;
            C0836c.C0838b[] c0838bArr4 = c0838bArr2;
            if (C0836c.m44386a(c0838bArr3, c0838bArr4)) {
                if (!C0836c.m44386a(this.f4689a, c0838bArr3)) {
                    this.f4689a = C0836c.m44387a(c0838bArr3);
                }
                for (int i = 0; i < c0838bArr3.length; i++) {
                    this.f4689a[i].m44381a(c0838bArr3[i], c0838bArr4[i], f);
                }
                return this.f4689a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    private C1203e() {
    }

    /* renamed from: a */
    public static Animator m43367a(Context context, Resources resources, Resources.Theme theme, int i) throws Resources.NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator m43363a = m43363a(context, resources, theme, animation, Xml.asAttributeSet(animation), null, 0, 1.0f);
                if (animation != null) {
                    animation.close();
                }
                return m43363a;
            } catch (IOException e) {
                XmlResourceParser xmlResourceParser4 = xmlResourceParser;
                XmlResourceParser xmlResourceParser5 = xmlResourceParser;
                StringBuilder sb = new StringBuilder("Can't load animation resource ID #0x");
                XmlResourceParser xmlResourceParser6 = xmlResourceParser;
                sb.append(Integer.toHexString(i));
                XmlResourceParser xmlResourceParser7 = xmlResourceParser;
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                XmlResourceParser xmlResourceParser8 = xmlResourceParser;
                notFoundException.initCause(e);
                XmlResourceParser xmlResourceParser9 = xmlResourceParser;
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                XmlResourceParser xmlResourceParser10 = xmlResourceParser2;
                XmlResourceParser xmlResourceParser11 = xmlResourceParser2;
                StringBuilder sb2 = new StringBuilder("Can't load animation resource ID #0x");
                XmlResourceParser xmlResourceParser12 = xmlResourceParser2;
                sb2.append(Integer.toHexString(i));
                XmlResourceParser xmlResourceParser13 = xmlResourceParser2;
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(sb2.toString());
                XmlResourceParser xmlResourceParser14 = xmlResourceParser2;
                notFoundException2.initCause(e2);
                XmlResourceParser xmlResourceParser15 = xmlResourceParser2;
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
    private static Animator m43363a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) throws XmlPullParserException, IOException {
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
                        objectAnimator = m43366a(context, resources, theme, attributeSet, f, xmlPullParser);
                    } else if (name.equals("animator")) {
                        objectAnimator = m43365a(context, resources, theme, attributeSet, null, f, xmlPullParser);
                    } else if (name.equals("set")) {
                        objectAnimator = new AnimatorSet();
                        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4671h);
                        m43363a(context, resources, theme, xmlPullParser, attributeSet, objectAnimator, C0810g.m44454a(m44459a, xmlPullParser, "ordering", 0, 0), f);
                        m44459a.recycle();
                    } else if (!name.equals("propertyValuesHolder")) {
                        throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                    } else {
                        PropertyValuesHolder[] m43364a = m43364a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (m43364a != null && (objectAnimator2 instanceof ValueAnimator)) {
                            objectAnimator2.setValues(m43364a);
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
            Iterator it2 = arrayList.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                animatorArr[i2] = (Animator) it2.next();
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
    private static Keyframe m43369a(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: a */
    private static ObjectAnimator m43366a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m43365a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L40;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.PropertyValuesHolder m43362a(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p057l.p058a.p059a.C1203e.m43362a(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* renamed from: a */
    private static ValueAnimator m43365a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4670g);
        TypedArray m44459a2 = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4674k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        m43368a(valueAnimator2, m44459a, m44459a2, f, xmlPullParser);
        int m44451b = C0810g.m44451b(m44459a, xmlPullParser, "interpolator", 0);
        if (m44451b > 0) {
            valueAnimator2.setInterpolator(C1202d.m43371a(context, m44451b));
        }
        m44459a.recycle();
        if (m44459a2 != null) {
            m44459a2.recycle();
        }
        return valueAnimator2;
    }

    /* renamed from: a */
    private static void m43368a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long m44454a = C0810g.m44454a(typedArray, xmlPullParser, VastIconXmlManager.DURATION, 1, (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
        long m44454a2 = C0810g.m44454a(typedArray, xmlPullParser, "startOffset", 2, 0);
        int m44454a3 = C0810g.m44454a(typedArray, xmlPullParser, "valueType", 7, 4);
        if (C0810g.m44452a(xmlPullParser, "valueFrom") && C0810g.m44452a(xmlPullParser, "valueTo")) {
            int i = m44454a3;
            if (m44454a3 == 4) {
                TypedValue peekValue = typedArray.peekValue(5);
                boolean z = peekValue != null;
                int i2 = z ? peekValue.type : 0;
                TypedValue peekValue2 = typedArray.peekValue(6);
                boolean z2 = peekValue2 != null;
                i = ((!z || !m43370a(i2)) && (!z2 || !m43370a(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder m43362a = m43362a(typedArray, i, 5, 6, "");
            if (m43362a != null) {
                valueAnimator.setValues(m43362a);
            }
        }
        valueAnimator.setDuration(m44454a);
        valueAnimator.setStartDelay(m44454a2);
        valueAnimator.setRepeatCount(C0810g.m44454a(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C0810g.m44454a(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
            String m44450c = C0810g.m44450c(typedArray2, xmlPullParser, "pathData", 1);
            if (m44450c == null) {
                objectAnimator.setPropertyName(C0810g.m44450c(typedArray2, xmlPullParser, "propertyName", 0));
                return;
            }
            String m44450c2 = C0810g.m44450c(typedArray2, xmlPullParser, "propertyXName", 2);
            String m44450c3 = C0810g.m44450c(typedArray2, xmlPullParser, "propertyYName", 3);
            if (m44450c2 != null || m44450c3 != null) {
                m43361a(C0836c.m44391a(m44450c), objectAnimator, 0.5f * f, m44450c2, m44450c3);
                return;
            }
            throw new InflateException(typedArray2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
        }
    }

    /* renamed from: a */
    private static void m43361a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
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

    /* renamed from: a */
    private static void m43360a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* renamed from: a */
    private static boolean m43370a(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: a */
    private static PropertyValuesHolder[] m43364a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        PropertyValuesHolder[] propertyValuesHolderArr;
        ArrayList arrayList;
        PropertyValuesHolder propertyValuesHolder;
        int size;
        int i;
        ArrayList arrayList2 = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4672i);
                    String m44450c = C0810g.m44450c(m44459a, xmlPullParser, "propertyName", 3);
                    int m44454a = C0810g.m44454a(m44459a, xmlPullParser, "valueType", 2, 4);
                    int i2 = m44454a;
                    ArrayList arrayList3 = null;
                    while (true) {
                        int next = xmlPullParser.next();
                        if (next == 3 || next == 1) {
                            break;
                        }
                        if (xmlPullParser.getName().equals("keyframe")) {
                            i = i2;
                            if (i2 == 4) {
                                TypedArray m44459a2 = C0810g.m44459a(resources, theme, Xml.asAttributeSet(xmlPullParser), C1195a.f4673j);
                                TypedValue m44457a = C0810g.m44457a(m44459a2, xmlPullParser, "value");
                                i = (!(m44457a != null) || !m43370a(m44457a.type)) ? 0 : 3;
                                m44459a2.recycle();
                            }
                            TypedArray m44459a3 = C0810g.m44459a(resources, theme, Xml.asAttributeSet(xmlPullParser), C1195a.f4673j);
                            float m44455a = C0810g.m44455a(m44459a3, xmlPullParser, "fraction", 3, -1.0f);
                            TypedValue m44457a2 = C0810g.m44457a(m44459a3, xmlPullParser, "value");
                            boolean z = m44457a2 != null;
                            int i3 = i == 4 ? (!z || !m43370a(m44457a2.type)) ? 0 : 3 : i;
                            Keyframe ofInt = z ? i3 != 0 ? (i3 == 1 || i3 == 3) ? Keyframe.ofInt(m44455a, C0810g.m44454a(m44459a3, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(m44455a, C0810g.m44455a(m44459a3, xmlPullParser, "value", 0, (float) BitmapDescriptorFactory.HUE_RED)) : i3 == 0 ? Keyframe.ofFloat(m44455a) : Keyframe.ofInt(m44455a);
                            int m44451b = C0810g.m44451b(m44459a3, xmlPullParser, "interpolator", 1);
                            if (m44451b > 0) {
                                ofInt.setInterpolator(C1202d.m43371a(context, m44451b));
                            }
                            m44459a3.recycle();
                            ArrayList arrayList4 = arrayList3;
                            if (ofInt != null) {
                                arrayList4 = arrayList3;
                                if (arrayList3 == null) {
                                    arrayList4 = new ArrayList();
                                }
                                arrayList4.add(ofInt);
                            }
                            xmlPullParser.next();
                            arrayList3 = arrayList4;
                        } else {
                            i = i2;
                        }
                        i2 = i;
                    }
                    if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
                        propertyValuesHolder = null;
                    } else {
                        Keyframe keyframe = (Keyframe) arrayList3.get(0);
                        Keyframe keyframe2 = (Keyframe) arrayList3.get(size - 1);
                        float fraction = keyframe2.getFraction();
                        int i4 = size;
                        if (fraction < 1.0f) {
                            if (fraction < BitmapDescriptorFactory.HUE_RED) {
                                keyframe2.setFraction(1.0f);
                                i4 = size;
                            } else {
                                arrayList3.add(arrayList3.size(), m43369a(keyframe2, 1.0f));
                                i4 = size + 1;
                            }
                        }
                        float fraction2 = keyframe.getFraction();
                        int i5 = i4;
                        if (fraction2 != BitmapDescriptorFactory.HUE_RED) {
                            if (fraction2 < BitmapDescriptorFactory.HUE_RED) {
                                keyframe.setFraction(BitmapDescriptorFactory.HUE_RED);
                                i5 = i4;
                            } else {
                                arrayList3.add(0, m43369a(keyframe, BitmapDescriptorFactory.HUE_RED));
                                i5 = i4 + 1;
                            }
                        }
                        Keyframe[] keyframeArr = new Keyframe[i5];
                        arrayList3.toArray(keyframeArr);
                        for (int i6 = 0; i6 < i5; i6++) {
                            Keyframe keyframe3 = keyframeArr[i6];
                            if (keyframe3.getFraction() < BitmapDescriptorFactory.HUE_RED) {
                                if (i6 == 0) {
                                    keyframe3.setFraction(BitmapDescriptorFactory.HUE_RED);
                                } else {
                                    int i7 = i5 - 1;
                                    if (i6 == i7) {
                                        keyframe3.setFraction(1.0f);
                                    } else {
                                        int i8 = i6;
                                        for (int i9 = i6 + 1; i9 < i7 && keyframeArr[i9].getFraction() < BitmapDescriptorFactory.HUE_RED; i9++) {
                                            i8 = i9;
                                        }
                                        m43360a(keyframeArr, keyframeArr[i8 + 1].getFraction() - keyframeArr[i6 - 1].getFraction(), i6, i8);
                                    }
                                }
                            }
                        }
                        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(m44450c, keyframeArr);
                        propertyValuesHolder = ofKeyframe;
                        if (i2 == 3) {
                            ofKeyframe.setEvaluator(C1205f.m43359a());
                            propertyValuesHolder = ofKeyframe;
                        }
                    }
                    PropertyValuesHolder propertyValuesHolder2 = propertyValuesHolder;
                    if (propertyValuesHolder == null) {
                        propertyValuesHolder2 = m43362a(m44459a, m44454a, 0, 1, m44450c);
                    }
                    arrayList = arrayList2;
                    if (propertyValuesHolder2 != null) {
                        arrayList = arrayList2;
                        if (arrayList2 == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolder2);
                    }
                    m44459a.recycle();
                } else {
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
                arrayList2 = arrayList;
            }
        }
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[size2];
            int i10 = 0;
            while (true) {
                propertyValuesHolderArr = propertyValuesHolderArr2;
                if (i10 >= size2) {
                    break;
                }
                propertyValuesHolderArr2[i10] = (PropertyValuesHolder) arrayList2.get(i10);
                i10++;
            }
        } else {
            propertyValuesHolderArr = null;
        }
        return propertyValuesHolderArr;
    }
}
