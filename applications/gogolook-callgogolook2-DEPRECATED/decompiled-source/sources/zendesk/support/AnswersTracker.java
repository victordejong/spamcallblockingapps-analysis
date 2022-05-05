package zendesk.support;

import p081h.p150e.p151a.p152a.p153a.C6099b;
import p081h.p150e.p151a.p152a.p153a.C6100c;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/AnswersTracker.class */
public class AnswersTracker implements ZendeskTracker {
    @Override // zendesk.support.ZendeskTracker
    public void requestCreated() {
        C10845a.m10422a("AnswersTracker", "requestCreated", new Object[0]);
        C6099b.m23850a().mo23847a(new C6100c("request-created"));
    }
}
