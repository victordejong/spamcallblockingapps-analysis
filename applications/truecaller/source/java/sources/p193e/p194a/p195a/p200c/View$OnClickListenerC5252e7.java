package p193e.p194a.p195a.p200c;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.messaging.data.types.Message;
import java.util.LinkedHashMap;
import p193e.p194a.p1053m0.C18092e;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p437c.p438a.p442b.p443a.C8712f;
import p193e.p194a.p437c.p525b0.C9711b;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.C10607k;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.a.c.e7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/e7.class */
public final class View$OnClickListenerC5252e7 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Message f18055a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC5418j.AbstractC5420b f18056b;

    /* renamed from: c */
    public final /* synthetic */ C9711b f18057c;

    /* renamed from: d */
    public final /* synthetic */ l f18058d;

    /* renamed from: e */
    public final /* synthetic */ CardFeedBackType f18059e;

    /* renamed from: f */
    public final /* synthetic */ FragmentManager f18060f;

    /* renamed from: e.a.a.c.e7$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e7$a.class */
    public static final class C5253a extends m implements p<String, Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5253a() {
            super(2);
            View$OnClickListenerC5252e7.this = r4;
        }

        /* renamed from: k */
        public Object m33478k(Object obj, Object obj2) {
            String str = (String) obj;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            s1.z.c.l.e(str, RemoteMessageConst.Notification.TAG);
            View$OnClickListenerC5252e7 view$OnClickListenerC5252e7 = View$OnClickListenerC5252e7.this;
            view$OnClickListenerC5252e7.f18058d.d(view$OnClickListenerC5252e7.f18059e);
            new C10607k(C10480a.m25977c3(View$OnClickListenerC5252e7.this.f18055a, str), View$OnClickListenerC5252e7.this.f18059e, new AbstractC10616p.C10625i(str, ClassifierType.USER), C18092e.m15494a(View$OnClickListenerC5252e7.this.f18055a.f13399t), Boolean.valueOf(booleanValue)).mo25772d();
            View$OnClickListenerC5252e7 view$OnClickListenerC5252e72 = View$OnClickListenerC5252e7.this;
            view$OnClickListenerC5252e72.f18056b.mo32676w8(str, view$OnClickListenerC5252e72.f18055a);
            return s.a;
        }
    }

    public View$OnClickListenerC5252e7(Message message, AbstractC5418j.AbstractC5420b abstractC5420b, C9711b c9711b, l lVar, CardFeedBackType cardFeedBackType, FragmentManager fragmentManager) {
        this.f18055a = message;
        this.f18056b = abstractC5420b;
        this.f18057c = c9711b;
        this.f18058d = lVar;
        this.f18059e = cardFeedBackType;
        this.f18060f = fragmentManager;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str = this.f18055a.f13382c.f11572e;
        s1.z.c.l.d(str, "message.participant.normalizedAddress");
        Participant participant = this.f18055a.f13382c;
        s1.z.c.l.d(participant, "message.participant");
        boolean m35448l = participant.m35448l();
        AbstractC5418j.AbstractC5420b abstractC5420b = this.f18056b;
        String str2 = this.f18057c.f29339a.f31741a;
        s1.z.c.l.e(str, "senderId");
        String str3 = str2 == null || str2.length() == 0 ? "add_tag" : "edit_tag";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e(str3, "<set-?>");
        String m26803a = C10031q.m26803a(str, m35448l);
        s1.z.c.l.e(m26803a, "<set-?>");
        if (str2 == null) {
            str2 = "";
        }
        s1.z.c.l.e(str2, "<set-?>");
        s1.z.c.l.e("click", "<set-?>");
        s1.z.c.l.e("conversation_view", "<set-?>");
        boolean z = false;
        if (str3.length() > 0) {
            z = true;
        }
        if (z) {
            abstractC5420b.mo32746Ac(new C10529b(new SimpleAnalyticsModel(str3, str2, m26803a, "conversation_view", "click", "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
            C8712f.f26636m.m28103a(str, m35448l, this.f18057c.f29339a.f31741a, new C5253a()).show(this.f18060f, C8712f.f26635l);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
