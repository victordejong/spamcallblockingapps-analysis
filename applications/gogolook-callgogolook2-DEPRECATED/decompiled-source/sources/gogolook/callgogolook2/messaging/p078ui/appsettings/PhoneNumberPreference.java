package gogolook.callgogolook2.messaging.p078ui.appsettings;

import android.content.Context;
import android.preference.EditTextPreference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: gogolook.callgogolook2.messaging.ui.appsettings.PhoneNumberPreference */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/appsettings/PhoneNumberPreference.class */
public class PhoneNumberPreference extends EditTextPreference {

    /* renamed from: a */
    public String f11565a = "";

    public PhoneNumberPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    public void onBindDialogView(View view) {
        super.onBindDialogView(view);
        if (TextUtils.isEmpty(getText()) && !TextUtils.isEmpty(this.f11565a)) {
            getEditText().setText(BidiFormatter.getInstance().unicodeWrap(C14108o4.m2474l(this.f11565a), TextDirectionHeuristicsCompat.LTR));
        }
        getEditText().setInputType(3);
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        String text = getText();
        String str = text;
        if (TextUtils.isEmpty(text)) {
            str = this.f11565a;
        }
        setSummary(BidiFormatter.getInstance().unicodeWrap(!TextUtils.isEmpty(str) ? C14108o4.m2493a(str, true, false) : getContext().getString(R$string.unknown_phone_number_pref_display_value), TextDirectionHeuristicsCompat.LTR));
        super.onBindView(view);
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    public void onDialogClosed(boolean z) {
        if (!z || this.f11565a == null || !C14108o4.m2474l(getEditText().getText().toString()).equals(C14108o4.m2474l(this.f11565a))) {
            super.onDialogClosed(z);
        } else {
            setText("");
        }
    }

    @Override // android.preference.EditTextPreference
    public void setText(String str) {
        super.setText(str);
        notifyChanged();
    }
}
