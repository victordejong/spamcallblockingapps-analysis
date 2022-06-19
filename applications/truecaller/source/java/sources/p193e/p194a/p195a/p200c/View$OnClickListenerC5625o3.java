package p193e.p194a.p195a.p200c;

import android.view.MenuItem;
import android.view.View;
import com.truecaller.messaging.conversation.Action;
import com.truecaller.messaging.conversation.ConversationActionModeView;
import java.util.List;
import p1727n3.p1734b.p1743f.C25508g0;
import s1.z.c.l;
/* renamed from: e.a.a.c.o3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o3.class */
public final class View$OnClickListenerC5625o3 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ConversationActionModeView f18920a;

    /* renamed from: b */
    public final /* synthetic */ List f18921b;

    public View$OnClickListenerC5625o3(ConversationActionModeView conversationActionModeView, List list) {
        this.f18920a = conversationActionModeView;
        this.f18921b = list;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C25508g0 c25508g0 = this.f18920a.f13014b;
        if (c25508g0 != null) {
            int size = this.f18921b.size();
            for (int i = 3; i < size; i++) {
                MenuItem findItem = c25508g0.f71380b.findItem(((Action) this.f18921b.get(i)).getId());
                l.d(findItem, "popupMenu.menu.findItem(visibleActions[i].id)");
                findItem.setVisible(true);
            }
            c25508g0.f71382d.m3426f();
        }
    }
}
