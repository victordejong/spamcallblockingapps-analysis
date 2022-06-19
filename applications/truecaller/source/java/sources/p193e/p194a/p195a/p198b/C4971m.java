package p193e.p194a.p195a.p198b;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.conversation.ConversationActivity;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import s1.z.c.l;
/* renamed from: e.a.a.b.m */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/m.class */
public final class C4971m implements AbstractC10258h {
    @Override // p193e.p194a.p437c.p548h.AbstractC10258h
    /* renamed from: a */
    public void mo26519a(Context context, long j, long j2, String str, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "analyticsContext");
        Intent intent = new Intent(context, ConversationActivity.class);
        intent.putExtra("conversation_id", j2);
        intent.putExtra("message_id", j);
        intent.putExtra("launch_source", str);
        intent.putExtra("filter", i);
        context.startActivity(intent);
    }
}
