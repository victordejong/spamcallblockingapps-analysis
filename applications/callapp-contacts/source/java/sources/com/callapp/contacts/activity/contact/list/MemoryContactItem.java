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

    /* renamed from: a */
    private int f22602a;

    /* renamed from: c */
    public boolean f22603c;

    /* renamed from: d */
    public Set<JSONEmail> f22604d;

    /* renamed from: e */
    public String f22605e;

    /* renamed from: f */
    public int f22606f;

    /* renamed from: g */
    public String f22607g;

    /* renamed from: h */
    public String f22608h;

    public MemoryContactItem() {
        this.f22605e = null;
        this.f22606f = -1;
        this.f22607g = "";
        this.f22608h = "";
    }

    public MemoryContactItem(MemoryContactItem memoryContactItem) {
        super(memoryContactItem);
        this.f22605e = null;
        this.f22606f = -1;
        this.f22607g = "";
        this.f22608h = "";
        this.f22603c = memoryContactItem.f22603c;
        this.f22604d = memoryContactItem.f22604d;
        this.f22606f = memoryContactItem.f22606f;
    }

    public MemoryContactItem(ContactData contactData, boolean z) {
        this.f22605e = null;
        this.f22606f = -1;
        this.f22607g = "";
        this.f22608h = "";
        this.isChecked = z;
        if (CollectionUtils.m26068b(contactData.getPhones())) {
            this.normalNumbers = new ArrayList();
            for (Phone phone : contactData.getPhones()) {
                String m30360a = T9Helper.m30360a((CharSequence) phone.m26101a());
                if (StringUtils.m26045b((CharSequence) m30360a) && !ContactUtils.m28318a(this.normalNumbers, m30360a)) {
                    this.normalNumbers.add(m30360a);
                }
            }
        }
        this.f22605e = null;
        this.f22604d = null;
        setChecked(false);
        this.displayName = "";
        this.displayName = contactData.getFullName();
        this.unaccentName = "";
        if (StringUtils.m26045b((CharSequence) this.displayName)) {
            this.unaccentName = RegexUtils.m31889l(RegexUtils.m31888m(this.displayName.toLowerCase()));
            m30532a(this.unaccentName, this.namesMap);
            String replace = T9Helper.m30359a(org.apache.commons.lang3.StringUtils.SPACE + this.unaccentName).replace("*", "0").replace("#", "0").replace("+", "0");
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
        this.f22608h = contactData.getDescription();
        this.unaccentDescription = "";
        if (StringUtils.m26045b((CharSequence) this.f22608h)) {
            this.unaccentDescription = RegexUtils.m31889l(RegexUtils.m31888m(this.f22608h.toLowerCase()));
            m30532a(this.unaccentDescription, this.descriptionMap);
        }
        if (contactData.getDeviceData() != null && contactData.getDeviceData().isFavorite() != null) {
            this.f22603c = contactData.getDeviceData().isFavorite().booleanValue();
        }
        ContactLookupData contactLookupData = (ContactLookupData) CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class).m4700e().m4613a(ContactLookupData_.contactId, this.contactId).m4618a().m4641a();
        if (contactLookupData != null) {
            this.lookupKey = contactLookupData.getLookupKey();
        }
        this.contactId = contactData.getDeviceId();
        setSectionId(1);
        this.f22606f = -1;
        this.numberMatchIndexEnd = -1;
        this.numberMatchIndexStart = -1;
        this.textHighlights = new SparseIntArray(2);
    }

    /* renamed from: a */
    private static void m30532a(String str, Map<String, Integer> map) {
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

    /* renamed from: a */
    public final void m30535a(int i, int i2) {
        if (i == i2 || i2 > i) {
            this.numberMatchIndexStart = i;
            this.numberMatchIndexEnd = i2;
        }
    }

    /* renamed from: a */
    public final void m30534a(ContactLookupData contactLookupData) {
        if (CollectionUtils.m26068b(contactLookupData.getPhoneNumbers())) {
            this.normalNumbers = new ArrayList();
            for (String str : contactLookupData.getPhoneNumbers()) {
                String m30360a = T9Helper.m30360a((CharSequence) str);
                if (StringUtils.m26045b((CharSequence) m30360a) && !ContactUtils.m28318a(this.normalNumbers, m30360a)) {
                    this.normalNumbers.add(m30360a);
                }
            }
        }
        this.f22605e = null;
        this.f22604d = null;
        setChecked(false);
        this.unaccentName = contactLookupData.unAccentName != null ? contactLookupData.unAccentName : "";
        this.unaccentDescription = contactLookupData.unAccentDescription != null ? contactLookupData.unAccentDescription : "";
        this.displayName = contactLookupData.displayName != null ? contactLookupData.displayName : "";
        this.f22603c = false;
        this.lookupKey = contactLookupData.getLookupKey();
        this.contactId = contactLookupData.getContactId();
        this.nameT9 = contactLookupData.nameT9Format != null ? contactLookupData.nameT9Format : "";
        String str2 = "";
        if (contactLookupData.nameT9FormatNoZero != null) {
            str2 = contactLookupData.nameT9FormatNoZero;
        }
        this.nameT9NoZero = str2;
        this.t9Indexes = contactLookupData.getT9Indexes();
        this.namesMap = contactLookupData.namesMap;
        this.descriptionMap = contactLookupData.descriptionMap;
        setSectionId(1);
        this.f22606f = -1;
        this.numberMatchIndexEnd = -1;
        this.numberMatchIndexStart = -1;
        this.textHighlights = new SparseIntArray(2);
        this.f22608h = contactLookupData.getDescription();
    }

    /* renamed from: a */
    public final void m30533a(ExtractedInfo extractedInfo) {
        this.normalNumbers = new ArrayList();
        this.normalNumbers.add(extractedInfo.phoneAsRaw);
        this.f22605e = null;
        this.f22604d = null;
        setChecked(false);
        this.unaccentName = extractedInfo.unAccentName;
        this.displayName = extractedInfo.displayName;
        this.f22603c = false;
        this.lookupKey = "";
        this.contactId = 0L;
        this.nameT9 = extractedInfo.nameT9Format != null ? extractedInfo.nameT9Format : "";
        this.nameT9NoZero = extractedInfo.nameT9FormatNoZero != null ? extractedInfo.nameT9FormatNoZero : "";
        this.t9Indexes = extractedInfo.t9Indexes;
        this.namesMap = extractedInfo.namesMap;
        setSectionId(2);
        this.f22606f = -1;
        this.numberMatchIndexEnd = -1;
        this.numberMatchIndexStart = -1;
        this.f22608h = "";
        this.textHighlights = new SparseIntArray(2);
    }

    /* renamed from: b */
    public final void m30531b(int i, int i2) {
        this.textHighlights.put(i, i2);
    }

    /* renamed from: c */
    public final void m30530c(int i, int i2) {
        this.descriptionHighlights.put(i, i2);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public String calculateCacheKey() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it2 = this.normalNumbers.iterator();
        while (it2.hasNext()) {
            sb.append(String.format("ItemData_%s", PhoneManager.get().m28239a(it2.next()).m26101a()));
        }
        StringBuilder sb2 = sb;
        if (StringUtils.m26059a((CharSequence) sb.toString())) {
            sb2 = new StringBuilder(super.calculateCacheKey());
        }
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(MemoryContactItem memoryContactItem) {
        MemoryContactItem memoryContactItem2 = memoryContactItem;
        if (!StringUtils.m26059a((CharSequence) this.displayName) || !StringUtils.m26059a((CharSequence) memoryContactItem2.displayName)) {
            if (StringUtils.m26059a((CharSequence) this.displayName)) {
                return -1;
            }
            if (StringUtils.m26059a((CharSequence) memoryContactItem2.displayName)) {
                return 1;
            }
            String str = memoryContactItem2.displayName;
            if (StringUtils.m26039c(this.displayName.charAt(0)) && !StringUtils.m26039c(str.charAt(0))) {
                return 1;
            }
            if (!StringUtils.m26039c(this.displayName.charAt(0)) && StringUtils.m26039c(str.charAt(0))) {
                return -1;
            }
            return this.displayName.compareToIgnoreCase(memoryContactItem2.displayName);
        }
        return 0;
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
        return this.normalNumbers == null ? memoryContactItem.normalNumbers == null : this.normalNumbers.equals(memoryContactItem.normalNumbers) && this.f22603c == memoryContactItem.f22603c && StringUtils.m26042b(this.f22605e, memoryContactItem.f22605e);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        if (StringUtils.m26045b((CharSequence) this.f22607g)) {
            return PhoneManager.get().m28239a(this.f22607g);
        }
        if (!CollectionUtils.m26068b(this.normalNumbers)) {
            return null;
        }
        return PhoneManager.get().m28239a(this.normalNumbers.iterator().next());
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f22602a;
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
        this.f22602a = i;
    }

    public String toString() {
        return "MemoryContactItem{phoneToDisplay='" + this.f22607g + "', description='" + this.f22608h + "', nameT9='" + this.nameT9 + "', nameT9NoZero='" + this.nameT9NoZero + "', t9Indexes=" + this.t9Indexes + ", normalNumbers=" + this.normalNumbers + ", namesMap=" + this.namesMap + ", descriptionMap=" + this.descriptionMap + ", unaccentName='" + this.unaccentName + "', unaccentDescription='" + this.unaccentDescription + "', contactId=" + this.contactId + ", displayName='" + this.displayName + "', lookupKey='" + this.lookupKey + "'}";
    }
}
