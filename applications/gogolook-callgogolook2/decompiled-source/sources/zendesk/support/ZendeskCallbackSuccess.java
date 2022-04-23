package zendesk.support;

import androidx.annotation.Nullable;
import p081h.p451q.p454c.AbstractC10851a;
import p081h.p451q.p454c.AbstractC10857e;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskCallbackSuccess.class */
public abstract class ZendeskCallbackSuccess<E> extends AbstractC10857e<E> {
    public final AbstractC10857e callback;

    public ZendeskCallbackSuccess(@Nullable AbstractC10857e eVar) {
        this.callback = eVar;
    }

    @Override // p081h.p451q.p454c.AbstractC10857e
    public void onError(AbstractC10851a aVar) {
        AbstractC10857e eVar = this.callback;
        if (eVar != null) {
            eVar.onError(aVar);
        }
    }
}
