package p193e.p194a.p195a.p226d1;

import android.content.Intent;
import android.net.Uri;
import com.truecaller.data.entity.messaging.Participant;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8613t;
/* renamed from: e.a.a.d1.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/d1/b.class */
public class C5947b extends AbstractC5946a {

    /* renamed from: b */
    public final Intent f19847b;

    /* renamed from: c */
    public final AbstractC8621z f19848c;

    public C5947b(Intent intent, AbstractC8621z abstractC8621z) {
        this.f19847b = intent;
        this.f19848c = abstractC8621z;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.d1.c] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        Intent intent;
        ?? r0 = (AbstractC5948c) obj;
        this.f57683a = r0;
        String action = this.f19847b.getAction();
        Participant[] participantArr = null;
        Uri data = ("android.intent.action.SENDTO".equals(action) || "android.intent.action.VIEW".equals(action)) ? this.f19847b.getData() : ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) ? (Uri) this.f19847b.getParcelableExtra("com.truecaller.suggestions.extra.PHONE_NUMBER") : null;
        if (data != null) {
            participantArr = Participant.m35456c(data, this.f19848c, "-1");
        }
        if ((participantArr == null || participantArr.length == 0) ? false : true) {
            intent = ((AbstractC5948c) this.f57683a).mo32118C7();
            intent.putExtra("participants", participantArr);
            intent.putExtra("send_intent", this.f19847b);
            intent.addFlags(536870912);
        } else {
            intent = ((AbstractC5948c) this.f57683a).mo32119B1();
            intent.putExtra("send_intent", this.f19847b);
            intent.addFlags(1);
        }
        C8613t.m28204h(this.f19847b, intent);
        ((AbstractC5948c) this.f57683a).startActivity(intent);
        r0.finish();
    }
}
