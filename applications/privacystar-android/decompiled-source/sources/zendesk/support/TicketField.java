package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/TicketField.class */
public class TicketField {
    private String description;

    /* renamed from: id */
    private long f1855id;
    private String regexpForValidation;
    private List<TicketFieldOption> ticketFieldOptions;
    private List<TicketFieldSystemOption> ticketFieldSystemOptions;
    private String title;
    private String titleInPortal;
    private TicketFieldType type;

    TicketField(long j, @NonNull TicketFieldType ticketFieldType, @NonNull String str, @NonNull String str2, @NonNull String str3, @Nullable String str4, @NonNull List<TicketFieldOption> list, @NonNull List<TicketFieldSystemOption> list2) {
        this.f1855id = j;
        this.type = ticketFieldType;
        this.title = str;
        this.titleInPortal = str2;
        this.description = str3;
        this.regexpForValidation = str4;
        this.ticketFieldOptions = list;
        this.ticketFieldSystemOptions = list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TicketField create(RawTicketField rawTicketField) {
        ArrayList arrayList = new ArrayList();
        for (RawTicketFieldOption rawTicketFieldOption : rawTicketField.getCustomFieldOptions()) {
            arrayList.add(TicketFieldOption.create(rawTicketFieldOption));
        }
        ArrayList arrayList2 = new ArrayList();
        for (RawTicketFieldSystemOption rawTicketFieldSystemOption : rawTicketField.getSystemFieldOptions()) {
            arrayList2.add(TicketFieldSystemOption.create(rawTicketFieldSystemOption));
        }
        return new TicketField(rawTicketField.getId(), rawTicketField.getType() != null ? rawTicketField.getType() : TicketFieldType.Unknown, rawTicketField.getTitle(), rawTicketField.getTitleInPortal(), rawTicketField.getDescription(), rawTicketField.getRegexpForValidation(), arrayList, arrayList2);
    }

    @NonNull
    public String getDescription() {
        return this.description;
    }

    public long getId() {
        return this.f1855id;
    }

    @Nullable
    public String getRegexpForValidation() {
        return this.regexpForValidation;
    }

    @NonNull
    public List<TicketFieldOption> getTicketFieldOptions() {
        return CollectionUtils.copyOf(this.ticketFieldOptions);
    }

    @NonNull
    public List<TicketFieldSystemOption> getTicketFieldSystemOptions() {
        return CollectionUtils.copyOf(this.ticketFieldSystemOptions);
    }

    @NonNull
    public String getTitle() {
        return this.title;
    }

    @NonNull
    public String getTitleInPortal() {
        return this.titleInPortal;
    }

    @NonNull
    public TicketFieldType getType() {
        return this.type;
    }
}
