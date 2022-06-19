package p084e9;

import android.text.Editable;
import android.text.TextWatcher;
import com.rengwuxian.materialedittext.MaterialEditText;
import p203p8.C4052e;
/* renamed from: e9.e */
/* loaded from: classes2-dex2jar.jar:e9/e.class */
public class C2630e implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ MaterialEditText f9061a;

    public C2630e(MaterialEditText materialEditText) {
        this.f9061a = materialEditText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C4052e labelAnimator;
        C4052e labelAnimator2;
        if (this.f9061a.f7810o) {
            if (editable.length() == 0) {
                MaterialEditText materialEditText = this.f9061a;
                if (!materialEditText.f7776L) {
                    return;
                }
                materialEditText.f7776L = false;
                labelAnimator2 = materialEditText.getLabelAnimator();
                labelAnimator2.m1441h();
                return;
            }
            MaterialEditText materialEditText2 = this.f9061a;
            if (materialEditText2.f7776L) {
                return;
            }
            materialEditText2.f7776L = true;
            labelAnimator = materialEditText2.getLabelAnimator();
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
