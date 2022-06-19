package p193e.p194a.p1164r.p1168b;

import android.content.DialogInterface;
import com.truecaller.wizard.adschoices.AdsChoice;
/* renamed from: e.a.r.b.a$e */
/* loaded from: classes16-dex2jar.jar:e/a/r/b/a$e.class */
public final class a$e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f54774a;

    public a$e(a aVar) {
        this.f54774a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        n nVar = this.f54774a.f;
        nVar.d = true;
        nVar.Oj(AdsChoice.PERSONALIZED_ADS, false);
    }
}
