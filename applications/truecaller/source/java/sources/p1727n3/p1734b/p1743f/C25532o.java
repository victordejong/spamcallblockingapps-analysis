package p1727n3.p1734b.p1743f;

import android.view.View;
import androidx.appcompat.widget.AppCompatSpinner;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25488p;
/* renamed from: n3.b.f.o */
/* loaded from: classes-dex2jar.jar:n3/b/f/o.class */
public class C25532o extends AbstractView$OnTouchListenerC25561z {

    /* renamed from: j */
    public final /* synthetic */ AppCompatSpinner.d f71436j;

    /* renamed from: k */
    public final /* synthetic */ AppCompatSpinner f71437k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25532o(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner.d dVar) {
        super(view);
        this.f71437k = appCompatSpinner;
        this.f71436j = dVar;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
    /* renamed from: b */
    public AbstractC25488p mo3240b() {
        return this.f71436j;
    }

    @Override // p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z
    /* renamed from: c */
    public boolean mo3239c() {
        if (!this.f71437k.getInternalPopup().isShowing()) {
            this.f71437k.m43147b();
            return true;
        }
        return true;
    }
}
