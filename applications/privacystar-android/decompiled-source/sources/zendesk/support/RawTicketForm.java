package zendesk.support;

import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.model.BlockingOptionFields;
import com.zendesk.util.CollectionUtils;
import java.util.Date;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RawTicketForm.class */
class RawTicketForm {
    private Date createdAt;
    private boolean endUserVisible;

    /* renamed from: id */
    private long f1848id;
    private boolean inAllBrands;
    private boolean inAllOrganizations;
    @SerializedName(BlockingOptionFields.ACTIVE)
    private boolean isActive;
    @SerializedName("default")
    private boolean isDefault;
    private String name;
    private int position;
    private String rawDisplayName;
    private String rawName;
    private List<Long> restrictedBrandIds;
    private List<Long> restrictedOrganizationIds;
    private List<Long> ticketFieldIds;
    private Date updatedAt;
    private String url;

    RawTicketForm() {
    }

    public static TicketForm create(RawTicketForm rawTicketForm, List<TicketField> list) {
        return new TicketForm(rawTicketForm.getId(), rawTicketForm.getName(), list);
    }

    long getId() {
        return this.f1848id;
    }

    String getName() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Long> getTicketFieldIds() {
        return CollectionUtils.copyOf(this.ticketFieldIds);
    }
}
