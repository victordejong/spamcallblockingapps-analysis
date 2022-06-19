package p193e.p194a.p195a.p200c.p202b;

import android.webkit.URLUtil;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.messaging.conversation.voice_notes.PlayerVisualizerView;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.ReplySnippet;
import javax.inject.Inject;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5732i;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.AbstractC10627r;
import p193e.p194a.p437c.p610y.AbstractC10876i;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.c.b.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/e.class */
public final class C5082e implements AbstractC5418j.AbstractC5420b {

    /* renamed from: a */
    public final AbstractC5084g f17432a;

    @Inject
    public C5082e(AbstractC5084g abstractC5084g) {
        l.e(abstractC5084g, "presenter");
        this.f17432a = abstractC5084g;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: A9 */
    public boolean mo32747A9() {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: Ac */
    public void mo32746Ac(C10529b c10529b) {
        l.e(c10529b, "simpleAnalyticsEvent");
    }

    @Override // p193e.p194a.p437c.p438a.p506o.AbstractC9439b
    /* renamed from: C3 */
    public void mo27567C3(AbstractC10876i abstractC10876i, String str, boolean z, int i) {
        l.e(abstractC10876i, "smartCardAction");
        l.e(str, "analyticsCategory");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: D */
    public void mo32743D(String str) {
        l.e(str, "url");
        AbstractC5084g abstractC5084g = this.f17432a;
        String guessUrl = URLUtil.guessUrl(str);
        l.d(guessUrl, "URLUtil.guessUrl(url)");
        abstractC5084g.mo33855b(guessUrl);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: E8 */
    public void mo32742E8(String str, int i) {
        l.e(str, "inviteKey");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Ea */
    public void mo32741Ea(double d, double d2, String str, Message message) {
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: F9 */
    public void mo32740F9(String str) {
        l.e(str, "imId");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: K */
    public void mo32732K() {
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: K0 */
    public void mo32731K0(Message message) {
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: N7 */
    public void mo32724N7(Message message) {
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: P0 */
    public void mo32720P0(String str) {
        l.e(str, AnalyticsConstants.EMAIL);
        this.f17432a.mo33860Q(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Q0 */
    public void mo32718Q0(Message message) {
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: Q9 */
    public void mo32717Q9(AbstractC10567a abstractC10567a, Message message, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(abstractC10567a, "actionData");
        l.e(kVar, "subCategory");
    }

    @Override // p193e.p194a.p437c.p438a.p506o.AbstractC9439b
    /* renamed from: Ra */
    public void mo27566Ra(String str, boolean z) {
        l.e(str, "analyticsCategory");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: S0 */
    public void mo32713S0(String str) {
        l.e(str, "inviteKey");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: V0 */
    public void mo32709V0(String str) {
        l.e(str, "number");
        this.f17432a.mo33859X(str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Z0 */
    public void mo32708Z0(String str) {
        l.e(str, "link");
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: Z3 */
    public void mo32707Z3() {
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Zg */
    public void mo32706Zg(ReplySnippet replySnippet) {
    }

    @Override // p193e.p194a.p437c.p438a.p506o.AbstractC9439b
    /* renamed from: a3 */
    public void mo27565a3(Message message, String str, boolean z) {
        l.e(message, "message");
        l.e(str, "analyticsCategory");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: d5 */
    public void mo32704d5(Message message, LocationEntity locationEntity) {
        l.e(message, "message");
        l.e(locationEntity, "entity");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: di */
    public void mo32703di(int i) {
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: fj */
    public void mo32701fj(Message message, CardFeedBackType cardFeedBackType, boolean z) {
        l.e(cardFeedBackType, "cardFeedBackType");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: h1 */
    public void mo32700h1(Entity entity, Message message) {
        l.e(entity, "attachment");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: i */
    public void mo32696i(Message message, String str) {
        l.e(message, "message");
        l.e(str, "action");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: i1 */
    public void mo32695i1(Entity entity, PlayerVisualizerView playerVisualizerView, AbstractC5732i abstractC5732i) {
        l.e(playerVisualizerView, "visualizer");
        l.e(abstractC5732i, "listener");
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: jc */
    public void mo32694jc(k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(kVar, "category");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: jd */
    public void mo32693jd(Message message) {
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: k0 */
    public void mo32692k0(Message message) {
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: k1 */
    public void mo32691k1(String str) {
        l.e(str, "url");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: n2 */
    public void mo32687n2(Message message) {
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: q0 */
    public void mo32683q0(Message message, Entity entity) {
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: rb */
    public void mo32681rb(Message message, Entity entity) {
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: u9 */
    public void mo32679u9(boolean z) {
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: v1 */
    public void mo32678v1(String str) {
        l.e(str, "link");
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: w7 */
    public void mo32677w7(Message message, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(message, "message");
        l.e(kVar, "category");
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: w8 */
    public void mo32676w8(String str, Message message) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        l.e(message, "message");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: z0 */
    public void mo32673z0(Message message, Entity entity) {
    }
}
