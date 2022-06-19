package p193e.p194a.p1080o.p1097b.p1098a;

import android.view.KeyEvent;
import android.widget.TextView;
import com.truecaller.contextcall.utils.view.CustomTextInputLayout;
/* renamed from: e.a.o.b.a.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/f.class */
public final class C18697f implements TextView.OnEditorActionListener {

    /* renamed from: a */
    public final /* synthetic */ CustomTextInputLayout f52558a;

    public C18697f(CustomTextInputLayout customTextInputLayout) {
        this.f52558a = customTextInputLayout;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            CustomTextInputLayout.AbstractC3791a customTextInputLayoutCallback = this.f52558a.getCustomTextInputLayoutCallback();
            if (customTextInputLayoutCallback == null) {
                return true;
            }
            customTextInputLayoutCallback.mo14749w1(this.f52558a.getMessage());
            return true;
        }
        return false;
    }
}
