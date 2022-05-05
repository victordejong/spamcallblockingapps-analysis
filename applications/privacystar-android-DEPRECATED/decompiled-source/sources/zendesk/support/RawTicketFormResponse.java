package zendesk.support;

import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RawTicketFormResponse.class */
class RawTicketFormResponse {
    private List<RawTicketField> ticketFields;
    private List<RawTicketForm> ticketForms;

    RawTicketFormResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<RawTicketField> getTicketFields() {
        return CollectionUtils.copyOf(this.ticketFields);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<RawTicketForm> getTicketForms() {
        return CollectionUtils.copyOf(this.ticketForms);
    }
}
