package com.callapp.contacts.model.objectbox;

import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupData.class */
public final class ContactLookupData {
    private long contactId;
    public String description;
    public Map<String, Integer> descriptionMap;
    public String displayName;

    /* renamed from: id */
    private long f26769id;
    private String lookupKey;
    public String nameT9Format;
    public String nameT9FormatNoZero;
    public Map<String, Integer> namesMap;
    private List<String> phoneNumbers;
    public List<Integer> t9Indexes;
    public String unAccentDescription;
    public String unAccentName;

    public ContactLookupData() {
        this.nameT9Format = "";
        this.nameT9FormatNoZero = "";
        this.displayName = "";
        this.unAccentName = "";
        this.description = "";
        this.unAccentDescription = "";
        this.t9Indexes = new ArrayList();
        this.namesMap = new HashMap();
        this.descriptionMap = new HashMap();
    }

    public ContactLookupData(String str, long j, String str2, List<String> list, String str3) {
        this.nameT9Format = "";
        this.nameT9FormatNoZero = "";
        this.displayName = "";
        this.unAccentName = "";
        this.description = "";
        this.unAccentDescription = "";
        this.t9Indexes = new ArrayList();
        this.namesMap = new HashMap();
        this.descriptionMap = new HashMap();
        this.lookupKey = str;
        this.contactId = j;
        this.phoneNumbers = list;
        this.displayName = str2;
        this.description = str3;
        onNameUpdate();
        onDescriptionUpdate();
    }

    private void fillMap(String str, Map<String, Integer> map) {
        int i;
        int i2;
        StringBuilder sb;
        map.clear();
        StringBuilder sb2 = new StringBuilder();
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i4;
            if (i3 >= str.length()) {
                break;
            }
            char charAt = str.charAt(i3);
            if (Character.isLetterOrDigit(charAt)) {
                sb2.append(charAt);
                sb = sb2;
                i2 = i;
                if (i == -1) {
                    i2 = i3;
                    sb = sb2;
                }
            } else {
                sb = sb2;
                i2 = i;
                if (i != -1) {
                    String sb3 = sb2.toString();
                    if (!map.containsKey(sb3)) {
                        map.put(sb3, Integer.valueOf(i));
                    }
                    sb = new StringBuilder();
                    i2 = -1;
                }
            }
            i3++;
            sb2 = sb;
            i4 = i2;
        }
        if (i != -1) {
            map.put(sb2.toString(), Integer.valueOf(i));
        }
    }

    private void onDescriptionUpdate() {
        String str = this.description;
        if (str != null) {
            String m31889l = RegexUtils.m31889l(RegexUtils.m31888m(str.toLowerCase()));
            this.unAccentDescription = m31889l;
            fillMap(m31889l, this.descriptionMap);
        }
    }

    private void onNameUpdate() {
        String str = this.displayName;
        if (str != null) {
            String m31889l = RegexUtils.m31889l(RegexUtils.m31888m(str.toLowerCase()));
            this.unAccentName = m31889l;
            fillMap(m31889l, this.namesMap);
            String replace = T9Helper.m30359a(StringUtils.SPACE + this.unAccentName).replace("*", "0").replace("#", "0").replace("+", "0");
            this.nameT9Format = replace;
            this.t9Indexes.clear();
            for (int i = 1; i < replace.length(); i++) {
                if (replace.charAt(i) != '0') {
                    this.t9Indexes.add(Integer.valueOf(i - 1));
                }
            }
            if (!this.t9Indexes.isEmpty()) {
                List<Integer> list = this.t9Indexes;
                this.t9Indexes.add(Integer.valueOf(list.get(list.size() - 1).intValue() + 1));
            }
            this.nameT9FormatNoZero = this.nameT9Format.replaceAll("0", "");
        }
    }

    public final long getContactId() {
        return this.contactId;
    }

    public final String getDescription() {
        return com.callapp.framework.util.StringUtils.m26045b((CharSequence) this.description) ? this.description : this.description;
    }

    public final Map<String, Integer> getDescriptions() {
        return this.descriptionMap;
    }

    public final long getId() {
        return this.f26769id;
    }

    public final String getLookupKey() {
        return this.lookupKey;
    }

    public final Map<String, Integer> getNames() {
        return this.namesMap;
    }

    public final List<String> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public final List<Integer> getT9Indexes() {
        return this.t9Indexes;
    }

    public final void setContactId(long j) {
        this.contactId = j;
    }

    public final void setDescription(String str) {
        while (str == null) {
            str = "";
        }
        this.description = str;
        onDescriptionUpdate();
    }

    public final void setDescriptions(Map<String, Integer> map) {
        this.descriptionMap = map;
    }

    public final void setDisplayName(String str) {
        while (str == null) {
            str = "";
        }
        this.displayName = str;
        onNameUpdate();
    }

    public final void setId(long j) {
        this.f26769id = j;
    }

    public final void setLookupKey(String str) {
        this.lookupKey = str;
    }

    public final void setNames(Map<String, Integer> map) {
        this.namesMap = map;
    }

    public final void setPhoneNumbers(List<String> list) {
        this.phoneNumbers.clear();
        this.phoneNumbers.addAll(list);
    }

    public final String toString() {
        return "ContactLookupData{id=" + this.f26769id + ", lookupKey='" + this.lookupKey + "', contactId=" + this.contactId + ", phoneNumbers=" + this.phoneNumbers + ", nameT9Format='" + this.nameT9Format + "', nameT9FormatNoZero='" + this.nameT9FormatNoZero + "', displayName='" + this.displayName + "', unAccentName='" + this.unAccentName + "', description='" + this.description + "', unAccentDescription='" + this.unAccentDescription + "', t9Indexes=" + this.t9Indexes + ", namesMap=" + this.namesMap + ", descriptionMap=" + this.descriptionMap + '}';
    }
}
