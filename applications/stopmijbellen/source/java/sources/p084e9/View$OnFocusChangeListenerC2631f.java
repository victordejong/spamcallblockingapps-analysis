package p084e9;

import android.view.View;
import com.rengwuxian.materialedittext.MaterialEditText;
import p203p8.C4052e;
/* renamed from: e9.f */
/* loaded from: classes2-dex2jar.jar:e9/f.class */
public class View$OnFocusChangeListenerC2631f implements View.OnFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ MaterialEditText f9062a;

    public View$OnFocusChangeListenerC2631f(MaterialEditText materialEditText) {
        this.f9062a = materialEditText;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        C4052e labelFocusAnimator;
        C4052e labelFocusAnimator2;
        MaterialEditText materialEditText = this.f9062a;
        if (materialEditText.f7810o && materialEditText.f7812p) {
            if (z) {
                labelFocusAnimator2 = materialEditText.getLabelFocusAnimator();
                labelFocusAnimator2.m1439j(false);
            } else {
                labelFocusAnimator = materialEditText.getLabelFocusAnimator();
                labelFocusAnimator.m1441h();
            }
        }
        MaterialEditText materialEditText2 = this.f9062a;
        boolean z2 = materialEditText2.f7789c0;
        View.OnFocusChangeListener onFocusChangeListener = materialEditText2.f7825v0;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z);
        }
    }
}
