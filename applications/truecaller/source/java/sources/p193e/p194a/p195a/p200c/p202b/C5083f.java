package p193e.p194a.p195a.p200c.p202b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import s1.z.c.l;
/* renamed from: e.a.a.c.b.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/f.class */
public final class C5083f {

    /* renamed from: a */
    public final Context f17433a;

    /* renamed from: b */
    public final Conversation f17434b;

    /* renamed from: c */
    public final int f17435c;

    public C5083f(Context context, Conversation conversation, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(conversation, "conversation");
        this.f17433a = context;
        this.f17434b = conversation;
        this.f17435c = i;
    }
}
