package p084e9;

import android.text.Editable;
import android.text.TextWatcher;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import java.util.Objects;
/* renamed from: e9.a */
/* loaded from: classes2-dex2jar.jar:e9/a.class */
public class C2626a implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ MaterialAutoCompleteTextView f9057a;

    public C2626a(MaterialAutoCompleteTextView materialAutoCompleteTextView) {
        this.f9057a = materialAutoCompleteTextView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        MaterialAutoCompleteTextView materialAutoCompleteTextView = this.f9057a;
        int i = MaterialAutoCompleteTextView.f7698v0;
        materialAutoCompleteTextView.m3882d();
        MaterialAutoCompleteTextView materialAutoCompleteTextView2 = this.f9057a;
        if (materialAutoCompleteTextView2.f7715R) {
            Objects.requireNonNull(materialAutoCompleteTextView2);
        } else {
            materialAutoCompleteTextView2.setError(null);
        }
        this.f9057a.postInvalidate();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
