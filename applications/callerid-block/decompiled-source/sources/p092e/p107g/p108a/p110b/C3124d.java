package p092e.p107g.p108a.p110b;

import android.annotation.SuppressLint;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$styleable;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: e.g.a.b.d */
/* loaded from: classes2-dex2jar.jar:e/g/a/b/d.class */
public class C3124d {

    /* renamed from: a */
    private static final AtomicInteger f12934a = new AtomicInteger(1);

    /* renamed from: a */
    public static void m76a(TextView textView, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, new int[]{R$attr.tv_fontFamily}, i, i2);
        String string = obtainStyledAttributes.getString(0);
        if (string != null) {
            textView.setTypeface(C3123c.m77a(textView.getContext(), string, 0));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public static void m75b(View view, int i) {
        m74c(view, null, 0, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x05f7, code lost:
        if (r0 != 5) goto L_0x05fa;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m74c(android.view.View r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 2274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p092e.p107g.p108a.p110b.C3124d.m74c(android.view.View, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: d */
    private static void m73d(AutoCompleteTextView autoCompleteTextView, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = autoCompleteTextView.getContext().obtainStyledAttributes(attributeSet, R$styleable.AutoCompleteTextView, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == 0) {
                autoCompleteTextView.setCompletionHint(obtainStyledAttributes.getString(index));
            } else if (index == 1) {
                autoCompleteTextView.setThreshold(obtainStyledAttributes.getInteger(index, 0));
            } else if (index == 4) {
                autoCompleteTextView.setDropDownAnchor(obtainStyledAttributes.getResourceId(index, 0));
            } else if (index == 5) {
                autoCompleteTextView.setDropDownHeight(obtainStyledAttributes.getLayoutDimension(index, -2));
            } else if (index == 3) {
                autoCompleteTextView.setDropDownWidth(obtainStyledAttributes.getLayoutDimension(index, -2));
            } else if (index == 6) {
                autoCompleteTextView.setDropDownHorizontalOffset(obtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == 7) {
                autoCompleteTextView.setDropDownVerticalOffset(obtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(obtainStyledAttributes.getDrawable(index));
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: e */
    private static void m72e(TextView textView, AttributeSet attributeSet, int i, int i2) {
        int i3;
        int i4;
        float f;
        float f2;
        float f3;
        int i5;
        String str;
        Typeface typeface;
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, R$styleable.TextViewAppearance, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = resourceId != -1 ? textView.getContext().obtainStyledAttributes(resourceId, R$styleable.TextAppearance) : null;
        if (obtainStyledAttributes2 != null) {
            int indexCount = obtainStyledAttributes2.getIndexCount();
            f3 = 0.0f;
            f2 = 0.0f;
            f = 0.0f;
            i4 = 0;
            str = null;
            i3 = -1;
            i5 = -1;
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = obtainStyledAttributes2.getIndex(i6);
                if (index == 4) {
                    textView.setHighlightColor(obtainStyledAttributes2.getColor(index, 0));
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 3) {
                    textView.setTextColor(obtainStyledAttributes2.getColorStateList(index));
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 5) {
                    textView.setHintTextColor(obtainStyledAttributes2.getColorStateList(index));
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 6) {
                    textView.setLinkTextColor(obtainStyledAttributes2.getColorStateList(index));
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 0) {
                    textView.setTextSize(0, obtainStyledAttributes2.getDimensionPixelSize(index, 0));
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 1) {
                    i3 = obtainStyledAttributes2.getInt(index, -1);
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i5 = i5;
                } else if (index == 12 || index == 21) {
                    str = obtainStyledAttributes2.getString(index);
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 2) {
                    i5 = obtainStyledAttributes2.getInt(index, -1);
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                } else if (index == 11) {
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(obtainStyledAttributes2.getBoolean(index, false));
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i4 = i4;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                    }
                } else if (index == 7) {
                    i4 = obtainStyledAttributes2.getInt(index, 0);
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 8) {
                    f3 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 9) {
                    f2 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    f3 = f3;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 10) {
                    f = obtainStyledAttributes2.getFloat(index, 0.0f);
                    f3 = f3;
                    f2 = f2;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == 13) {
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setElegantTextHeight(obtainStyledAttributes2.getBoolean(index, false));
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i4 = i4;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                    }
                } else if (index == 14) {
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setLetterSpacing(obtainStyledAttributes2.getFloat(index, 0.0f));
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i4 = i4;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                    }
                } else {
                    f3 = f3;
                    f2 = f2;
                    f = f;
                    i4 = i4;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (index == 15) {
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i4 = i4;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                        if (Build.VERSION.SDK_INT >= 21) {
                            textView.setFontFeatureSettings(obtainStyledAttributes2.getString(index));
                            i5 = i5;
                            i3 = i3;
                            str = str;
                            i4 = i4;
                            f = f;
                            f2 = f2;
                            f3 = f3;
                        }
                    }
                }
            }
            obtainStyledAttributes2.recycle();
        } else {
            f3 = 0.0f;
            f2 = 0.0f;
            f = 0.0f;
            i4 = 0;
            str = null;
            i3 = -1;
            i5 = -1;
        }
        TypedArray obtainStyledAttributes3 = textView.getContext().obtainStyledAttributes(attributeSet, R$styleable.TextView, i, i2);
        int indexCount2 = obtainStyledAttributes3.getIndexCount();
        boolean z = false;
        Drawable drawable = null;
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        Drawable drawable6 = null;
        boolean z2 = false;
        for (int i7 = 0; i7 < indexCount2; i7++) {
            int index2 = obtainStyledAttributes3.getIndex(i7);
            if (index2 == 32) {
                drawable2 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == 30) {
                drawable3 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == 33) {
                drawable5 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == 31) {
                drawable6 = obtainStyledAttributes3.getDrawable(index2);
            } else {
                if (index2 == 38) {
                    drawable = obtainStyledAttributes3.getDrawable(index2);
                } else if (index2 == 39) {
                    drawable4 = obtainStyledAttributes3.getDrawable(index2);
                } else {
                    if (index2 == 34) {
                        textView.setCompoundDrawablePadding(obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                    } else if (index2 == 14) {
                        textView.setMaxLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 9) {
                        textView.setMaxHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == 15) {
                        textView.setLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 16) {
                        textView.setHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == 17) {
                        textView.setMinLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 11) {
                        textView.setMinHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == 18) {
                        textView.setMaxEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 8) {
                        textView.setMaxWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == 19) {
                        textView.setEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 20) {
                        textView.setWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == 21) {
                        textView.setMinEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 10) {
                        textView.setMinWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == 7) {
                        textView.setGravity(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == 22) {
                        textView.setHorizontallyScrolling(obtainStyledAttributes3.getBoolean(index2, false));
                    } else if (index2 == 24) {
                        textView.setIncludeFontPadding(obtainStyledAttributes3.getBoolean(index2, true));
                    } else if (index2 == 13) {
                        textView.setCursorVisible(obtainStyledAttributes3.getBoolean(index2, true));
                    } else if (index2 == 12) {
                        textView.setTextScaleX(obtainStyledAttributes3.getFloat(index2, 1.0f));
                    } else if (index2 == 26) {
                        i4 = obtainStyledAttributes3.getInt(index2, 0);
                    } else if (index2 == 27) {
                        f3 = obtainStyledAttributes3.getFloat(index2, 0.0f);
                    } else if (index2 == 28) {
                        f2 = obtainStyledAttributes3.getFloat(index2, 0.0f);
                    } else if (index2 == 29) {
                        f = obtainStyledAttributes3.getFloat(index2, 0.0f);
                    } else if (index2 == 4) {
                        textView.setHighlightColor(obtainStyledAttributes3.getColor(index2, 0));
                    } else if (index2 == 3) {
                        textView.setTextColor(obtainStyledAttributes3.getColorStateList(index2));
                    } else if (index2 == 5) {
                        textView.setHintTextColor(obtainStyledAttributes3.getColorStateList(index2));
                    } else {
                        if (index2 == 6) {
                            textView.setLinkTextColor(obtainStyledAttributes3.getColorStateList(index2));
                            str = str;
                            i3 = i3;
                            i5 = i5;
                        } else if (index2 == 0) {
                            textView.setTextSize(0, obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                            str = str;
                            i3 = i3;
                            i5 = i5;
                        } else if (index2 == 1) {
                            i3 = obtainStyledAttributes3.getInt(index2, -1);
                            i5 = i5;
                            str = str;
                        } else if (index2 == 2) {
                            i5 = obtainStyledAttributes3.getInt(index2, -1);
                            str = str;
                            i3 = i3;
                        } else if (index2 == 40 || index2 == 44) {
                            str = obtainStyledAttributes3.getString(index2);
                            i3 = i3;
                            i5 = i5;
                        } else if (index2 == 37) {
                            str = str;
                            i3 = i3;
                            i5 = i5;
                            if (Build.VERSION.SDK_INT >= 14) {
                                textView.setAllCaps(obtainStyledAttributes3.getBoolean(index2, false));
                                str = str;
                                i3 = i3;
                                i5 = i5;
                            }
                        } else {
                            if (index2 == 41) {
                                f3 = f3;
                                f2 = f2;
                                f = f;
                                i4 = i4;
                                z = z;
                                drawable = drawable;
                                drawable2 = drawable2;
                                drawable3 = drawable3;
                                drawable4 = drawable4;
                                drawable5 = drawable5;
                                str = str;
                                i3 = i3;
                                i5 = i5;
                                drawable6 = drawable6;
                                z2 = z2;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    textView.setElegantTextHeight(obtainStyledAttributes3.getBoolean(index2, false));
                                    f3 = f3;
                                    f2 = f2;
                                    f = f;
                                    i4 = i4;
                                    z = z;
                                    drawable = drawable;
                                    drawable2 = drawable2;
                                    drawable3 = drawable3;
                                    drawable4 = drawable4;
                                    drawable5 = drawable5;
                                    str = str;
                                    i3 = i3;
                                    i5 = i5;
                                    drawable6 = drawable6;
                                    z2 = z2;
                                }
                            } else if (index2 == 42) {
                                f3 = f3;
                                f2 = f2;
                                f = f;
                                i4 = i4;
                                z = z;
                                drawable = drawable;
                                drawable2 = drawable2;
                                drawable3 = drawable3;
                                drawable4 = drawable4;
                                drawable5 = drawable5;
                                str = str;
                                i3 = i3;
                                i5 = i5;
                                drawable6 = drawable6;
                                z2 = z2;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    textView.setLetterSpacing(obtainStyledAttributes3.getFloat(index2, 0.0f));
                                    f3 = f3;
                                    f2 = f2;
                                    f = f;
                                    i4 = i4;
                                    z = z;
                                    drawable = drawable;
                                    drawable2 = drawable2;
                                    drawable3 = drawable3;
                                    drawable4 = drawable4;
                                    drawable5 = drawable5;
                                    str = str;
                                    i3 = i3;
                                    i5 = i5;
                                    drawable6 = drawable6;
                                    z2 = z2;
                                }
                            } else {
                                f3 = f3;
                                f2 = f2;
                                f = f;
                                i4 = i4;
                                z = z;
                                drawable = drawable;
                                drawable2 = drawable2;
                                drawable3 = drawable3;
                                drawable4 = drawable4;
                                drawable5 = drawable5;
                                str = str;
                                i3 = i3;
                                i5 = i5;
                                drawable6 = drawable6;
                                z2 = z2;
                                if (index2 == 43) {
                                    f3 = f3;
                                    f2 = f2;
                                    f = f;
                                    i4 = i4;
                                    z = z;
                                    drawable = drawable;
                                    drawable2 = drawable2;
                                    drawable3 = drawable3;
                                    drawable4 = drawable4;
                                    drawable5 = drawable5;
                                    str = str;
                                    i3 = i3;
                                    i5 = i5;
                                    drawable6 = drawable6;
                                    z2 = z2;
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        textView.setFontFeatureSettings(obtainStyledAttributes3.getString(index2));
                                        z2 = z2;
                                        drawable6 = drawable6;
                                        i5 = i5;
                                        i3 = i3;
                                        str = str;
                                        drawable5 = drawable5;
                                        drawable4 = drawable4;
                                        drawable3 = drawable3;
                                        drawable2 = drawable2;
                                        drawable = drawable;
                                        z = z;
                                        i4 = i4;
                                        f = f;
                                        f2 = f2;
                                        f3 = f3;
                                    }
                                }
                            }
                        }
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i4 = i4;
                        z = z;
                        drawable = drawable;
                        drawable2 = drawable2;
                        drawable3 = drawable3;
                        drawable4 = drawable4;
                        drawable5 = drawable5;
                        drawable6 = drawable6;
                        z2 = z2;
                    }
                    z = z;
                    drawable = drawable;
                    drawable2 = drawable2;
                    drawable3 = drawable3;
                    drawable4 = drawable4;
                    drawable5 = drawable5;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    drawable6 = drawable6;
                    z2 = z2;
                }
                z2 = true;
                f3 = f3;
                f2 = f2;
                f = f;
                i4 = i4;
                z = z;
                drawable2 = drawable2;
                drawable3 = drawable3;
                drawable5 = drawable5;
                str = str;
                i3 = i3;
                i5 = i5;
                drawable6 = drawable6;
            }
            z = true;
            f3 = f3;
            f2 = f2;
            f = f;
            i4 = i4;
            drawable = drawable;
            drawable4 = drawable4;
            str = str;
            i3 = i3;
            i5 = i5;
            z2 = z2;
        }
        obtainStyledAttributes3.recycle();
        if (i4 != 0) {
            textView.setShadowLayer(f, f3, f2, i4);
        }
        if (z) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (drawable != null) {
                compoundDrawables[0] = drawable;
            } else if (drawable2 != null) {
                compoundDrawables[0] = drawable2;
            }
            if (drawable3 != null) {
                compoundDrawables[1] = drawable3;
            }
            if (drawable4 != null) {
                compoundDrawables[2] = drawable4;
            } else if (drawable5 != null) {
                compoundDrawables[2] = drawable5;
            }
            if (drawable6 != null) {
                compoundDrawables[3] = drawable6;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        }
        if (z2 && Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawable != null) {
                compoundDrawablesRelative[0] = drawable;
            }
            if (drawable4 != null) {
                compoundDrawablesRelative[2] = drawable4;
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(compoundDrawablesRelative[0], compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
        }
        if (str != null) {
            Typeface a = C3123c.m77a(textView.getContext(), str, i5);
            typeface = a;
            if (a != null) {
                textView.setTypeface(a);
                typeface = a;
            }
        } else {
            typeface = null;
        }
        if (typeface != null) {
            if (i3 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i3 == 2) {
                typeface = Typeface.SERIF;
            } else if (i3 == 3) {
                typeface = Typeface.MONOSPACE;
            }
            textView.setTypeface(typeface, i5);
        }
        if (textView instanceof AutoCompleteTextView) {
            m73d((AutoCompleteTextView) textView, attributeSet, i, i2);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: f */
    public static int m71f() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f12934a;
            i = atomicInteger.get();
            int i3 = i + 1;
            i2 = i3;
            if (i3 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    /* renamed from: g */
    public static boolean m70g(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public static void m69h(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
