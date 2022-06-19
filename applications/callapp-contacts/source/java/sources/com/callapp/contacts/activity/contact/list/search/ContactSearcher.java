package com.callapp.contacts.activity.contact.list.search;

import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.callappplus.CallAppPlusData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b!\u0018�� 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J8\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0013\u001a\u00020\u000eJ\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0018\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0018\u0010!\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0004H\u0002J \u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t2\u0006\u0010\"\u001a\u00020\u0004JH\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t2\u0006\u0010\"\u001a\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\u00042\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u001e\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\nH\u0002J\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010)\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\nH\u0002J\u001e\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010 \u001a\u00020\u00042\u0006\u0010'\u001a\u00020\nH\u0002J*\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010'\u001a\u00020\n2\b\b\u0002\u0010,\u001a\u00020\nH\u0002J \u0010-\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010,\u001a\u00020\nH\u0002J\u0010\u0010.\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;", "", "()V", "contactPrevSearchTerm", "", "searchResults", "", "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;", "aggregateResults", "Landroid/util/Pair;", "", "contactsResults", "callLogResults", "clearMarkedDescription", "", "item", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "clearMarkedName", "clearMarkedPhone", "clearSearch", "formatSearchTerm", "searchTerm", "hasAnyValidPhoneNumber", "hasSpecialChars", "str", "isBasedOnPrevSearch", "currSearchTerm", "markDescriptionIfFound", "desc", "markNameByT9IfFound", "numbers", "markNameIfFound", "subString", "markPhoneIfFound", "search", "prevSearchTerm", "allContacts", "prevResults", "searchDbContainsNumbers", "includeCallPlus", "searchDbContainsPhone", Constants.EXTRA_PHONE_NUMBER, "searchDbContainsText", "searchInDB", "includeT9", "searchInList", "shouldSearchList", "splitToWords", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/ContactSearcher.class */
public final class ContactSearcher {

    /* renamed from: c */
    public static final Companion f22740c = new Companion(null);

    /* renamed from: d */
    private static final ContactSearcher f22741d = new ContactSearcher();

    /* renamed from: a */
    public List<? extends BaseAdapterItemData> f22742a = new ArrayList();

    /* renamed from: b */
    public String f22743b = "";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;", "", "()V", "contactSearcher", "Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;", "testSearch", "", "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;", "searchTerm", "", "prevResults", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: a */
    public final List<BaseAdapterItemData> m30440a(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        String str2 = str;
        for (BaseAdapterItemData baseAdapterItemData : this.f22742a) {
            if (!(baseAdapterItemData instanceof MemoryContactItem)) {
                throw new IllegalArgumentException("list must be type MemoryContactItem");
            }
            SearchUtils searchUtils = SearchUtils.f22881a;
            if (!SearchUtils.m30363b(str)) {
                MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
                memoryContactItem.m30535a(-1, -1);
                boolean m30445a = m30445a(memoryContactItem, str);
                boolean m30437b = m30437b(memoryContactItem, str);
                if (m30445a || m30437b) {
                    arrayList.add(baseAdapterItemData);
                }
            } else {
                if (z) {
                    SearchUtils searchUtils2 = SearchUtils.f22881a;
                    if (SearchUtils.m30364a(str)) {
                        String str3 = str2;
                        if (C18425p.m3957a(str, "0", false)) {
                            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                            str3 = str.substring(1);
                            C18524p.m3843b(str3, "(this as java.lang.String).substring(startIndex)");
                        }
                        MemoryContactItem memoryContactItem2 = (MemoryContactItem) baseAdapterItemData;
                        boolean m30429d = m30429d(memoryContactItem2, str3);
                        boolean m30433c = m30433c(memoryContactItem2, str);
                        if (!m30429d) {
                            str2 = str3;
                            if (m30433c) {
                            }
                        }
                        arrayList.add(baseAdapterItemData);
                        str2 = str3;
                    }
                }
                MemoryContactItem memoryContactItem3 = (MemoryContactItem) baseAdapterItemData;
                memoryContactItem3.textHighlights.clear();
                String str4 = str2;
                if (C18425p.m3957a(str, "0", false)) {
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    str4 = str.substring(1);
                    C18524p.m3843b(str4, "(this as java.lang.String).substring(startIndex)");
                }
                str2 = str4;
                if (m30429d(memoryContactItem3, str4)) {
                    arrayList.add(baseAdapterItemData);
                    str2 = str4;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [T, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v54, types: [T, java.lang.Object, java.lang.String] */
    /* renamed from: a */
    public final List<BaseAdapterItemData> m30439a(final String str, boolean z, boolean z2) {
        SearchUtils searchUtils = SearchUtils.f22881a;
        if (!SearchUtils.m30363b(str)) {
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
            multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$searchDbContainsText$1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    boolean m30438b;
                    boolean m30445a;
                    boolean m30437b;
                    List<ContactLookupData> contactsResult = ContactDeviceIDAndPhoneChangesUtils.m28347e(str);
                    C18524p.m3843b(contactsResult, "contactsResult");
                    for (ContactLookupData contactLookupData : contactsResult) {
                        MemoryContactItem memoryContactItem = new MemoryContactItem();
                        memoryContactItem.m30534a(contactLookupData);
                        m30438b = ContactSearcher.m30438b(memoryContactItem);
                        if (m30438b) {
                            ContactSearcher contactSearcher = ContactSearcher.this;
                            m30445a = ContactSearcher.m30445a(memoryContactItem, str);
                            ContactSearcher contactSearcher2 = ContactSearcher.this;
                            m30437b = ContactSearcher.m30437b(memoryContactItem, str);
                            if (m30445a || m30437b) {
                                arrayList.add(memoryContactItem);
                            }
                        }
                    }
                }
            });
            if (z) {
                multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$searchDbContainsText$2
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        boolean m30438b;
                        boolean m30445a;
                        List<ExtractedInfo> callPlusResult = IMDataExtractionUtils.m28610b(str);
                        C18524p.m3843b(callPlusResult, "callPlusResult");
                        for (ExtractedInfo extractedInfo : callPlusResult) {
                            CallAppPlusData item = ContactPlusUtils.m28343a(extractedInfo);
                            item.m30533a(extractedInfo);
                            C18524p.m3843b(item, "item");
                            CallAppPlusData callAppPlusData = item;
                            m30438b = ContactSearcher.m30438b(callAppPlusData);
                            if (m30438b) {
                                ContactSearcher contactSearcher = ContactSearcher.this;
                                m30445a = ContactSearcher.m30445a(callAppPlusData, str);
                                if (m30445a) {
                                    arrayList2.add(item);
                                }
                            }
                        }
                    }
                });
            }
            multiTaskRunner.m28975a();
            arrayList.addAll(arrayList2);
            return arrayList;
        }
        if (z2) {
            SearchUtils searchUtils2 = SearchUtils.f22881a;
            if (SearchUtils.m30364a(str)) {
                final C18490ab.C18495e c18495e = new C18490ab.C18495e();
                c18495e.f63589a = str;
                if (C18425p.m3957a(str, "0", false)) {
                    if (str.length() == 1) {
                        return C18297z.f63400a;
                    }
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    ?? substring = str.substring(1);
                    C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
                    c18495e.f63589a = substring;
                }
                final ArrayList arrayList3 = new ArrayList();
                final ArrayList arrayList4 = new ArrayList();
                MultiTaskRunner multiTaskRunner2 = new MultiTaskRunner();
                multiTaskRunner2.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$searchDbContainsNumbers$1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        boolean m30438b;
                        boolean m30429d;
                        boolean m30433c;
                        List<ContactLookupData> contactsResult = ContactDeviceIDAndPhoneChangesUtils.m28346f((String) c18495e.f63589a);
                        C18524p.m3843b(contactsResult, "contactsResult");
                        for (ContactLookupData contactLookupData : contactsResult) {
                            MemoryContactItem memoryContactItem = new MemoryContactItem();
                            memoryContactItem.m30534a(contactLookupData);
                            m30438b = ContactSearcher.m30438b(memoryContactItem);
                            if (m30438b) {
                                ContactSearcher contactSearcher = ContactSearcher.this;
                                m30429d = ContactSearcher.m30429d(memoryContactItem, (String) c18495e.f63589a);
                                ContactSearcher contactSearcher2 = ContactSearcher.this;
                                m30433c = ContactSearcher.m30433c(memoryContactItem, (String) c18495e.f63589a);
                                if (m30429d || m30433c) {
                                    arrayList3.add(memoryContactItem);
                                }
                            }
                        }
                    }
                });
                if (z) {
                    multiTaskRunner2.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$searchDbContainsNumbers$2
                        @Override // com.callapp.contacts.manager.task.Task
                        public final void doTask() {
                            boolean m30438b;
                            boolean m30429d;
                            boolean m30433c;
                            List<ExtractedInfo> callPlusResult = IMDataExtractionUtils.m28606c((String) c18495e.f63589a);
                            C18524p.m3843b(callPlusResult, "callPlusResult");
                            for (ExtractedInfo extractedInfo : callPlusResult) {
                                CallAppPlusData item = ContactPlusUtils.m28343a(extractedInfo);
                                item.m30533a(extractedInfo);
                                C18524p.m3843b(item, "item");
                                CallAppPlusData callAppPlusData = item;
                                m30438b = ContactSearcher.m30438b(callAppPlusData);
                                if (m30438b) {
                                    ContactSearcher contactSearcher = ContactSearcher.this;
                                    m30429d = ContactSearcher.m30429d(callAppPlusData, (String) c18495e.f63589a);
                                    ContactSearcher contactSearcher2 = ContactSearcher.this;
                                    m30433c = ContactSearcher.m30433c(callAppPlusData, (String) c18495e.f63589a);
                                    if (m30429d || m30433c) {
                                        arrayList4.add(item);
                                    }
                                }
                            }
                        }
                    });
                }
                multiTaskRunner2.m28975a();
                arrayList3.addAll(arrayList4);
                return arrayList3;
            }
        }
        final C18490ab.C18495e c18495e2 = new C18490ab.C18495e();
        c18495e2.f63589a = str;
        if (C18425p.m3957a(str, "0", false)) {
            if (str.length() == 1) {
                return C18297z.f63400a;
            }
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            ?? substring2 = str.substring(1);
            C18524p.m3843b(substring2, "(this as java.lang.String).substring(startIndex)");
            c18495e2.f63589a = substring2;
        }
        final ArrayList arrayList5 = new ArrayList();
        final ArrayList arrayList6 = new ArrayList();
        MultiTaskRunner multiTaskRunner3 = new MultiTaskRunner();
        multiTaskRunner3.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$searchDbContainsPhone$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                boolean m30429d;
                List<ContactLookupData> contactsResult = ContactDeviceIDAndPhoneChangesUtils.m28348d((String) c18495e2.f63589a);
                C18524p.m3843b(contactsResult, "contactsResult");
                for (ContactLookupData contactLookupData : contactsResult) {
                    MemoryContactItem memoryContactItem = new MemoryContactItem();
                    memoryContactItem.m30534a(contactLookupData);
                    ContactSearcher contactSearcher = ContactSearcher.this;
                    m30429d = ContactSearcher.m30429d(memoryContactItem, (String) c18495e2.f63589a);
                    if (m30429d) {
                        arrayList5.add(memoryContactItem);
                    }
                }
            }
        });
        if (z) {
            multiTaskRunner3.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$searchDbContainsPhone$2
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    boolean m30429d;
                    List<ExtractedInfo> callPlusResult = IMDataExtractionUtils.m28619a((String) c18495e2.f63589a);
                    C18524p.m3843b(callPlusResult, "callPlusResult");
                    for (ExtractedInfo extractedInfo : callPlusResult) {
                        CallAppPlusData item = ContactPlusUtils.m28343a(extractedInfo);
                        item.m30533a(extractedInfo);
                        ContactSearcher contactSearcher = ContactSearcher.this;
                        C18524p.m3843b(item, "item");
                        m30429d = ContactSearcher.m30429d(item, (String) c18495e2.f63589a);
                        if (m30429d) {
                            arrayList6.add(item);
                        }
                    }
                }
            });
        }
        multiTaskRunner3.m28975a();
        arrayList5.addAll(arrayList6);
        return arrayList5;
    }

    /* renamed from: a */
    public static boolean m30445a(MemoryContactItem memoryContactItem, String str) {
        Object obj;
        memoryContactItem.textHighlights.clear();
        Map<String, Integer> map = memoryContactItem.namesMap;
        if (map == null || map.isEmpty()) {
            return false;
        }
        if (m30424e(str)) {
            String str2 = memoryContactItem.unaccentName;
            C18524p.m3843b(str2, "item.unaccentName");
            int a = C18425p.m3940a((CharSequence) str2, str, 0, false, 6);
            if (a == -1) {
                return false;
            }
            memoryContactItem.m30531b(a, str.length() + a);
            return true;
        }
        for (String str3 : m30423f(str)) {
            Iterator<T> it2 = memoryContactItem.namesMap.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                String name = (String) obj;
                C18524p.m3843b(name, "name");
                if (C18425p.m3957a(name, str3, false)) {
                    break;
                }
            }
            String str4 = (String) obj;
            if (str4 != null) {
                Integer num = memoryContactItem.namesMap.get(str4);
                C20128v c20128v = null;
                if (num != null) {
                    int intValue = num.intValue();
                    memoryContactItem.m30531b(intValue, str3.length() + intValue);
                    c20128v = C20128v.f66529a;
                }
                if (c20128v == null) {
                }
            }
            memoryContactItem.textHighlights.clear();
            return false;
        }
        return true;
    }

    /* renamed from: b */
    public static String m30434b(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        String obj = C18425p.m3930b((CharSequence) str).toString();
        Locale locale = Locale.getDefault();
        C18524p.m3843b(locale, "Locale.getDefault()");
        Objects.requireNonNull(obj, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = obj.toLowerCase(locale);
        C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        String m31889l = RegexUtils.m31889l(lowerCase);
        C18524p.m3843b(m31889l, "RegexUtils.deAccent(sear…ase(Locale.getDefault()))");
        return m31889l;
    }

    /* renamed from: b */
    public static boolean m30438b(MemoryContactItem memoryContactItem) {
        return CollectionUtils.m26068b(memoryContactItem.normalNumbers);
    }

    /* renamed from: b */
    public static boolean m30437b(MemoryContactItem memoryContactItem, String str) {
        Object obj;
        memoryContactItem.descriptionHighlights.clear();
        Map<String, Integer> map = memoryContactItem.descriptionMap;
        if ((map == null || map.isEmpty()) || memoryContactItem.unaccentDescription == null) {
            return false;
        }
        if (m30424e(str)) {
            String str2 = memoryContactItem.unaccentDescription;
            C18524p.m3843b(str2, "item.unaccentDescription");
            int a = C18425p.m3940a((CharSequence) str2, str, 0, false, 6);
            if (a == -1) {
                return false;
            }
            memoryContactItem.m30530c(a, str.length() + a);
            return true;
        }
        for (String str3 : m30423f(str)) {
            Iterator<T> it2 = memoryContactItem.descriptionMap.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                String description = (String) obj;
                C18524p.m3843b(description, "description");
                if (C18425p.m3957a(description, str3, false)) {
                    break;
                }
            }
            String str4 = (String) obj;
            if (str4 != null) {
                Integer num = memoryContactItem.descriptionMap.get(str4);
                C20128v c20128v = null;
                if (num != null) {
                    int intValue = num.intValue();
                    memoryContactItem.m30530c(intValue, str3.length() + intValue);
                    c20128v = C20128v.f66529a;
                }
                if (c20128v == null) {
                }
            }
            memoryContactItem.descriptionHighlights.clear();
            return false;
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m30433c(MemoryContactItem memoryContactItem, String str) {
        memoryContactItem.textHighlights.clear();
        String str2 = memoryContactItem.nameT9;
        if (!(str2 == null || str2.length() == 0)) {
            String str3 = memoryContactItem.nameT9NoZero;
            if (str3 == null || str3.length() == 0) {
                return false;
            }
            List<Integer> list = memoryContactItem.t9Indexes;
            if (list == null || list.isEmpty()) {
                return false;
            }
            String str4 = memoryContactItem.nameT9;
            C18524p.m3843b(str4, "item.nameT9");
            int a = C18425p.m3940a((CharSequence) str4, "0".concat(String.valueOf(str)), 0, false, 6);
            if (a != -1) {
                memoryContactItem.m30531b(a, str.length() + a);
                return true;
            }
            String str5 = memoryContactItem.nameT9NoZero;
            C18524p.m3843b(str5, "item.nameT9NoZero");
            int a2 = C18425p.m3940a((CharSequence) str5, str, 0, false, 6);
            if (a2 == -1) {
                return false;
            }
            if (a2 != 0) {
                int intValue = memoryContactItem.t9Indexes.get(a2).intValue();
                Integer num = memoryContactItem.t9Indexes.get(a2 - 1);
                C18524p.m3843b(num, "item.t9Indexes[pos - 1]");
                if (intValue - num.intValue() <= 1) {
                    return false;
                }
            }
            Integer start = memoryContactItem.t9Indexes.get(a2);
            Integer end = memoryContactItem.t9Indexes.get(a2 + str.length());
            C18524p.m3843b(start, "start");
            int intValue2 = start.intValue();
            C18524p.m3843b(end, "end");
            memoryContactItem.m30531b(intValue2, end.intValue());
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m30429d(MemoryContactItem memoryContactItem, String str) {
        Object obj;
        memoryContactItem.m30535a(-1, -1);
        if (!m30438b(memoryContactItem)) {
            return false;
        }
        List<String> list = memoryContactItem.normalNumbers;
        C18524p.m3843b(list, "item.normalNumbers");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            String it3 = (String) obj;
            C18524p.m3843b(it3, "it");
            if (C18425p.m3940a((CharSequence) it3, str, 0, false, 6) != -1) {
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 == null) {
            memoryContactItem.m30535a(-1, -1);
            memoryContactItem.f22607g = "";
            return false;
        }
        memoryContactItem.f22607g = str2;
        int a = C18425p.m3940a((CharSequence) str2, str, 0, false, 6);
        memoryContactItem.m30535a(a, str.length() + a);
        return true;
    }

    /* renamed from: d */
    private final boolean m30426d(String str) {
        if (this.f22743b.length() == 0) {
            return false;
        }
        return C18425p.m3957a(str, this.f22743b, false);
    }

    /* renamed from: e */
    private static boolean m30424e(String str) {
        String str2 = str;
        for (int i = 0; i < str2.length(); i++) {
            char charAt = str2.charAt(i);
            if (!Character.isLetterOrDigit(charAt) && !Character.isWhitespace(charAt)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    private static List<String> m30423f(String splitToWords) {
        C18524p.m3840d(splitToWords, "$this$splitToWords");
        return new C18418l("\\s+").m3982b(splitToWords);
    }

    /* renamed from: a */
    public final void m30447a() {
        this.f22743b = "";
        this.f22742a = new ArrayList();
    }

    /* renamed from: a */
    public final boolean m30441a(String str) {
        return (this.f22742a.isEmpty() ^ true) && m30426d(str);
    }
}
