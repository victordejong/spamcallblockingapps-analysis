package zendesk.support;

import com.google.gson.annotations.SerializedName;
import com.zendesk.util.CollectionUtils;
import java.util.Date;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/RawTicketField.class */
public class RawTicketField {
    private long accountId;
    @SerializedName("isActive")
    private boolean active;
    @SerializedName("isCollapsedForAgents")
    private boolean collapsedForAgents;
    private Date createdAt;
    private List<RawTicketFieldOption> customFieldOptions;
    private String defaultContentKey;
    private String description;
    @SerializedName("isEditableInPortal")
    private boolean editableInPortal;
    @SerializedName("isExportable")
    private boolean exportable;

    /* renamed from: id */
    private long f1846id;
    private int position;
    private String regexpForValidation;
    @SerializedName("isRequired")
    private boolean required;
    @SerializedName("isRequiredInPortal")
    private boolean requiredInPortal;
    private long subTypeId;
    private List<RawTicketFieldSystemOption> systemFieldOptions;
    private String tag;
    private String title;
    private String titleInPortal;
    private TicketFieldType type;
    private Date updatedAt;
    @SerializedName("isVisibleInPortal")
    private boolean visibleInPortal;

    RawTicketField() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<RawTicketFieldOption> getCustomFieldOptions() {
        return CollectionUtils.copyOf(this.customFieldOptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getDescription() {
        return this.description;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1846id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getRegexpForValidation() {
        return this.regexpForValidation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<RawTicketFieldSystemOption> getSystemFieldOptions() {
        return CollectionUtils.copyOf(this.systemFieldOptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getTitle() {
        return this.title;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getTitleInPortal() {
        return this.titleInPortal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TicketFieldType getType() {
        return this.type;
    }
}
