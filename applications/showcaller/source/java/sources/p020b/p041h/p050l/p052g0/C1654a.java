package p020b.p041h.p050l.p052g0;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import p020b.p041h.p049k.C1597h;
/* renamed from: b.h.l.g0.a */
/* loaded from: classes-dex2jar.jar:b/h/l/g0/a.class */
public final class C1654a {

    /* renamed from: a */
    private static final String[] f6320a = new String[0];

    /* renamed from: b.h.l.g0.a$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/a$a.class */
    public static class C1655a {
        /* renamed from: a */
        static void m29417a(EditorInfo editorInfo, CharSequence charSequence, int i) {
            editorInfo.setInitialSurroundingSubText(charSequence, i);
        }
    }

    /* renamed from: a */
    public static String[] m29425a(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            if (strArr == null) {
                strArr = f6320a;
            }
            return strArr;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return f6320a;
        }
        String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
        String[] strArr2 = stringArray;
        if (stringArray == null) {
            strArr2 = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
        }
        if (strArr2 == null) {
            strArr2 = f6320a;
        }
        return strArr2;
    }

    /* renamed from: b */
    private static boolean m29424b(CharSequence charSequence, int i, int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return Character.isHighSurrogate(charSequence.charAt(i));
            }
            return false;
        }
        return Character.isLowSurrogate(charSequence.charAt(i));
    }

    /* renamed from: c */
    private static boolean m29423c(int i) {
        int i2 = i & 4095;
        return i2 == 129 || i2 == 225 || i2 == 18;
    }

    /* renamed from: d */
    public static void m29422d(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
        editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
    }

    /* renamed from: e */
    public static void m29421e(EditorInfo editorInfo, CharSequence charSequence, int i) {
        C1597h.m29659e(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            C1655a.m29417a(editorInfo, charSequence, i);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 - i : i2 - i;
        int i5 = i2 > i3 ? i2 - i : i3 - i;
        int length = charSequence.length();
        if (i < 0 || i4 < 0 || i5 > length) {
            m29419g(editorInfo, null, 0, 0);
        } else if (m29423c(editorInfo.inputType)) {
            m29419g(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            m29419g(editorInfo, charSequence, i4, i5);
        } else {
            m29418h(editorInfo, charSequence, i4, i5);
        }
    }

    /* renamed from: f */
    public static void m29420f(EditorInfo editorInfo, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            C1655a.m29417a(editorInfo, charSequence, 0);
        } else {
            m29421e(editorInfo, charSequence, 0);
        }
    }

    /* renamed from: g */
    private static void m29419g(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i2);
    }

    /* renamed from: h */
    private static void m29418h(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        int i3 = i2 - i;
        int i4 = i3 > 1024 ? 0 : i3;
        int i5 = 2048 - i4;
        int min = Math.min(charSequence.length() - i2, i5 - Math.min(i, (int) (i5 * 0.8d)));
        int min2 = Math.min(i, i5 - min);
        int i6 = i - min2;
        int i7 = min2;
        int i8 = i6;
        if (m29424b(charSequence, i6, 0)) {
            i8 = i6 + 1;
            i7 = min2 - 1;
        }
        int i9 = min;
        if (m29424b(charSequence, (i2 + min) - 1, 1)) {
            i9 = min - 1;
        }
        CharSequence concat = i4 != i3 ? TextUtils.concat(charSequence.subSequence(i8, i8 + i7), charSequence.subSequence(i2, i9 + i2)) : charSequence.subSequence(i8, i7 + i4 + i9 + i8);
        int i10 = i7 + 0;
        m29419g(editorInfo, concat, i10, i4 + i10);
    }
}
