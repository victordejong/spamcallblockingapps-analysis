package carbon.beta;

import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$f.class */
public class MarshmallowEditText$f implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ MarshmallowEditText f2238a;

    public MarshmallowEditText$f(MarshmallowEditText marshmallowEditText) {
        this.f2238a = marshmallowEditText;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        MarshmallowEditText.M(this.f2238a, false);
    }
}
