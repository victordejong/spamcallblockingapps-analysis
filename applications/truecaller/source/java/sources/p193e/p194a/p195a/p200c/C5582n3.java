package p193e.p194a.p195a.p200c;

import android.view.MenuItem;
import com.truecaller.messaging.conversation.ConversationActionModeView;
import java.util.List;
import p1727n3.p1734b.p1743f.C25508g0;
import s1.z.c.l;
/* renamed from: e.a.a.c.n3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n3.class */
public final class C5582n3 implements C25508g0.AbstractC25510b {

    /* renamed from: a */
    public final /* synthetic */ ConversationActionModeView f18827a;

    /* renamed from: b */
    public final /* synthetic */ List f18828b;

    public C5582n3(ConversationActionModeView conversationActionModeView, List list) {
        this.f18827a = conversationActionModeView;
        this.f18828b = list;
    }

    @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
    public final boolean onMenuItemClick(MenuItem menuItem) {
        AbstractC5238e3 abstractC5238e3 = this.f18827a.f13013a;
        if (abstractC5238e3 == null) {
            l.l("callback");
            throw null;
        }
        l.d(menuItem, "item");
        ((C5399j2) abstractC5238e3).f18485a.f19488d.mo33219ye(menuItem.getItemId());
        return true;
    }
}
