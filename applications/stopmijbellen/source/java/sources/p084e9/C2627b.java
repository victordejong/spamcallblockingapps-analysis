package p084e9;

import android.text.Editable;
import android.text.TextWatcher;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import p203p8.C4052e;
/* renamed from: e9.b */
/* loaded from: classes2-dex2jar.jar:e9/b.class */
public class C2627b implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ MaterialAutoCompleteTextView f9058a;

    public C2627b(MaterialAutoCompleteTextView materialAutoCompleteTextView) {
        this.f9058a = materialAutoCompleteTextView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C4052e labelAnimator;
        C4052e labelAnimator2;
        if (this.f9058a.f7743n) {
            if (editable.length() == 0) {
                MaterialAutoCompleteTextView materialAutoCompleteTextView = this.f9058a;
                if (!materialAutoCompleteTextView.f7709K) {
                    return;
                }
                materialAutoCompleteTextView.f7709K = false;
                labelAnimator2 = materialAutoCompleteTextView.getLabelAnimator();
                labelAnimator2.m1441h();
                return;
            }
            MaterialAutoCompleteTextView materialAutoCompleteTextView2 = this.f9058a;
            if (materialAutoCompleteTextView2.f7709K) {
                return;
            }
            materialAutoCompleteTextView2.f7709K = true;
            labelAnimator = materialAutoCompleteTextView2.getLabelAnimator();
            labelAnimator.m1439j(false);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
