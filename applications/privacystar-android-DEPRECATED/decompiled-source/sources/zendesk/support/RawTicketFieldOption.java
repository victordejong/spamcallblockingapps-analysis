package zendesk.support;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RawTicketFieldOption.class */
class RawTicketFieldOption {

    /* renamed from: id */
    private long f1847id;
    @SerializedName("default")
    private boolean isDefault;
    private String name;
    private String rawName;
    private String value;

    RawTicketFieldOption() {
    }

    public static TicketFieldOption create(RawTicketFieldOption rawTicketFieldOption) {
        return new TicketFieldOption(rawTicketFieldOption.getId(), rawTicketFieldOption.getName(), rawTicketFieldOption.getValue(), rawTicketFieldOption.isDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1847id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getName() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getValue() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDefault() {
        return this.isDefault;
    }
}
