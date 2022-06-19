package carbon.widget;

import android.text.Spannable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:carbon/widget/AutoCompleteEditText$c.class */
public class AutoCompleteEditText$c implements Comparable<AutoCompleteEditText$c>, Serializable {

    /* renamed from: a */
    public int f2241a;

    /* renamed from: b */
    public Spannable f2242b;

    /* renamed from: c */
    public Object f2243c;

    public AutoCompleteEditText$c(int i, Spannable spannable, Object obj) {
        this.f2241a = i;
        this.f2242b = spannable;
        this.f2243c = obj;
    }

    /* renamed from: a */
    public int compareTo(AutoCompleteEditText$c autoCompleteEditText$c) {
        int i = this.f2241a;
        int i2 = autoCompleteEditText$c.f2241a;
        return i != i2 ? i - i2 : (i != 1 || this.f2242b.length() == autoCompleteEditText$c.f2242b.length()) ? this.f2242b.toString().compareTo(autoCompleteEditText$c.f2242b.toString()) : this.f2242b.length() - autoCompleteEditText$c.f2242b.length();
    }

    /* renamed from: b */
    public Object m5388b() {
        return this.f2243c;
    }

    public boolean equals(Object obj) {
        return this.f2242b.equals(((AutoCompleteEditText$c) obj).f2242b);
    }
}
