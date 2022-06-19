package p193e.p194a.p1221t.p1222a;

import android.widget.MultiAutoCompleteTextView;
import s1.z.c.l;
/* renamed from: e.a.t.a.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/c.class */
public final class C20277c implements MultiAutoCompleteTextView.Tokenizer {
    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenEnd(CharSequence charSequence, int i) {
        l.e(charSequence, "text");
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            if (!(Character.isLetterOrDigit(charAt) || charAt == '_')) {
                break;
            }
            i++;
        }
        return i;
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenStart(CharSequence charSequence, int i) {
        char charAt;
        l.e(charSequence, "text");
        int i2 = i;
        do {
            i2--;
            if (i2 < 0) {
                break;
            }
            charAt = charSequence.charAt(i2);
            if (charAt == ':') {
                return i2;
            }
        } while (Character.isLetterOrDigit(charAt) || charAt == '_');
        return i;
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public CharSequence terminateToken(CharSequence charSequence) {
        l.e(charSequence, "text");
        return charSequence;
    }
}
