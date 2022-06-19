package p000;

import android.content.res.Resources;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.p168ui.semicard.view.UiType;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import com.truecaller.insights.utils.FeedbackConsentType;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p442b.p443a.C8743r;
import p193e.p194a.p437c.p438a.p442b.p445c.C8765b;
import p193e.p194a.p437c.p438a.p442b.p445c.C8768e;
import p193e.p194a.p437c.p438a.p471e.p472a.C8972f;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p576n.AbstractC10470c;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.a.l;
/* renamed from: i */
/* loaded from: classes2-dex2jar.jar:i.class */
public final class View$OnClickListenerC25282i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f70728a;

    /* renamed from: b */
    public final /* synthetic */ Object f70729b;

    public View$OnClickListenerC25282i(int i, Object obj) {
        this.f70728a = i;
        this.f70729b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TypeSelectorView typeSelectorView;
        String m47543getType;
        String str;
        int i = this.f70728a;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            C8743r c8743r = (C8743r) this.f70729b;
            l[] lVarArr = C8743r.f26697i;
            c8743r.m28094PA();
            ((C8743r) this.f70729b).dismiss();
            return;
        }
        C8743r c8743r2 = (C8743r) this.f70729b;
        List<C10328a> list = c8743r2.f26703d;
        if (list == null || (typeSelectorView = c8743r2.f26706g) == null || (m47543getType = typeSelectorView.m47543getType()) == null) {
            return;
        }
        Resources resources = ((C8743r) this.f70729b).getResources();
        s1.z.c.l.d(resources, "resources");
        String m28083a = C8765b.m28083a(m47543getType, resources);
        if (m28083a.length() != 0) {
            z = false;
        }
        if (z) {
            return;
        }
        AbstractC10330c abstractC10330c = ((C8743r) this.f70729b).f26701b;
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
        abstractC10330c.mo26340n(arrayList, AbstractC10470c.C10472b.f31142a, FeedbackConsentType.SEND_FEEDBACK_WO_INFOCARD);
        SwitchCompat switchCompat = ((C8743r) this.f70729b).m28095OA().f27658f;
        s1.z.c.l.d(switchCompat, "binding.consentToggle");
        if (switchCompat.isChecked()) {
            AbstractC10024k abstractC10024k = ((C8743r) this.f70729b).f26702c;
            if (abstractC10024k == null) {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
            abstractC10024k.mo26893d();
        }
        AbstractC10060c abstractC10060c = ((C8743r) this.f70729b).f26700a;
        if (abstractC10060c == null) {
            s1.z.c.l.l("analyticsManager");
            throw null;
        }
        C8768e c8768e = C8768e.f26761e;
        C10530c c10530c = C8768e.f26758b;
        c10530c.m25824d(TokenResponseDto.METHOD_SMS);
        C8743r c8743r3 = (C8743r) this.f70729b;
        String m26802b = C10031q.m26802b(c8743r3.f26704e, c8743r3.f26705f);
        if (m26802b != null) {
            c10530c.m25822f(m26802b);
        }
        abstractC10060c.mo26757a(c10530c.m25827a());
        C8972f.f27280d.m27905a(UiType.SEND_FEEDBACK_WITHOUT_INFO, m47543getType).show(((C8743r) this.f70729b).getParentFragmentManager(), C8972f.f27279c);
        ((C8743r) this.f70729b).dismiss();
    }
}
