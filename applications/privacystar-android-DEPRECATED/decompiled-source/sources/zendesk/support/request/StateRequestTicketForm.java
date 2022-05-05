package zendesk.support.request;

import android.annotation.SuppressLint;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.support.CustomField;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateRequestTicketForm.class */
class StateRequestTicketForm implements Serializable {
    static final long NO_ID = -1;

    /* renamed from: id */
    private final long f1898id;
    private final Map<Long, String> ticketFields;

    public StateRequestTicketForm(long j, List<CustomField> list) {
        this.f1898id = j;
        this.ticketFields = fieldsToMap(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateRequestTicketForm(List<CustomField> list) {
        this(-1L, list);
    }

    @SuppressLint({"UseSparseArrays"})
    private static Map<Long, String> fieldsToMap(List<CustomField> list) {
        HashMap hashMap = new HashMap(list.size());
        for (CustomField customField : list) {
            hashMap.put(customField.getId(), customField.getValue());
        }
        return hashMap;
    }

    private static List<CustomField> mapToFields(Map<Long, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<Long, String> entry : map.entrySet()) {
            arrayList.add(new CustomField(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1898id;
    }

    Map<Long, String> getTicketFields() {
        return this.ticketFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<CustomField> getTicketFieldsForApi() {
        return mapToFields(this.ticketFields);
    }
}
