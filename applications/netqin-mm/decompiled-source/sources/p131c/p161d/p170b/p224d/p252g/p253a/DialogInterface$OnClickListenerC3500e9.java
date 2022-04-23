package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: c.d.b.d.g.a.e9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e9.class */
public final class DialogInterface$OnClickListenerC3500e9 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ JsPromptResult f12807a;

    public DialogInterface$OnClickListenerC3500e9(JsPromptResult jsPromptResult) {
        this.f12807a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f12807a.cancel();
    }
}
