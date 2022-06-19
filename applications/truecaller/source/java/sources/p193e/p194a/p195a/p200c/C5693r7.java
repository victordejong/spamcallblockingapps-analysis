package p193e.p194a.p195a.p200c;

import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.conversation.QuickAction;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19510i0;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.r7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/r7.class */
public final class C5693r7 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C5723s7 f19143b;

    /* renamed from: c */
    public final /* synthetic */ int f19144c;

    /* renamed from: d */
    public final /* synthetic */ QuickAction f19145d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5693r7(C5723s7 c5723s7, int i, QuickAction quickAction) {
        super(0);
        this.f19143b = c5723s7;
        this.f19144c = i;
        this.f19145d = quickAction;
    }

    public Object invoke() {
        C5723s7 c5723s7 = this.f19143b;
        int i = this.f19144c;
        QuickAction quickAction = this.f19145d;
        Objects.requireNonNull(c5723s7);
        l.e(quickAction, "quickAction");
        switch (quickAction.ordinal()) {
            case 0:
                c5723s7.f19177c.mo33328c0();
                break;
            case 1:
                c5723s7.f19177c.mo33291z1();
                break;
            case 2:
                c5723s7.f19177c.mo33396A6();
                break;
            case 3:
                c5723s7.f19178d.mo33524Sj();
                break;
            case 4:
                c5723s7.f19183i.mo33683hi();
                break;
            case 5:
                c5723s7.f19179e.mo32809V2();
                break;
            case 6:
                c5723s7.f19179e.mo32807d2();
                break;
            case 7:
                c5723s7.f19178d.mo33520Vj();
                break;
            case 8:
                c5723s7.f19178d.mo33527Qj();
                break;
        }
        AbstractC5687r3 abstractC5687r3 = c5723s7.f19180f;
        String analyticsValue = quickAction.getAnalyticsValue();
        int itemCount = c5723s7.getItemCount();
        C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
        Objects.requireNonNull(c5718s3);
        l.e(analyticsValue, "action");
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("ConversationQuickAccess", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("action", AnalyticsConstants.NAME, analyticsValue, "value", m8655X, "action", analyticsValue);
        double d = i + 1;
        l.e("buttonIndex", AnalyticsConstants.NAME);
        m8652Y.put("buttonIndex", Double.valueOf(d));
        l.e("numActions", AnalyticsConstants.NAME);
        m8652Y.put("numActions", Double.valueOf(itemCount));
        m8652Y.put("value", Double.valueOf(d));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ConversationQuickAccess");
        m15852a.m15849c(m8652Y);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19510i0.mo13225a(build);
        return s.a;
    }
}
