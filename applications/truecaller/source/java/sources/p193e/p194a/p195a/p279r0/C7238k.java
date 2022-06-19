package p193e.p194a.p195a.p279r0;

import android.os.Bundle;
import com.truecaller.messaging.data.types.InboxTab;
import p193e.p194a.p195a.p198b.C4916a;
import s1.z.c.l;
/* renamed from: e.a.a.r0.k */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/k.class */
public final class C7238k {
    /* renamed from: a */
    public static final C4916a m29965a(InboxTab inboxTab) {
        l.e(inboxTab, "inboxTab");
        Bundle bundle = new Bundle();
        bundle.putSerializable("conversation_tab", inboxTab);
        C4916a c4916a = new C4916a();
        c4916a.setArguments(bundle);
        return c4916a;
    }
}
