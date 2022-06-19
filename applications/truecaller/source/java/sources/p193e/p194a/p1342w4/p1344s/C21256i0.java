package p193e.p194a.p1342w4.p1344s;

import android.text.Editable;
import android.text.TextWatcher;
import com.truecaller.search.global.GlobalSearchResultActivity;
/* renamed from: e.a.w4.s.i0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/i0.class */
public class C21256i0 implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ GlobalSearchResultActivity f59569a;

    public C21256i0(GlobalSearchResultActivity globalSearchResultActivity) {
        this.f59569a = globalSearchResultActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        GlobalSearchResultActivity globalSearchResultActivity = this.f59569a;
        globalSearchResultActivity.f14646e.mo10069We(globalSearchResultActivity.f14652k.getText().toString());
    }
}
