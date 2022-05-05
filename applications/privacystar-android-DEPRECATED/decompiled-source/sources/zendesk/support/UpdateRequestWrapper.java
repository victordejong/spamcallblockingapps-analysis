package zendesk.support;

import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/support/UpdateRequestWrapper.class */
class UpdateRequestWrapper {
    private Request request;

    @Nullable
    Request getRequest() {
        return this.request;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRequest(Request request) {
        this.request = request;
    }
}
