package com.callapp.contacts.activity.contact.list;

import android.util.SparseIntArray;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/MemoryContactItem.class */
public class MemoryContactItem extends BaseAdapterItemData implements StickyHeaderSection, Comparable<MemoryContactItem> {

    /* renamed from: a  reason: collision with root package name */
    private int f12644a;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12645c;

    /* renamed from: d  reason: collision with root package name */
    public Set<JSONEmail> f12646d;
    public String e;
    public int f;
    public String g;
    public String h;

    public MemoryContactItem() {
        this.e = null;
        this.f = -1;
        this.g = "";
        this.h = "";
    }

    public MemoryContactItem(MemoryContactItem memoryContactItem) {
        super(memoryContactItem);
        this.e = null;
        this.f = -1;
        this.g = "";
        this.h = "";
        this.f12645c = memoryContactItem.f12645c;
        this.f12646d = memoryContactItem.f12646d;
        this.f = memoryContactItem.f;
    }

    public MemoryContactItem(ContactData contactData, boolean z) {
        this.e = null;
        this.f = -1;
        this.g = "";
        this.h = "";
        this.isChecked = z;
        if (CollectionUtils.b(contactData.getPhones())) {
            this.normalNumbers = new ArrayList();
            for (Phone phone : contactData.getPhones()) {
                String a2 = T9Helper.a((CharSequence) phone.a());
                if (StringUtils.b((CharSequence) a2) && !ContactUtils.a(this.normalNumbers, a2)) {
                    this.normalNumbers.add(a2);
                }
            }
        }
        this.e = null;
        this.f12646d = null;
        setChecked(false);
        this.displayName = "";
        this.displayName = contactData.getFullName();
        this.unaccentName = "";
        if (StringUtils.b((CharSequence) this.displayName)) {
            this.unaccentName = RegexUtils.l(RegexUtils.m(this.displayName.toLowerCase()));
            a(this.unaccentName, this.namesMap);
            String replace = T9Helper.a(org.apache.commons.lang3.StringUtils.SPACE + this.unaccentName).replace("*", "0").replace("#", "0").replace("+", "0");
            this.nameT9 = replace;
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < replace.length(); i++) {
                if (replace.charAt(i) != '0') {
                    arrayList.add(Integer.valueOf(i - 1));
                }
            }
            if (!arrayList.isEmpty()) {
                arrayList.add(Integer.valueOf(((Integer) arrayList.get(arrayList.size() - 1)).intValue() + 1));
            }
            this.nameT9NoZero = "".replaceAll("0", "");
            this.t9Indexes = arrayList;
        }
        this.h = contactData.getDescription();
        this.unaccentDescription = "";
        if (StringUtils.b((CharSequence) this.h)) {
            this.unaccentDescription = RegexUtils.l(RegexUtils.m(this.h.toLowerCase()));
            a(this.unaccentDescription, this.descriptionMap);
        }
        if (!(contactData.getDeviceData() == null || contactData.getDeviceData().isFavorite() == null)) {
            this.f12645c = contactData.getDeviceData().isFavorite().booleanValue();
        }
        ContactLookupData contactLookupData = (ContactLookupData) CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class).e().a(ContactLookupData_.contactId, this.contactId).a().a();
        if (contactLookupData != null) {
            this.lookupKey = contactLookupData.getLookupKey();
        }
        this.contactId = contactData.getDeviceId();
        setSectionId(1);
        this.f = -1;
        this.numberMatchIndexEnd = -1;
        this.numberMatchIndexStart = -1;
        this.textHighlights = new SparseIntArray(2);
    }

    private static void a(String str, Map<String, Integer> map) {
        map.clear();
        StringBuilder sb = new StringBuilder();
        int i = -1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isLetterOrDigit(charAt)) {
                sb.append(charAt);
                sb = sb;
                i = i;
                if (i == -1) {
                    i = i2;
                    sb = sb;
                }
            } else {
                sb = sb;
                i = i;
                if (i != -1) {
                    String sb2 = sb.toString();
                    if (!map.containsKey(sb2)) {
                        map.put(sb2, Integer.valueOf(i));
                    }
                    sb = new StringBuilder();
                    i = -1;
                }
            }
        }
        if (i != -1) {
            map.put(sb.toString(), Integer.valueOf(i));
        }
    }

    public final void a(int i, int i2) {
        if (i == i2 || i2 > i) {
            this.numberMatchIndexStart = i;
            this.numberMatchIndexEnd = i2;
        }
    }

    public final void a(ContactLookupData contactLookupData) {
        if (CollectionUtils.b(contactLookupData.getPhoneNumbers())) {
            this.normalNumbers = new ArrayList();
            for (String str : contactLookupData.getPhoneNumbers()) {
                String a2 = T9Helper.a((CharSequence) str);
                if (StringUtils.b((CharSequence) a2) && !ContactUtils.a(this.normalNumbers, a2)) {
                    this.normalNumbers.add(a2);
                }
            }
        }
        this.e = null;
        this.f12646d = null;
        setChecked(false);
        String str2 = "";
        this.unaccentName = contactLookupData.unAccentName != null ? contactLookupData.unAccentName : "";
        this.unaccentDescription = contactLookupData.unAccentDescription != null ? contactLookupData.unAccentDescription : "";
        this.displayName = contactLookupData.displayName != null ? contactLookupData.displayName : "";
        this.f12645c = false;
        this.lookupKey = contactLookupData.getLookupKey();
        this.contactId = contactLookupData.getContactId();
        this.nameT9 = contactLookupData.nameT9Format != null ? contactLookupData.nameT9Format : "";
        if (contactLookupData.nameT9FormatNoZero != null) {
            str2 = contactLookupData.nameT9FormatNoZero;
        }
        this.nameT9NoZero = str2;
        this.t9Indexes = contactLookupData.getT9Indexes();
        this.namesMap = contactLookupData.namesMap;
        this.descriptionMap = contactLookupData.descriptionMap;
        setSectionId(1);
        this.f = -1;
        this.numberMatchIndexEnd = -1;
        this.numberMatchIndexStart = -1;
        this.textHighlights = new SparseIntArray(2);
        this.h = contactLookupData.getDescription();
    }

    public final void a(ExtractedInfo extractedInfo) {
        this.normalNumbers = new ArrayList();
        this.normalNumbers.add(extractedInfo.phoneAsRaw);
        this.e = null;
        this.f12646d = null;
        setChecked(false);
        this.unaccentName = extractedInfo.unAccentName;
        this.displayName = extractedInfo.displayName;
        this.f12645c = false;
        this.lookupKey = "";
        this.contactId = 0L;
        this.nameT9 = extractedInfo.nameT9Format != null ? extractedInfo.nameT9Format : "";
        this.nameT9NoZero = extractedInfo.nameT9FormatNoZero != null ? extractedInfo.nameT9FormatNoZero : "";
        this.t9Indexes = extractedInfo.t9Indexes;
        this.namesMap = extractedInfo.namesMap;
        setSectionId(2);
        this.f = -1;
        this.numberMatchIndexEnd = -1;
        this.numberMatchIndexStart = -1;
        this.h = "";
        this.textHighlights = new SparseIntArray(2);
    }

    public final void b(int i, int i2) {
        this.textHighlights.put(i, i2);
    }

    public final void c(int i, int i2) {
        this.descriptionHighlights.put(i, i2);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public String calculateCacheKey() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it2 = this.normalNumbers.iterator();
        while (it2.hasNext()) {
            sb.append(String.format("ItemData_%s", PhoneManager.get().a(it2.next()).a()));
        }
        StringBuilder sb2 = sb;
        if (StringUtils.a((CharSequence) sb.toString())) {
            sb2 = new StringBuilder(super.calculateCacheKey());
        }
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(MemoryContactItem memoryContactItem) {
        MemoryContactItem memoryContactItem2 = memoryContactItem;
        if (StringUtils.a((CharSequence) this.displayName) && StringUtils.a((CharSequence) memoryContactItem2.displayName)) {
            return 0;
        }
        if (StringUtils.a((CharSequence) this.displayName)) {
            return -1;
        }
        if (StringUtils.a((CharSequence) memoryContactItem2.displayName)) {
            return 1;
        }
        String str = memoryContactItem2.displayName;
        if (StringUtils.c(this.displayName.charAt(0)) && !StringUtils.c(str.charAt(0))) {
            return 1;
        }
        if (StringUtils.c(this.displayName.charAt(0)) || !StringUtils.c(str.charAt(0))) {
            return this.displayName.compareToIgnoreCase(memoryContactItem2.displayName);
        }
        return -1;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof MemoryContactItem)) {
            return false;
        }
        MemoryContactItem memoryContactItem = (MemoryContactItem) obj;
        return this.normalNumbers == null ? memoryContactItem.normalNumbers == null : this.normalNumbers.equals(memoryContactItem.normalNumbers) && this.f12645c == memoryContactItem.f12645c && StringUtils.b(this.e, memoryContactItem.e);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        if (StringUtils.b((CharSequence) this.g)) {
            return PhoneManager.get().a(this.g);
        }
        if (!CollectionUtils.b(this.normalNumbers)) {
            return null;
        }
        return PhoneManager.get().a(this.normalNumbers.iterator().next());
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f12644a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        int i = 0;
        int hashCode2 = this.nameT9 == null ? 0 : this.nameT9.hashCode();
        if (this.normalNumbers != null) {
            i = this.normalNumbers.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return true;
    }

    public void setSectionId(int i) {
        this.f12644a = i;
    }

    public String toString() {
        return "MemoryContactItem{phoneToDisplay='" + this.g + "', description='" + this.h + "', nameT9='" + this.nameT9 + "', nameT9NoZero='" + this.nameT9NoZero + "', t9Indexes=" + this.t9Indexes + ", normalNumbers=" + this.normalNumbers + ", namesMap=" + this.namesMap + ", descriptionMap=" + this.descriptionMap + ", unaccentName='" + this.unaccentName + "', unaccentDescription='" + this.unaccentDescription + "', contactId=" + this.contactId + ", displayName='" + this.displayName + "', lookupKey='" + this.lookupKey + "'}";
    }
}
