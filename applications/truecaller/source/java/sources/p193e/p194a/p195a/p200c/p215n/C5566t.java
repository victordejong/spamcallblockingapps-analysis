package p193e.p194a.p195a.p200c.p215n;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.t */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/t.class */
public final class C5566t {

    /* renamed from: a */
    public final Context f18794a;

    /* renamed from: b */
    public final Message f18795b;

    /* renamed from: c */
    public final String f18796c;

    /* renamed from: d */
    public final Participant[] f18797d;

    public C5566t(Context context, Message message, String str, Participant[] participantArr) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(message, "message");
        this.f18794a = context;
        this.f18795b = message;
        this.f18796c = str;
        this.f18797d = participantArr;
    }
}
