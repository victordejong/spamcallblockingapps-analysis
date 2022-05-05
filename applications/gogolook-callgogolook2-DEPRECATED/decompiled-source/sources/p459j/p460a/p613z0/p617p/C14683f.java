package p459j.p460a.p613z0.p617p;

import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import com.google.i18n.phonenumbers.AsYouTypeFormatter;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
/* renamed from: j.a.z0.p.f */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/f.class */
public class C14683f implements TextWatcher {

    /* renamed from: a */
    public boolean f32790a = false;

    /* renamed from: b */
    public boolean f32791b;

    /* renamed from: c */
    public AsYouTypeFormatter f32792c;

    public C14683f(String str) {
        if (str != null) {
            this.f32792c = PhoneNumberUtil.getInstance().getAsYouTypeFormatter(str);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final String m873a(char c, boolean z) {
        return z ? this.f32792c.inputDigitAndRememberPosition(c) : this.f32792c.inputDigit(c);
    }

    /* renamed from: a */
    public final String m872a(CharSequence charSequence, int i) {
        this.f32792c.clear();
        int length = charSequence.length();
        String str = null;
        char c = 0;
        boolean z = false;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = charSequence.charAt(i2);
            c = c;
            z = z;
            str = str;
            if (PhoneNumberUtils.isNonSeparator(charAt)) {
                z = z;
                if (c != 0) {
                    str = m873a(c, z);
                    z = false;
                }
                c = charAt;
            }
            if (i2 == i - 1) {
                z = true;
            }
        }
        if (c != 0) {
            str = m873a(c, z);
        }
        return str;
    }

    /* renamed from: a */
    public final void m874a() {
        this.f32791b = true;
        this.f32792c.clear();
    }

    /* renamed from: a */
    public final boolean m871a(CharSequence charSequence, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            if (!PhoneNumberUtils.isNonSeparator(charSequence.charAt(i3))) {
                return true;
            }
        }
        return false;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        synchronized (this) {
            boolean z = true;
            if (this.f32791b) {
                if (editable.length() == 0) {
                    z = false;
                }
                this.f32791b = z;
            } else if (!this.f32790a) {
                String a = m872a(editable, Selection.getSelectionEnd(editable));
                if (a != null) {
                    int rememberedPosition = this.f32792c.getRememberedPosition();
                    this.f32790a = true;
                    editable.replace(0, editable.length(), a, 0, a.length());
                    if (a.equals(editable.toString())) {
                        Selection.setSelection(editable, rememberedPosition);
                    }
                    this.f32790a = false;
                }
            }
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!this.f32790a && !this.f32791b && i2 > 0 && m871a(charSequence, i, i2)) {
            m874a();
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!this.f32790a && !this.f32791b && i3 > 0 && m871a(charSequence, i, i3)) {
            m874a();
        }
    }
}
