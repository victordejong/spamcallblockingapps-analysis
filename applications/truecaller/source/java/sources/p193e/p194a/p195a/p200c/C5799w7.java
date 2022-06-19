package p193e.p194a.p195a.p200c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.truecaller.C2752R;
import javax.inject.Inject;
import n3.r.a.k;
import p1727n3.p1734b.p1735a.g$a;
/* renamed from: e.a.a.c.w7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/w7.class */
public class C5799w7 extends k {

    /* renamed from: b */
    public static final /* synthetic */ int f19406b = 0;
    @Inject

    /* renamed from: a */
    public AbstractC5276f4 f19407a;

    public void onAttach(Context context) {
        C5799w7.super.onAttach(context);
        this.f19407a = (AbstractC5276f4) ((C5689r5) ((AbstractC5275f3) context).mo33447z9()).f19131v.get();
    }

    public Dialog onCreateDialog(Bundle bundle) {
        g$a g_a = new g$a(getContext());
        g_a.m3656m(C2752R.string.DialogSendGroupSmsTitle);
        g_a.m3664e(C2752R.string.DialogSendGroupSmsMessage);
        g_a.m3660i(C2752R.string.DialogSendGroupSmsButtonSms, new DialogInterface.OnClickListener() { // from class: e.a.a.c.v2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5799w7 c5799w7 = C5799w7.this;
                int i2 = C5799w7.f19406b;
                if (i == -2) {
                    c5799w7.f19407a.mo33295w();
                } else if (i == -1) {
                    c5799w7.f19407a.mo33300t();
                }
                c5799w7.dismiss();
            }
        });
        g_a.m3662g(C2752R.string.DialogSendGroupSmsButtonMms, new DialogInterface.OnClickListener() { // from class: e.a.a.c.v2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5799w7 c5799w7 = C5799w7.this;
                int i2 = C5799w7.f19406b;
                if (i == -2) {
                    c5799w7.f19407a.mo33295w();
                } else if (i == -1) {
                    c5799w7.f19407a.mo33300t();
                }
                c5799w7.dismiss();
            }
        });
        return g_a.m3668a();
    }
}
