package p193e.p194a.p1342w4.p1344s;

import android.text.Editable;
import android.text.TextWatcher;
import com.truecaller.search.global.GlobalSearchResultActivity;
/* renamed from: e.a.w4.s.j0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/j0.class */
public class C21258j0 implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ GlobalSearchResultActivity f59571a;

    public C21258j0(GlobalSearchResultActivity globalSearchResultActivity) {
        this.f59571a = globalSearchResultActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f59571a.f14646e.mo10082Pi(this.f59571a.f14655n.getText().toString().trim());
    }
}
