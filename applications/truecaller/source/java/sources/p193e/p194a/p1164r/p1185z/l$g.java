package p193e.p194a.p1164r.p1185z;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.g;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.r.z.l$g */
/* loaded from: classes16-dex2jar.jar:e/a/r/z/l$g.class */
public final class l$g extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ l f54854a;

    public l$g(l lVar) {
        this.f54854a = lVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        g c;
        String str;
        SmsMessage smsMessage;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (intent == null) {
            return;
        }
        s SA = this.f54854a.SA();
        SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
        String messageBody = (messagesFromIntent == null || (smsMessage = (SmsMessage) C25225a.m3830v0(messagesFromIntent)) == null) ? null : smsMessage.getMessageBody();
        s sVar = SA;
        Objects.requireNonNull(sVar);
        l.e(intent, "intent");
        if (messageBody == null || (c = sVar.o.c(messageBody)) == null || (str = (String) i.G(c.b(), 1)) == null) {
            return;
        }
        sVar.l = str;
        if (!l.a(sVar.e, TokenResponseDto.METHOD_SMS)) {
            return;
        }
        if (((Boolean) sVar.x.getValue()).booleanValue()) {
            sVar.m = sVar.V.mo21739k(intent);
        }
        AbstractC19810y abstractC19810y = (AbstractC19810y) sVar.f57683a;
        if (abstractC19810y == null) {
            return;
        }
        abstractC19810y.m12815jc(str);
    }
}
