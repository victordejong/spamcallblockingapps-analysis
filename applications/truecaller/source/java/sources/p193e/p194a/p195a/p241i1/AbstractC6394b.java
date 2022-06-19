package p193e.p194a.p195a.p241i1;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.messaging.conversation.AttachmentType;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.ReplySnippet;
import java.util.List;
import p193e.p194a.p1114o5.p1120d2.C19010a;
import p193e.p194a.p195a.p200c.p207j8.C5405a;
import s1.k;
import s1.z.b.l;
/* renamed from: e.a.a.i1.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/i1/b.class */
public interface AbstractC6394b {
    /* renamed from: A */
    int mo31349A(int i, boolean z);

    /* renamed from: B */
    String mo31348B(int i);

    /* renamed from: C */
    Uri mo31347C(double d, double d2, CharSequence charSequence);

    /* renamed from: D */
    String mo31346D(Conversation conversation, InboxTab inboxTab);

    /* renamed from: E */
    String mo31345E(String str, int i);

    /* renamed from: F */
    k<Integer, Integer> mo31344F(int i, int i2, int i3, int i4);

    /* renamed from: G */
    String mo31343G(String str);

    /* renamed from: a */
    C5405a mo31339a(String str);

    /* renamed from: b */
    Drawable mo31338b(int i, String str);

    /* renamed from: c */
    boolean mo31337c(Message message, boolean z, boolean z2);

    /* renamed from: d */
    String mo31336d(Draft draft);

    /* renamed from: e */
    AttachmentType mo31335e(String str);

    /* renamed from: f */
    int mo31334f(int i, boolean z);

    /* renamed from: g */
    int mo31333g(Message message);

    /* renamed from: h */
    String mo31332h(Message message);

    /* renamed from: i */
    boolean mo31331i(Conversation conversation);

    /* renamed from: j */
    int mo31330j(int i, boolean z);

    /* renamed from: k */
    Drawable mo31329k(Conversation conversation);

    /* renamed from: l */
    ListItemX.SubtitleColor mo31328l(String str, int i);

    /* renamed from: m */
    String mo31327m(Conversation conversation);

    /* renamed from: n */
    String mo31326n(Conversation conversation);

    /* renamed from: o */
    Drawable mo31325o(Message message);

    /* renamed from: p */
    int mo31324p(Message message, l<? super Entity, Boolean> lVar);

    /* renamed from: q */
    String mo31323q(ReplySnippet replySnippet);

    /* renamed from: r */
    ListItemX.SubtitleColor mo31322r(String str, int i, int i2);

    /* renamed from: s */
    List<C5405a> mo31321s();

    /* renamed from: t */
    String mo31320t(String str, int i, String str2);

    /* renamed from: u */
    boolean mo31319u(Conversation conversation);

    /* renamed from: v */
    String mo31318v(Message message);

    /* renamed from: w */
    String mo31317w(C19010a c19010a, boolean z);

    /* renamed from: x */
    String mo31316x(boolean z);

    /* renamed from: y */
    boolean mo31315y(String str);

    /* renamed from: z */
    String mo31314z(Message message);
}
