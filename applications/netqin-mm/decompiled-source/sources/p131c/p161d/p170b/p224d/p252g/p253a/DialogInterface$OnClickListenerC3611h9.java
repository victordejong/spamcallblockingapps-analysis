package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* renamed from: c.d.b.d.g.a.h9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h9.class */
public final class DialogInterface$OnClickListenerC3611h9 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ JsPromptResult f13256a;

    /* renamed from: b */
    public final /* synthetic */ EditText f13257b;

    public DialogInterface$OnClickListenerC3611h9(JsPromptResult jsPromptResult, EditText editText) {
        this.f13256a = jsPromptResult;
        this.f13257b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f13256a.confirm(this.f13257b.getText().toString());
    }
}
