package p193e.p194a.p1080o.p1097b.p1098a;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.view.CustomTextInputLayout;
import p193e.p194a.p1080o.p1102o.C18802o;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/g.class */
public final class C18698g implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ CustomTextInputLayout f52559a;

    public C18698g(CustomTextInputLayout customTextInputLayout) {
        this.f52559a = customTextInputLayout;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C18802o binding;
        CustomTextInputLayout.m35577g1(this.f52559a);
        CustomTextInputLayout.AbstractC3791a customTextInputLayoutCallback = this.f52559a.getCustomTextInputLayoutCallback();
        if (customTextInputLayoutCallback != null) {
            customTextInputLayoutCallback.mo14750T(editable);
        }
        binding = this.f52559a.getBinding();
        TextView textView = binding.f52830c;
        l.d(textView, "binding.txtCounter");
        textView.setText(this.f52559a.getResources().getString(C3771R.string.context_call_custom_message_counter, editable != null ? Integer.valueOf(editable.length()) : null, Integer.valueOf(this.f52559a.getResources().getInteger(C3771R.integer.context_call_custom_message_max_length))));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        CustomTextInputLayout.AbstractC3791a customTextInputLayoutCallback = this.f52559a.getCustomTextInputLayoutCallback();
        if (customTextInputLayoutCallback != null) {
            customTextInputLayoutCallback.mo14750T(charSequence);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        CustomTextInputLayout.AbstractC3791a customTextInputLayoutCallback = this.f52559a.getCustomTextInputLayoutCallback();
        if (customTextInputLayoutCallback != null) {
            customTextInputLayoutCallback.mo14750T(charSequence);
        }
    }
}
