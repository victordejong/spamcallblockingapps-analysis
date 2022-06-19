package p000;

import android.content.res.Resources;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p442b.p443a.DialogInterface$OnShowListenerC8755z;
import p193e.p194a.p437c.p438a.p442b.p445c.C8765b;
import p193e.p194a.p437c.p438a.p442b.p445c.C8769f;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.a.l;
import s1.s;
import s1.z.b.p;
/* renamed from: d1 */
/* loaded from: classes3-dex2jar.jar:d1.class */
public final class View$OnClickListenerC4878d1 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f16580a;

    /* renamed from: b */
    public final /* synthetic */ Object f16581b;

    public View$OnClickListenerC4878d1(int i, Object obj) {
        this.f16580a = i;
        this.f16581b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TypeSelectorView typeSelectorView;
        String m47543getType;
        String str;
        int i = this.f16580a;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z = (DialogInterface$OnShowListenerC8755z) this.f16581b;
            l[] lVarArr = DialogInterface$OnShowListenerC8755z.f26727i;
            dialogInterface$OnShowListenerC8755z.m28087PA();
            p<? super Boolean, ? super String, s> pVar = ((DialogInterface$OnShowListenerC8755z) this.f16581b).f26733d;
            if (pVar != null) {
                s sVar = (s) pVar.k(Boolean.FALSE, (Object) null);
            }
            ((DialogInterface$OnShowListenerC8755z) this.f16581b).dismiss();
            return;
        }
        DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z2 = (DialogInterface$OnShowListenerC8755z) this.f16581b;
        List<C10328a> list = dialogInterface$OnShowListenerC8755z2.f26734e;
        if (list == null || (typeSelectorView = dialogInterface$OnShowListenerC8755z2.f26732c) == null || (m47543getType = typeSelectorView.m47543getType()) == null) {
            return;
        }
        Resources resources = ((DialogInterface$OnShowListenerC8755z) this.f16581b).getResources();
        s1.z.c.l.d(resources, "resources");
        String m28083a = C8765b.m28083a(m47543getType, resources);
        if (m28083a.length() != 0) {
            z = false;
        }
        if (z) {
            return;
        }
        AbstractC10330c abstractC10330c = ((DialogInterface$OnShowListenerC8755z) this.f16581b).f26731b;
        if (abstractC10330c == null) {
            s1.z.c.l.l("insightsFeedbackManager");
            throw null;
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C10328a c10328a : list) {
            FeedbackType feedbackType = FeedbackType.CATEGORIZER_FEEDBACK;
            s1.z.c.l.e(c10328a, "$this$toInsightFeedback");
            s1.z.c.l.e(m28083a, "userFeedback");
            s1.z.c.l.e(feedbackType, "feedbackType");
            String str2 = c10328a.f30674b;
            boolean z2 = c10328a.f30678f;
            if (str2 != null) {
                str = str2;
                if (C10031q.m26801c(str2)) {
                    str = str2;
                    if (!z2) {
                        str = "10_digit";
                    }
                }
            } else {
                str = null;
            }
            arrayList.add(new C10329b(str, c10328a.f30673a, c10328a.f30676d, c10328a.f30675c, String.valueOf(c10328a.f30677e), m28083a, feedbackType, null, c10328a.f30678f, 128));
        }
        SwitchCompat switchCompat = ((DialogInterface$OnShowListenerC8755z) this.f16581b).m28088OA().f27567c;
        s1.z.c.l.d(switchCompat, "binding.consentToggle");
        abstractC10330c.mo26349e(arrayList, switchCompat.isChecked());
        AbstractC10060c abstractC10060c = ((DialogInterface$OnShowListenerC8755z) this.f16581b).f26730a;
        if (abstractC10060c == null) {
            s1.z.c.l.l("analyticsManager");
            throw null;
        }
        C8769f c8769f = C8769f.f26770i;
        C10530c c10530c = C8769f.f26764c;
        c10530c.m25824d(TokenResponseDto.METHOD_SMS);
        DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z3 = (DialogInterface$OnShowListenerC8755z) this.f16581b;
        String m26802b = C10031q.m26802b(dialogInterface$OnShowListenerC8755z3.f26735f, dialogInterface$OnShowListenerC8755z3.f26736g);
        if (m26802b != null) {
            c10530c.m25822f(m26802b);
        }
        abstractC10060c.mo26757a(c10530c.m25827a());
        p<? super Boolean, ? super String, s> pVar2 = ((DialogInterface$OnShowListenerC8755z) this.f16581b).f26733d;
        if (pVar2 != null) {
            s sVar2 = (s) pVar2.k(Boolean.TRUE, m28083a);
        }
        ((DialogInterface$OnShowListenerC8755z) this.f16581b).dismiss();
    }
}
