package p1727n3.p1849n.p1850o;

import android.text.Editable;
import android.text.TextWatcher;
import p1727n3.p1849n.AbstractC26867h;
/* renamed from: n3.n.o.b */
/* loaded from: classes-dex2jar.jar:n3/n/o/b.class */
public final class C26878b implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26880d f75140a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26881e f75141b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC26867h f75142c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC26879c f75143d;

    public C26878b(AbstractC26880d abstractC26880d, AbstractC26881e abstractC26881e, AbstractC26867h abstractC26867h, AbstractC26879c abstractC26879c) {
        this.f75140a = abstractC26880d;
        this.f75141b = abstractC26881e;
        this.f75142c = abstractC26867h;
        this.f75143d = abstractC26879c;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        AbstractC26879c abstractC26879c = this.f75143d;
        if (abstractC26879c != null) {
            abstractC26879c.afterTextChanged(editable);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        AbstractC26880d abstractC26880d = this.f75140a;
        if (abstractC26880d != null) {
            abstractC26880d.beforeTextChanged(charSequence, i, i2, i3);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        AbstractC26881e abstractC26881e = this.f75141b;
        if (abstractC26881e != null) {
            abstractC26881e.onTextChanged(charSequence, i, i2, i3);
        }
        AbstractC26867h abstractC26867h = this.f75142c;
        if (abstractC26867h != null) {
            abstractC26867h.mo1249a();
        }
    }
}
