package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/TicketFieldOption.class */
public class TicketFieldOption {

    /* renamed from: id */
    private long f1856id;
    private boolean isDefault;
    private String name;
    private String value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TicketFieldOption(long j, String str, String str2, boolean z) {
        this.f1856id = j;
        this.name = str;
        this.value = str2;
        this.isDefault = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TicketFieldOption create(RawTicketFieldOption rawTicketFieldOption) {
        return new TicketFieldOption(rawTicketFieldOption.getId(), rawTicketFieldOption.getName(), rawTicketFieldOption.getValue(), rawTicketFieldOption.isDefault());
    }

    public long getId() {
        return this.f1856id;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public boolean isDefault() {
        return this.isDefault;
    }
}
