package p193e.p194a.p1080o.p1097b.p1098a;

import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.view.CustomTextInputLayout;
import p193e.p194a.p1080o.p1102o.C18802o;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.o.b.a.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/e.class */
public final class C18696e extends m implements a<C18802o> {

    /* renamed from: b */
    public final /* synthetic */ CustomTextInputLayout f52557b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18696e(CustomTextInputLayout customTextInputLayout) {
        super(0);
        this.f52557b = customTextInputLayout;
    }

    public Object invoke() {
        CustomTextInputLayout customTextInputLayout = this.f52557b;
        int i = C3771R.C3773id.et_custom_msg;
        TextInputLayout textInputLayout = (TextInputLayout) customTextInputLayout.findViewById(i);
        if (textInputLayout != null) {
            i = C3771R.C3773id.txt_counter;
            TextView textView = (TextView) customTextInputLayout.findViewById(i);
            if (textView != null) {
                return new C18802o(customTextInputLayout, textInputLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(customTextInputLayout.getResources().getResourceName(i)));
    }
}
