package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/TicketFieldSystemOption.class */
public class TicketFieldSystemOption {
    private String name;
    private String value;

    TicketFieldSystemOption(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TicketFieldSystemOption create(RawTicketFieldSystemOption rawTicketFieldSystemOption) {
        return new TicketFieldSystemOption(rawTicketFieldSystemOption.getName(), rawTicketFieldSystemOption.getValue());
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }
}
