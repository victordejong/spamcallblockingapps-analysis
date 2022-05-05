package zendesk.support;

import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/TicketForm.class */
public class TicketForm {

    /* renamed from: id */
    private long f1857id;
    private String name;
    private List<TicketField> ticketFields;

    public TicketForm(long j, String str, List<TicketField> list) {
        this.f1857id = j;
        this.name = str;
        this.ticketFields = CollectionUtils.copyOf(list);
    }

    public long getId() {
        return this.f1857id;
    }

    public String getName() {
        return this.name;
    }

    public List<TicketField> getTicketFields() {
        return CollectionUtils.copyOf(this.ticketFields);
    }
}
