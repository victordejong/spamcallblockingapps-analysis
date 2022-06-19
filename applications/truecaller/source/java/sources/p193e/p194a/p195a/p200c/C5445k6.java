package p193e.p194a.p195a.p200c;

import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.multisim.SimInfo;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.p200c.p206i.C5356f;
import p193e.p194a.p712e4.AbstractC13477b0;
import s1.z.c.l;
/* renamed from: e.a.a.c.k6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k6.class */
public final class C5445k6 implements AbstractC5403j6 {

    /* renamed from: a */
    public final AbstractC19233h0 f18551a;

    /* renamed from: b */
    public final boolean f18552b;

    /* renamed from: c */
    public final AbstractC13477b0 f18553c;

    public C5445k6(AbstractC19233h0 abstractC19233h0, boolean z, AbstractC13477b0 abstractC13477b0) {
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC13477b0, "simInfoCache");
        this.f18551a = abstractC19233h0;
        this.f18552b = z;
        this.f18553c = abstractC13477b0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: a */
    public String mo33120a(int i) {
        String str;
        if (i == 1) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemFlash, new Object[0]);
            l.d(str, "resourceProvider.getStri…ersationHistoryItemFlash)");
        } else if (i == 2) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemWhatsApp, new Object[0]);
            l.d(str, "resourceProvider.getStri…ationHistoryItemWhatsApp)");
        } else if (i != 4) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemOutgoingCall, new Object[0]);
            l.d(str, "resourceProvider.getStri…nHistoryItemOutgoingCall)");
        } else {
            AbstractC19233h0 abstractC19233h0 = this.f18551a;
            str = abstractC19233h0.mo13768b(C2752R.string.ConversationHistoryItemOutgoingAudio, abstractC19233h0.mo13768b(2131890378, new Object[0]));
            l.d(str, "resourceProvider.getStri…ring(R.string.voip_text))");
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: b */
    public Drawable mo33119b() {
        Drawable mo13764f = this.f18551a.mo13764f(C2752R.C2753drawable.ic_type_flash, 2130970255);
        l.d(mo13764f, "resourceProvider.getTint…R.attr.tcx_textSecondary)");
        return mo13764f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: c */
    public String mo33118c(int i) {
        String str;
        if (i == 1) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemFlash, new Object[0]);
            l.d(str, "resourceProvider.getStri…ersationHistoryItemFlash)");
        } else if (i == 2) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemWhatsApp, new Object[0]);
            l.d(str, "resourceProvider.getStri…ationHistoryItemWhatsApp)");
        } else if (i != 4) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemMissedCall, new Object[0]);
            l.d(str, "resourceProvider.getStri…ionHistoryItemMissedCall)");
        } else {
            AbstractC19233h0 abstractC19233h0 = this.f18551a;
            str = abstractC19233h0.mo13768b(C2752R.string.ConversationHistoryItemMissedAudio, abstractC19233h0.mo13768b(2131890378, new Object[0]));
            l.d(str, "resourceProvider.getStri…ring(R.string.voip_text))");
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: d */
    public Drawable mo33117d() {
        Drawable mo13764f = this.f18551a.mo13764f(2131232512, 2130969966);
        l.d(mo13764f, "resourceProvider.getTint…r.tcx_alertBackgroundRed)");
        return mo13764f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: e */
    public Drawable mo33116e(Message message) {
        l.e(message, "message");
        if (!this.f18552b || !message.f13393n.mo34884J0()) {
            return null;
        }
        String str = message.f13392m;
        l.d(str, "message.simToken");
        return m33108m(str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: f */
    public Drawable mo33115f() {
        Drawable mo13764f = this.f18551a.mo13764f(C2752R.C2753drawable.ic_type_incoming_call, 2130970255);
        l.d(mo13764f, "resourceProvider.getTint…R.attr.tcx_textSecondary)");
        return mo13764f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: g */
    public Drawable mo33114g() {
        Drawable mo13764f = this.f18551a.mo13764f(2131232531, 2130970255);
        l.d(mo13764f, "resourceProvider.getTint…R.attr.tcx_textSecondary)");
        return mo13764f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: h */
    public Drawable mo33113h() {
        Drawable mo13764f = this.f18551a.mo13764f(C2752R.C2753drawable.ic_type_outgoing_call, 2130970255);
        l.d(mo13764f, "resourceProvider.getTint…R.attr.tcx_textSecondary)");
        return mo13764f;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: i */
    public Drawable mo33112i(C5356f c5356f) {
        l.e(c5356f, "callsHistoryItem");
        if (this.f18552b) {
            return m33108m(c5356f.f18321h);
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: j */
    public String mo33111j(int i) {
        String str;
        if (i == 1) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemFlash, new Object[0]);
            l.d(str, "resourceProvider.getStri…ersationHistoryItemFlash)");
        } else if (i == 2) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemWhatsApp, new Object[0]);
            l.d(str, "resourceProvider.getStri…ationHistoryItemWhatsApp)");
        } else if (i != 4) {
            str = this.f18551a.mo13768b(C2752R.string.ConversationHistoryItemIncomingCall, new Object[0]);
            l.d(str, "resourceProvider.getStri…nHistoryItemIncomingCall)");
        } else {
            AbstractC19233h0 abstractC19233h0 = this.f18551a;
            str = abstractC19233h0.mo13768b(C2752R.string.ConversationHistoryItemIncomingAudio, abstractC19233h0.mo13768b(2131890378, new Object[0]));
            l.d(str, "resourceProvider.getStri…ring(R.string.voip_text))");
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: k */
    public String mo33110k() {
        String mo13768b = this.f18551a.mo13768b(C2752R.string.ConversationBlockedCall, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri….ConversationBlockedCall)");
        return mo13768b;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5403j6
    /* renamed from: l */
    public Drawable mo33109l() {
        Drawable mo13764f = this.f18551a.mo13764f(2131232520, 2130969966);
        l.d(mo13764f, "resourceProvider.getTint…r.tcx_alertBackgroundRed)");
        return mo13764f;
    }

    /* renamed from: m */
    public final Drawable m33108m(String str) {
        SimInfo simInfo = this.f18553c.get(str);
        Drawable drawable = null;
        if (simInfo != null) {
            int i = simInfo.f13983a;
            drawable = i != 0 ? i != 1 ? null : this.f18551a.mo13764f(2131232528, 2130970255) : this.f18551a.mo13764f(2131232527, 2130970255);
        }
        return drawable;
    }
}
