package p185o0;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.inputmethod.EditorInfo;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* renamed from: o0.a */
/* loaded from: classes-dex2jar.jar:o0/a.class */
public final class C3806a {

    /* renamed from: a */
    public static final String[] f12282a = new String[0];

    /* renamed from: a */
    public static boolean m1784a(CharSequence charSequence, int i, int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return Character.isHighSurrogate(charSequence.charAt(i));
            }
            return false;
        }
        return Character.isLowSurrogate(charSequence.charAt(i));
    }

    /* renamed from: b */
    public static void m1783b(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i2);
    }
}
