package p078e2;

import android.text.Editable;
import android.text.TextWatcher;
import java.util.Objects;
/* renamed from: e2.f */
/* loaded from: classes-dex2jar.jar:e2/f.class */
public class C2529f implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC2530g f8821a;

    public C2529f(View$OnClickListenerC2530g view$OnClickListenerC2530g) {
        this.f8821a = view$OnClickListenerC2530g;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int length = charSequence.toString().length();
        Objects.requireNonNull(this.f8821a.f8822c);
        boolean z = length == 0;
        this.f8821a.m3481c(EnumC2524b.POSITIVE).setEnabled(!z);
        this.f8821a.m3479e(length, z);
        Objects.requireNonNull(this.f8821a.f8822c);
    }
}
