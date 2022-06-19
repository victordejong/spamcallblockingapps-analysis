package p193e.p194a.p195a.p200c;

import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import java.util.Objects;
import p193e.p194a.p195a.p223c1.AbstractC5840a;
import s1.i;
import s1.k;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.a.c.h4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/h4.class */
public final /* synthetic */ class C5338h4 extends j implements l<AbstractC5840a, s> {
    public C5338h4(C5313g4 c5313g4) {
        super(1, c5313g4, C5313g4.class, "onScheduledMessageEdited", "onScheduledMessageEdited$truecaller_googlePlayRelease(Lcom/truecaller/messaging/sending/DraftEditResult;)V", 0);
    }

    /* renamed from: d */
    public Object m33280d(Object obj) {
        Draft draft;
        Message message;
        AbstractC5840a abstractC5840a = (AbstractC5840a) obj;
        C5313g4 c5313g4 = (C5313g4) ((b) this).b;
        Objects.requireNonNull(c5313g4);
        if (abstractC5840a != null) {
            if (abstractC5840a instanceof AbstractC5840a.C5842b) {
                draft = ((AbstractC5840a.C5842b) abstractC5840a).f19586b;
                message = null;
            } else if (!(abstractC5840a instanceof AbstractC5840a.C5841a)) {
                throw new i();
            } else {
                AbstractC5840a.C5841a c5841a = (AbstractC5840a.C5841a) abstractC5840a;
                if (!c5841a.f19584a.isEmpty()) {
                    k kVar = (k) s1.u.i.B(c5841a.f19584a);
                    draft = (Draft) kVar.a;
                    message = (Message) kVar.b;
                }
            }
            if (message == null) {
                String str = draft.f13268c;
                s1.z.c.l.d(str, "draft.text");
                c5313g4.m33303lk(str, true);
            }
        }
        return s.a;
    }
}
