package p193e.p194a.p195a.p200c;

import android.content.Context;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.Conversation;
import p193e.p194a.p372b0.p430q.C8604n;
/* renamed from: e.a.a.c.a5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a5.class */
public class C5060a5 {

    /* renamed from: a */
    public final Conversation f17323a;

    /* renamed from: b */
    public final Participant[] f17324b;

    /* renamed from: c */
    public final Long f17325c;

    /* renamed from: d */
    public final Long f17326d;

    /* renamed from: e */
    public final int f17327e;

    /* renamed from: f */
    public final Context f17328f;

    /* renamed from: g */
    public final String f17329g;

    /* renamed from: h */
    public final ConversationMode f17330h;

    /* renamed from: i */
    public final boolean f17331i;

    /* renamed from: j */
    public final boolean f17332j;

    /* renamed from: k */
    public final boolean f17333k;

    /* renamed from: l */
    public final boolean f17334l;

    /* renamed from: m */
    public final boolean f17335m;

    public C5060a5(Conversation conversation, Participant[] participantArr, Long l, Long l2, Context context, int i, String str, ConversationMode conversationMode, boolean z, boolean z2, boolean z3, boolean z4) {
        AssertionUtil.isFalse(conversation == null && participantArr == null && l == null, "At least one should be not null");
        this.f17323a = conversation;
        this.f17324b = participantArr;
        this.f17325c = l;
        this.f17326d = l2;
        this.f17328f = context;
        this.f17327e = i;
        this.f17329g = str;
        this.f17330h = conversationMode;
        this.f17331i = z;
        this.f17332j = z3;
        this.f17333k = z2;
        this.f17334l = C8604n.m28240e(context);
        this.f17335m = z4;
    }
}
