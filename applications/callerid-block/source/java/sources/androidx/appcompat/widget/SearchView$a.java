package androidx.appcompat.widget;

import android.text.Editable;
import android.text.TextWatcher;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
class SearchView$a implements TextWatcher {

    /* renamed from: b */
    final /* synthetic */ SearchView f462b;

    SearchView$a(SearchView searchView) {
        this.f462b = searchView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f462b.Y(charSequence);
    }
}
