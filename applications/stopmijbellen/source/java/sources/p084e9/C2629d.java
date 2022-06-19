package p084e9;

import android.text.Editable;
import android.text.TextWatcher;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.util.Objects;
/* renamed from: e9.d */
/* loaded from: classes2-dex2jar.jar:e9/d.class */
public class C2629d implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ MaterialEditText f9060a;

    public C2629d(MaterialEditText materialEditText) {
        this.f9060a = materialEditText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        MaterialEditText materialEditText = this.f9060a;
        int i = MaterialEditText.f7764w0;
        materialEditText.m3864e();
        MaterialEditText materialEditText2 = this.f9060a;
        if (materialEditText2.f7782S) {
            Objects.requireNonNull(materialEditText2);
        } else {
            materialEditText2.setError(null);
        }
        this.f9060a.postInvalidate();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
