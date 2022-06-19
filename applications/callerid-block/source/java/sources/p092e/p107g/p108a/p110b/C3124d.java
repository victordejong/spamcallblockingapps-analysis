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
        if (r0 != 5) goto L150;
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
        boolean z;
        Typeface typeface;
        boolean z2;
        Drawable drawable;
        String str2;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        boolean z3;
        int i6;
        float f4;
        float f5;
        float f6;
        int i7;
        int i8;
        int i9;
        int i10;
        String str3;
        int i11;
        float f7;
        float f8;
        float f9;
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, R$styleable.TextViewAppearance, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = resourceId != -1 ? textView.getContext().obtainStyledAttributes(resourceId, R$styleable.TextAppearance) : null;
        if (obtainStyledAttributes2 != null) {
            int indexCount = obtainStyledAttributes2.getIndexCount();
            int i12 = 0;
            f3 = 0.0f;
            f2 = 0.0f;
            f = 0.0f;
            i4 = 0;
            str = null;
            i3 = -1;
            int i13 = -1;
            while (true) {
                i5 = i13;
                if (i12 >= indexCount) {
                    break;
                }
                int index = obtainStyledAttributes2.getIndex(i12);
                if (index == 4) {
                    textView.setHighlightColor(obtainStyledAttributes2.getColor(index, 0));
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 3) {
                    textView.setTextColor(obtainStyledAttributes2.getColorStateList(index));
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 5) {
                    textView.setHintTextColor(obtainStyledAttributes2.getColorStateList(index));
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 6) {
                    textView.setLinkTextColor(obtainStyledAttributes2.getColorStateList(index));
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 0) {
                    textView.setTextSize(0, obtainStyledAttributes2.getDimensionPixelSize(index, 0));
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 1) {
                    i10 = obtainStyledAttributes2.getInt(index, -1);
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i9 = i5;
                } else if (index == 12 || index == 21) {
                    str3 = obtainStyledAttributes2.getString(index);
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 2) {
                    i9 = obtainStyledAttributes2.getInt(index, -1);
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                } else if (index == 11) {
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(obtainStyledAttributes2.getBoolean(index, false));
                        f9 = f3;
                        f8 = f2;
                        f7 = f;
                        i11 = i4;
                        str3 = str;
                        i10 = i3;
                        i9 = i5;
                    }
                } else if (index == 7) {
                    i11 = obtainStyledAttributes2.getInt(index, 0);
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 8) {
                    f9 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 9) {
                    f8 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    f9 = f3;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 10) {
                    f7 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    f9 = f3;
                    f8 = f2;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                } else if (index == 13) {
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setElegantTextHeight(obtainStyledAttributes2.getBoolean(index, false));
                        f9 = f3;
                        f8 = f2;
                        f7 = f;
                        i11 = i4;
                        str3 = str;
                        i10 = i3;
                        i9 = i5;
                    }
                } else if (index == 14) {
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setLetterSpacing(obtainStyledAttributes2.getFloat(index, 0.0f));
                        f9 = f3;
                        f8 = f2;
                        f7 = f;
                        i11 = i4;
                        str3 = str;
                        i10 = i3;
                        i9 = i5;
                    }
                } else {
                    f9 = f3;
                    f8 = f2;
                    f7 = f;
                    i11 = i4;
                    str3 = str;
                    i10 = i3;
                    i9 = i5;
                    if (index == 15) {
                        f9 = f3;
                        f8 = f2;
                        f7 = f;
                        i11 = i4;
                        str3 = str;
                        i10 = i3;
                        i9 = i5;
                        if (Build.VERSION.SDK_INT >= 21) {
                            textView.setFontFeatureSettings(obtainStyledAttributes2.getString(index));
                            i9 = i5;
                            i10 = i3;
                            str3 = str;
                            i11 = i4;
                            f7 = f;
                            f8 = f2;
                            f9 = f3;
                        }
                    }
                }
                i12++;
                f3 = f9;
                f2 = f8;
                f = f7;
                i4 = i11;
                str = str3;
                i3 = i10;
                i13 = i9;
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
        int i14 = 0;
        boolean z4 = false;
        Drawable drawable7 = null;
        Drawable drawable8 = null;
        Drawable drawable9 = null;
        Drawable drawable10 = null;
        Drawable drawable11 = null;
        Drawable drawable12 = null;
        boolean z5 = false;
        while (true) {
            z = z5;
            if (i14 >= indexCount2) {
                break;
            }
            int index2 = obtainStyledAttributes3.getIndex(i14);
            if (index2 == 32) {
                drawable8 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == 30) {
                drawable9 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == 33) {
                drawable11 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == 31) {
                drawable12 = obtainStyledAttributes3.getDrawable(index2);
            } else {
                if (index2 == 38) {
                    drawable7 = obtainStyledAttributes3.getDrawable(index2);
                } else if (index2 == 39) {
                    drawable10 = obtainStyledAttributes3.getDrawable(index2);
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
                            str2 = str;
                            i6 = i3;
                            i8 = i5;
                        } else if (index2 == 0) {
                            textView.setTextSize(0, obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                            str2 = str;
                            i6 = i3;
                            i8 = i5;
                        } else if (index2 == 1) {
                            i6 = obtainStyledAttributes3.getInt(index2, -1);
                            i8 = i5;
                            str2 = str;
                        } else if (index2 == 2) {
                            i8 = obtainStyledAttributes3.getInt(index2, -1);
                            str2 = str;
                            i6 = i3;
                        } else if (index2 == 40 || index2 == 44) {
                            str2 = obtainStyledAttributes3.getString(index2);
                            i6 = i3;
                            i8 = i5;
                        } else if (index2 == 37) {
                            str2 = str;
                            i6 = i3;
                            i8 = i5;
                            if (Build.VERSION.SDK_INT >= 14) {
                                textView.setAllCaps(obtainStyledAttributes3.getBoolean(index2, false));
                                str2 = str;
                                i6 = i3;
                                i8 = i5;
                            }
                        } else {
                            if (index2 == 41) {
                                f6 = f3;
                                f5 = f2;
                                f4 = f;
                                i7 = i4;
                                z3 = z4;
                                drawable6 = drawable7;
                                drawable5 = drawable8;
                                drawable4 = drawable9;
                                drawable3 = drawable10;
                                drawable2 = drawable11;
                                str2 = str;
                                i6 = i3;
                                i8 = i5;
                                drawable = drawable12;
                                z2 = z;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    textView.setElegantTextHeight(obtainStyledAttributes3.getBoolean(index2, false));
                                    f6 = f3;
                                    f5 = f2;
                                    f4 = f;
                                    i7 = i4;
                                    z3 = z4;
                                    drawable6 = drawable7;
                                    drawable5 = drawable8;
                                    drawable4 = drawable9;
                                    drawable3 = drawable10;
                                    drawable2 = drawable11;
                                    str2 = str;
                                    i6 = i3;
                                    i8 = i5;
                                    drawable = drawable12;
                                    z2 = z;
                                }
                            } else if (index2 == 42) {
                                f6 = f3;
                                f5 = f2;
                                f4 = f;
                                i7 = i4;
                                z3 = z4;
                                drawable6 = drawable7;
                                drawable5 = drawable8;
                                drawable4 = drawable9;
                                drawable3 = drawable10;
                                drawable2 = drawable11;
                                str2 = str;
                                i6 = i3;
                                i8 = i5;
                                drawable = drawable12;
                                z2 = z;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    textView.setLetterSpacing(obtainStyledAttributes3.getFloat(index2, 0.0f));
                                    f6 = f3;
                                    f5 = f2;
                                    f4 = f;
                                    i7 = i4;
                                    z3 = z4;
                                    drawable6 = drawable7;
                                    drawable5 = drawable8;
                                    drawable4 = drawable9;
                                    drawable3 = drawable10;
                                    drawable2 = drawable11;
                                    str2 = str;
                                    i6 = i3;
                                    i8 = i5;
                                    drawable = drawable12;
                                    z2 = z;
                                }
                            } else {
                                f6 = f3;
                                f5 = f2;
                                f4 = f;
                                i7 = i4;
                                z3 = z4;
                                drawable6 = drawable7;
                                drawable5 = drawable8;
                                drawable4 = drawable9;
                                drawable3 = drawable10;
                                drawable2 = drawable11;
                                str2 = str;
                                i6 = i3;
                                i8 = i5;
                                drawable = drawable12;
                                z2 = z;
                                if (index2 == 43) {
                                    f6 = f3;
                                    f5 = f2;
                                    f4 = f;
                                    i7 = i4;
                                    z3 = z4;
                                    drawable6 = drawable7;
                                    drawable5 = drawable8;
                                    drawable4 = drawable9;
                                    drawable3 = drawable10;
                                    drawable2 = drawable11;
                                    str2 = str;
                                    i6 = i3;
                                    i8 = i5;
                                    drawable = drawable12;
                                    z2 = z;
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        textView.setFontFeatureSettings(obtainStyledAttributes3.getString(index2));
                                        z2 = z;
                                        drawable = drawable12;
                                        i8 = i5;
                                        i6 = i3;
                                        str2 = str;
                                        drawable2 = drawable11;
                                        drawable3 = drawable10;
                                        drawable4 = drawable9;
                                        drawable5 = drawable8;
                                        drawable6 = drawable7;
                                        z3 = z4;
                                        i7 = i4;
                                        f4 = f;
                                        f5 = f2;
                                        f6 = f3;
                                    }
                                }
                            }
                            i14++;
                            f3 = f6;
                            f2 = f5;
                            f = f4;
                            i4 = i7;
                            z4 = z3;
                            drawable7 = drawable6;
                            drawable8 = drawable5;
                            drawable9 = drawable4;
                            drawable10 = drawable3;
                            drawable11 = drawable2;
                            str = str2;
                            i3 = i6;
                            i5 = i8;
                            drawable12 = drawable;
                            z5 = z2;
                        }
                        f6 = f3;
                        f5 = f2;
                        f4 = f;
                        i7 = i4;
                        z3 = z4;
                        drawable6 = drawable7;
                        drawable5 = drawable8;
                        drawable4 = drawable9;
                        drawable3 = drawable10;
                        drawable2 = drawable11;
                        drawable = drawable12;
                        z2 = z;
                        i14++;
                        f3 = f6;
                        f2 = f5;
                        f = f4;
                        i4 = i7;
                        z4 = z3;
                        drawable7 = drawable6;
                        drawable8 = drawable5;
                        drawable9 = drawable4;
                        drawable10 = drawable3;
                        drawable11 = drawable2;
                        str = str2;
                        i3 = i6;
                        i5 = i8;
                        drawable12 = drawable;
                        z5 = z2;
                    }
                    f6 = f3;
                    f5 = f2;
                    f4 = f;
                    i7 = i4;
                    z3 = z4;
                    drawable6 = drawable7;
                    drawable5 = drawable8;
                    drawable4 = drawable9;
                    drawable3 = drawable10;
                    drawable2 = drawable11;
                    str2 = str;
                    i6 = i3;
                    i8 = i5;
                    drawable = drawable12;
                    z2 = z;
                    i14++;
                    f3 = f6;
                    f2 = f5;
                    f = f4;
                    i4 = i7;
                    z4 = z3;
                    drawable7 = drawable6;
                    drawable8 = drawable5;
                    drawable9 = drawable4;
                    drawable10 = drawable3;
                    drawable11 = drawable2;
                    str = str2;
                    i3 = i6;
                    i5 = i8;
                    drawable12 = drawable;
                    z5 = z2;
                }
                z2 = true;
                f6 = f3;
                f5 = f2;
                f4 = f;
                i7 = i4;
                z3 = z4;
                drawable6 = drawable7;
                drawable5 = drawable8;
                drawable4 = drawable9;
                drawable3 = drawable10;
                drawable2 = drawable11;
                str2 = str;
                i6 = i3;
                i8 = i5;
                drawable = drawable12;
                i14++;
                f3 = f6;
                f2 = f5;
                f = f4;
                i4 = i7;
                z4 = z3;
                drawable7 = drawable6;
                drawable8 = drawable5;
                drawable9 = drawable4;
                drawable10 = drawable3;
                drawable11 = drawable2;
                str = str2;
                i3 = i6;
                i5 = i8;
                drawable12 = drawable;
                z5 = z2;
            }
            z3 = true;
            f6 = f3;
            f5 = f2;
            f4 = f;
            i7 = i4;
            drawable6 = drawable7;
            drawable5 = drawable8;
            drawable4 = drawable9;
            drawable3 = drawable10;
            drawable2 = drawable11;
            str2 = str;
            i6 = i3;
            i8 = i5;
            drawable = drawable12;
            z2 = z;
            i14++;
            f3 = f6;
            f2 = f5;
            f = f4;
            i4 = i7;
            z4 = z3;
            drawable7 = drawable6;
            drawable8 = drawable5;
            drawable9 = drawable4;
            drawable10 = drawable3;
            drawable11 = drawable2;
            str = str2;
            i3 = i6;
            i5 = i8;
            drawable12 = drawable;
            z5 = z2;
        }
        obtainStyledAttributes3.recycle();
        if (i4 != 0) {
            textView.setShadowLayer(f, f3, f2, i4);
        }
        if (z4) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (drawable7 != null) {
                compoundDrawables[0] = drawable7;
            } else if (drawable8 != null) {
                compoundDrawables[0] = drawable8;
            }
            if (drawable9 != null) {
                compoundDrawables[1] = drawable9;
            }
            if (drawable10 != null) {
                compoundDrawables[2] = drawable10;
            } else if (drawable11 != null) {
                compoundDrawables[2] = drawable11;
            }
            if (drawable12 != null) {
                compoundDrawables[3] = drawable12;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        }
        if (z && Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawable7 != null) {
                compoundDrawablesRelative[0] = drawable7;
            }
            if (drawable10 != null) {
                compoundDrawablesRelative[2] = drawable10;
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(compoundDrawablesRelative[0], compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
        }
        if (str != null) {
            Typeface m77a = C3123c.m77a(textView.getContext(), str, i5);
            typeface = m77a;
            if (m77a != null) {
                textView.setTypeface(m77a);
                typeface = m77a;
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
        if (Build.VERSION.SDK_INT < 17) {
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
        return View.generateViewId();
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
