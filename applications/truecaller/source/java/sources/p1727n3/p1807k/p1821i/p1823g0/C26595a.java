package p1727n3.p1807k.p1821i.p1823g0;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.inputmethod.EditorInfo;
/* renamed from: n3.k.i.g0.a */
/* loaded from: classes-dex2jar.jar:n3/k/i/g0/a.class */
public final class C26595a {

    /* renamed from: a */
    public static final String[] f74486a = new String[0];

    /* renamed from: a */
    public static boolean m1608a(CharSequence charSequence, int i, int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return Character.isHighSurrogate(charSequence.charAt(i));
            }
            return false;
        }
        return Character.isLowSurrogate(charSequence.charAt(i));
    }

    /* renamed from: b */
    public static void m1607b(EditorInfo editorInfo, String[] strArr) {
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

    /* renamed from: c */
    public static void m1606c(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i2);
    }
}
