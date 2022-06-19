package p193e.p194a.p1365y.p1381b;

import android.text.InputFilter;
import android.text.Spanned;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collection;
import s1.d0.j;
import s1.u.z;
import s1.z.c.l;
/* renamed from: e.a.y.b.l */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/l.class */
public final class C21613l implements InputFilter {
    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        boolean z;
        Collection j = j.j(i, i2);
        if (!(j instanceof Collection) || !j.isEmpty()) {
            z it = j.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                if (l.a(String.valueOf(charSequence != null ? Character.valueOf(charSequence.charAt(it.a())) : null), StringConstant.NEW_LINE)) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        CharSequence charSequence2 = null;
        if (z) {
            charSequence2 = StringConstant.SPACE;
        }
        return charSequence2;
    }
}
