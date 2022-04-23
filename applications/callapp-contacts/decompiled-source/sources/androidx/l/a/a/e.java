package androidx.l.a.a;

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
import androidx.core.content.res.g;
import androidx.core.graphics.c;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/e.class */
public final class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/e$a.class */
    public static final class a implements TypeEvaluator<c.b[]> {

        /* renamed from: a  reason: collision with root package name */
        private c.b[] f2496a;

        a() {
        }

        a(c.b[] bVarArr) {
            this.f2496a = bVarArr;
        }

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ c.b[] evaluate(float f, c.b[] bVarArr, c.b[] bVarArr2) {
            c.b[] bVarArr3 = bVarArr;
            c.b[] bVarArr4 = bVarArr2;
            if (c.a(bVarArr3, bVarArr4)) {
                if (!c.a(this.f2496a, bVarArr3)) {
                    this.f2496a = c.a(bVarArr3);
                }
                for (int i = 0; i < bVarArr3.length; i++) {
                    this.f2496a[i].a(bVarArr3[i], bVarArr4[i], f);
                }
                return this.f2496a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    private e() {
    }

    public static Animator a(Context context, Resources resources, Resources.Theme theme, int i) throws Resources.NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator a2 = a(context, resources, theme, animation, Xml.asAttributeSet(animation), null, 0, 1.0f);
                if (animation != null) {
                    animation.close();
                }
                return a2;
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder("Can't load animation resource ID #0x");
                sb.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                StringBuilder sb2 = new StringBuilder("Can't load animation resource ID #0x");
                sb2.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(sb2.toString());
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (xmlResourceParser3 != null) {
                xmlResourceParser3.close();
            }
            throw th;
        }
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) throws XmlPullParserException, IOException {
        int i2;
        Animator animator;
        int depth = xmlPullParser.getDepth();
        ValueAnimator valueAnimator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i2 = 0;
            boolean z = false;
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("objectAnimator")) {
                        animator = a(context, resources, theme, attributeSet, f, xmlPullParser);
                    } else if (name.equals("animator")) {
                        animator = a(context, resources, theme, attributeSet, null, f, xmlPullParser);
                    } else if (name.equals("set")) {
                        animator = new AnimatorSet();
                        TypedArray a2 = g.a(resources, theme, attributeSet, androidx.l.a.a.a.h);
                        a(context, resources, theme, xmlPullParser, attributeSet, (AnimatorSet) animator, g.a(a2, xmlPullParser, "ordering", 0, 0), f);
                        a2.recycle();
                    } else if (name.equals("propertyValuesHolder")) {
                        PropertyValuesHolder[] a3 = a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (a3 != null && (valueAnimator instanceof ValueAnimator)) {
                            valueAnimator.setValues(a3);
                        }
                        z = true;
                        animator = valueAnimator;
                    } else {
                        throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                    }
                    valueAnimator = animator;
                    if (animatorSet != null) {
                        valueAnimator = animator;
                        if (!z) {
                            ArrayList arrayList2 = arrayList;
                            if (arrayList == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(animator);
                            valueAnimator = animator;
                            arrayList = arrayList2;
                        }
                    }
                }
            }
        }
        if (!(animatorSet == null || arrayList == null)) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it2 = arrayList.iterator();
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
        return valueAnimator;
    }

    private static Keyframe a(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    private static ObjectAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L_0x00ba;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.PropertyValuesHolder a(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.l.a.a.e.a(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    private static ValueAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray a2 = g.a(resources, theme, attributeSet, androidx.l.a.a.a.g);
        TypedArray a3 = g.a(resources, theme, attributeSet, androidx.l.a.a.a.k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        a(valueAnimator2, a2, a3, f, xmlPullParser);
        int b2 = g.b(a2, xmlPullParser, "interpolator", 0);
        if (b2 > 0) {
            valueAnimator2.setInterpolator(d.a(context, b2));
        }
        a2.recycle();
        if (a3 != null) {
            a3.recycle();
        }
        return valueAnimator2;
    }

    private static void a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long a2 = g.a(typedArray, xmlPullParser, VastIconXmlManager.DURATION, 1, (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
        long a3 = g.a(typedArray, xmlPullParser, "startOffset", 2, 0);
        int a4 = g.a(typedArray, xmlPullParser, "valueType", 7, 4);
        if (g.a(xmlPullParser, "valueFrom") && g.a(xmlPullParser, "valueTo")) {
            int i = a4;
            if (a4 == 4) {
                TypedValue peekValue = typedArray.peekValue(5);
                boolean z = peekValue != null;
                int i2 = z ? peekValue.type : 0;
                TypedValue peekValue2 = typedArray.peekValue(6);
                boolean z2 = peekValue2 != null;
                i = ((!z || !a(i2)) && (!z2 || !a(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder a5 = a(typedArray, i, 5, 6, "");
            if (a5 != null) {
                valueAnimator.setValues(a5);
            }
        }
        valueAnimator.setDuration(a2);
        valueAnimator.setStartDelay(a3);
        valueAnimator.setRepeatCount(g.a(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(g.a(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
            String c2 = g.c(typedArray2, xmlPullParser, "pathData", 1);
            if (c2 != null) {
                String c3 = g.c(typedArray2, xmlPullParser, "propertyXName", 2);
                String c4 = g.c(typedArray2, xmlPullParser, "propertyYName", 3);
                if (c3 == null && c4 == null) {
                    throw new InflateException(typedArray2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                a(c.a(c2), objectAnimator, 0.5f * f, c3, c4);
                return;
            }
            objectAnimator.setPropertyName(g.c(typedArray2, xmlPullParser, "propertyName", 0));
        }
    }

    private static void a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PropertyValuesHolder propertyValuesHolder;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        arrayList.add(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
        float f3 = BitmapDescriptorFactory.HUE_RED;
        do {
            length = f3 + pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
            f3 = length;
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f4 = length / (min - 1);
        int i = 0;
        int i2 = 0;
        while (true) {
            propertyValuesHolder = null;
            if (i >= min) {
                break;
            }
            pathMeasure2.getPosTan(f2 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i] = fArr3[0];
            fArr2[i] = fArr3[1];
            f2 += f4;
            int i3 = i2 + 1;
            i2 = i2;
            if (i3 < arrayList.size()) {
                i2 = i2;
                if (f2 > ((Float) arrayList.get(i3)).floatValue()) {
                    pathMeasure2.nextContour();
                    i2 = i3;
                }
            }
            i++;
        }
        PropertyValuesHolder ofFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
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

    private static void a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    private static boolean a(int i) {
        return i >= 28 && i <= 31;
    }

    private static PropertyValuesHolder[] a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        PropertyValuesHolder[] propertyValuesHolderArr;
        PropertyValuesHolder propertyValuesHolder;
        int size;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray a2 = g.a(resources, theme, attributeSet, androidx.l.a.a.a.i);
                    String c2 = g.c(a2, xmlPullParser, "propertyName", 3);
                    int a3 = g.a(a2, xmlPullParser, "valueType", 2, 4);
                    int i = a3;
                    ArrayList arrayList2 = null;
                    while (true) {
                        int next = xmlPullParser.next();
                        if (next == 3 || next == 1) {
                            break;
                        } else if (xmlPullParser.getName().equals("keyframe")) {
                            i = i;
                            if (i == 4) {
                                TypedArray a4 = g.a(resources, theme, Xml.asAttributeSet(xmlPullParser), androidx.l.a.a.a.j);
                                TypedValue a5 = g.a(a4, xmlPullParser, "value");
                                i = (!(a5 != null) || !a(a5.type)) ? 0 : 3;
                                a4.recycle();
                            }
                            TypedArray a6 = g.a(resources, theme, Xml.asAttributeSet(xmlPullParser), androidx.l.a.a.a.j);
                            float a7 = g.a(a6, xmlPullParser, "fraction", 3, -1.0f);
                            TypedValue a8 = g.a(a6, xmlPullParser, "value");
                            boolean z = a8 != null;
                            int i2 = i == 4 ? (!z || !a(a8.type)) ? 0 : 3 : i;
                            Keyframe ofInt = z ? i2 != 0 ? (i2 == 1 || i2 == 3) ? Keyframe.ofInt(a7, g.a(a6, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(a7, g.a(a6, xmlPullParser, "value", 0, (float) BitmapDescriptorFactory.HUE_RED)) : i2 == 0 ? Keyframe.ofFloat(a7) : Keyframe.ofInt(a7);
                            int b2 = g.b(a6, xmlPullParser, "interpolator", 1);
                            if (b2 > 0) {
                                ofInt.setInterpolator(d.a(context, b2));
                            }
                            a6.recycle();
                            arrayList2 = arrayList2;
                            if (ofInt != null) {
                                arrayList2 = arrayList2;
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(ofInt);
                            }
                            xmlPullParser.next();
                        } else {
                            i = i;
                        }
                    }
                    if (arrayList2 == null || (size = arrayList2.size()) <= 0) {
                        propertyValuesHolder = null;
                    } else {
                        Keyframe keyframe = (Keyframe) arrayList2.get(0);
                        Keyframe keyframe2 = (Keyframe) arrayList2.get(size - 1);
                        float fraction = keyframe2.getFraction();
                        int i3 = size;
                        if (fraction < 1.0f) {
                            if (fraction < BitmapDescriptorFactory.HUE_RED) {
                                keyframe2.setFraction(1.0f);
                                i3 = size;
                            } else {
                                arrayList2.add(arrayList2.size(), a(keyframe2, 1.0f));
                                i3 = size + 1;
                            }
                        }
                        float fraction2 = keyframe.getFraction();
                        int i4 = i3;
                        if (fraction2 != BitmapDescriptorFactory.HUE_RED) {
                            if (fraction2 < BitmapDescriptorFactory.HUE_RED) {
                                keyframe.setFraction(BitmapDescriptorFactory.HUE_RED);
                                i4 = i3;
                            } else {
                                arrayList2.add(0, a(keyframe, BitmapDescriptorFactory.HUE_RED));
                                i4 = i3 + 1;
                            }
                        }
                        Keyframe[] keyframeArr = new Keyframe[i4];
                        arrayList2.toArray(keyframeArr);
                        for (int i5 = 0; i5 < i4; i5++) {
                            Keyframe keyframe3 = keyframeArr[i5];
                            if (keyframe3.getFraction() < BitmapDescriptorFactory.HUE_RED) {
                                if (i5 == 0) {
                                    keyframe3.setFraction(BitmapDescriptorFactory.HUE_RED);
                                } else {
                                    int i6 = i4 - 1;
                                    if (i5 == i6) {
                                        keyframe3.setFraction(1.0f);
                                    } else {
                                        int i7 = i5;
                                        for (int i8 = i5 + 1; i8 < i6 && keyframeArr[i8].getFraction() < BitmapDescriptorFactory.HUE_RED; i8++) {
                                            i7 = i8;
                                        }
                                        a(keyframeArr, keyframeArr[i7 + 1].getFraction() - keyframeArr[i5 - 1].getFraction(), i5, i7);
                                    }
                                }
                            }
                        }
                        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(c2, keyframeArr);
                        propertyValuesHolder = ofKeyframe;
                        if (i == 3) {
                            ofKeyframe.setEvaluator(f.a());
                            propertyValuesHolder = ofKeyframe;
                        }
                    }
                    PropertyValuesHolder propertyValuesHolder2 = propertyValuesHolder;
                    if (propertyValuesHolder == null) {
                        propertyValuesHolder2 = a(a2, a3, 0, 1, c2);
                    }
                    arrayList = arrayList;
                    if (propertyValuesHolder2 != null) {
                        arrayList = arrayList;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolder2);
                    }
                    a2.recycle();
                } else {
                    arrayList = arrayList;
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size2 = arrayList.size();
            PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[size2];
            int i9 = 0;
            while (true) {
                propertyValuesHolderArr = propertyValuesHolderArr2;
                if (i9 >= size2) {
                    break;
                }
                propertyValuesHolderArr2[i9] = (PropertyValuesHolder) arrayList.get(i9);
                i9++;
            }
        } else {
            propertyValuesHolderArr = null;
        }
        return propertyValuesHolderArr;
    }
}
