package p084e9;

import android.view.View;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import p203p8.C4052e;
/* renamed from: e9.c */
/* loaded from: classes2-dex2jar.jar:e9/c.class */
public class View$OnFocusChangeListenerC2628c implements View.OnFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ MaterialAutoCompleteTextView f9059a;

    public View$OnFocusChangeListenerC2628c(MaterialAutoCompleteTextView materialAutoCompleteTextView) {
        this.f9059a = materialAutoCompleteTextView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        C4052e labelFocusAnimator;
        C4052e labelFocusAnimator2;
        MaterialAutoCompleteTextView materialAutoCompleteTextView = this.f9059a;
        if (materialAutoCompleteTextView.f7743n && materialAutoCompleteTextView.f7745o) {
            if (z) {
                labelFocusAnimator2 = materialAutoCompleteTextView.getLabelFocusAnimator();
                labelFocusAnimator2.m1439j(false);
            } else {
                labelFocusAnimator = materialAutoCompleteTextView.getLabelFocusAnimator();
                labelFocusAnimator.m1441h();
            }
        }
        MaterialAutoCompleteTextView materialAutoCompleteTextView2 = this.f9059a;
        boolean z2 = materialAutoCompleteTextView2.f7722b0;
        View.OnFocusChangeListener onFocusChangeListener = materialAutoCompleteTextView2.f7758u0;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z);
        }
    }
}
