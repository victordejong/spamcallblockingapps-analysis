package com.callapp.contacts.activity.contact.list.search;

import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.model.Constants;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.h.l;
import kotlin.h.p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b!\u0018�� 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J8\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0013\u001a\u00020\u000eJ\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0018\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0018\u0010!\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0004H\u0002J \u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t2\u0006\u0010\"\u001a\u00020\u0004JH\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t2\u0006\u0010\"\u001a\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\u00042\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u001e\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\nH\u0002J\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010)\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\nH\u0002J\u001e\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010 \u001a\u00020\u00042\u0006\u0010'\u001a\u00020\nH\u0002J*\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010'\u001a\u00020\n2\b\b\u0002\u0010,\u001a\u00020\nH\u0002J \u0010-\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010,\u001a\u00020\nH\u0002J\u0010\u0010.\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, d2 = {"Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;", "", "()V", "contactPrevSearchTerm", "", "searchResults", "", "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;", "aggregateResults", "Landroid/util/Pair;", "", "contactsResults", "callLogResults", "clearMarkedDescription", "", "item", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "clearMarkedName", "clearMarkedPhone", "clearSearch", "formatSearchTerm", "searchTerm", "hasAnyValidPhoneNumber", "hasSpecialChars", "str", "isBasedOnPrevSearch", "currSearchTerm", "markDescriptionIfFound", "desc", "markNameByT9IfFound", "numbers", "markNameIfFound", "subString", "markPhoneIfFound", "search", "prevSearchTerm", "allContacts", "prevResults", "searchDbContainsNumbers", "includeCallPlus", "searchDbContainsPhone", Constants.EXTRA_PHONE_NUMBER, "searchDbContainsText", "searchInDB", "includeT9", "searchInList", "shouldSearchList", "splitToWords", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/ContactSearcher.class */
public final class ContactSearcher {

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f12719c = new Companion(null);

    /* renamed from: d  reason: collision with root package name */
    private static final ContactSearcher f12720d = new ContactSearcher();

    /* renamed from: a  reason: collision with root package name */
    public List<? extends BaseAdapterItemData> f12721a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public String f12722b = "";

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;", "", "()V", "contactSearcher", "Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;", "testSearch", "", "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;", "searchTerm", "", "prevResults", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseAdapterItemData> a(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        String str2 = str;
        for (BaseAdapterItemData baseAdapterItemData : this.f12721a) {
            if (baseAdapterItemData instanceof MemoryContactItem) {
                SearchUtils searchUtils = SearchUtils.f12802a;
                if (!SearchUtils.b(str)) {
                    MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
                    memoryContactItem.a(-1, -1);
                    boolean a2 = a(memoryContactItem, str);
                    boolean b2 = b(memoryContactItem, str);
                    if (a2 || b2) {
                        arrayList.add(baseAdapterItemData);
                    }
                } else {
                    if (z) {
                        SearchUtils searchUtils2 = SearchUtils.f12802a;
                        if (SearchUtils.a(str)) {
                            String str3 = str2;
                            if (p.a(str, "0", false)) {
                                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                                str3 = str.substring(1);
                                kotlin.jvm.internal.p.b(str3, "(this as java.lang.String).substring(startIndex)");
                            }
                            MemoryContactItem memoryContactItem2 = (MemoryContactItem) baseAdapterItemData;
                            boolean d2 = d(memoryContactItem2, str3);
                            boolean c2 = c(memoryContactItem2, str);
                            if (!d2) {
                                str2 = str3;
                                if (c2) {
                                }
                            }
                            arrayList.add(baseAdapterItemData);
                            str2 = str3;
                        }
                    }
                    MemoryContactItem memoryContactItem3 = (MemoryContactItem) baseAdapterItemData;
                    memoryContactItem3.textHighlights.clear();
                    String str4 = str2;
                    if (p.a(str, "0", false)) {
                        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                        str4 = str.substring(1);
                        kotlin.jvm.internal.p.b(str4, "(this as java.lang.String).substring(startIndex)");
                    }
                    str2 = str4;
                    if (d(memoryContactItem3, str4)) {
                        arrayList.add(baseAdapterItemData);
                        str2 = str4;
                    }
                }
            } else {
                throw new IllegalArgumentException("list must be type MemoryContactItem");
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [T, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v54, types: [T, java.lang.Object, java.lang.String] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.callapp.contacts.activity.base.BaseAdapterItemData> a(final java.lang.String r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.search.ContactSearcher.a(java.lang.String, boolean, boolean):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(MemoryContactItem memoryContactItem, String str) {
        Object obj;
        v vVar;
        memoryContactItem.textHighlights.clear();
        Map<String, Integer> map = memoryContactItem.namesMap;
        if (map == null || map.isEmpty()) {
            return false;
        }
        if (!e(str)) {
            for (String str2 : f(str)) {
                Iterator<T> it2 = memoryContactItem.namesMap.keySet().iterator();
                while (true) {
                    vVar = null;
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    String name = (String) obj;
                    kotlin.jvm.internal.p.b(name, "name");
                    if (p.a(name, str2, false)) {
                        break;
                    }
                }
                String str3 = (String) obj;
                if (str3 != null) {
                    Integer num = memoryContactItem.namesMap.get(str3);
                    if (num != null) {
                        int intValue = num.intValue();
                        memoryContactItem.b(intValue, str2.length() + intValue);
                        vVar = v.f38654a;
                    }
                    if (vVar == null) {
                    }
                }
                memoryContactItem.textHighlights.clear();
                return false;
            }
            return true;
        }
        String str4 = memoryContactItem.unaccentName;
        kotlin.jvm.internal.p.b(str4, "item.unaccentName");
        int a2 = p.a((CharSequence) str4, str, 0, false, 6);
        if (a2 == -1) {
            return false;
        }
        memoryContactItem.b(a2, str.length() + a2);
        return true;
    }

    public static String b(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        String obj = p.b((CharSequence) str).toString();
        Locale locale = Locale.getDefault();
        kotlin.jvm.internal.p.b(locale, "Locale.getDefault()");
        Objects.requireNonNull(obj, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = obj.toLowerCase(locale);
        kotlin.jvm.internal.p.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        String l = RegexUtils.l(lowerCase);
        kotlin.jvm.internal.p.b(l, "RegexUtils.deAccent(sear…ase(Locale.getDefault()))");
        return l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(MemoryContactItem memoryContactItem) {
        return CollectionUtils.b(memoryContactItem.normalNumbers);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(MemoryContactItem memoryContactItem, String str) {
        Object obj;
        v vVar;
        memoryContactItem.descriptionHighlights.clear();
        Map<String, Integer> map = memoryContactItem.descriptionMap;
        if ((map == null || map.isEmpty()) || memoryContactItem.unaccentDescription == null) {
            return false;
        }
        if (!e(str)) {
            for (String str2 : f(str)) {
                Iterator<T> it2 = memoryContactItem.descriptionMap.keySet().iterator();
                while (true) {
                    vVar = null;
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    String description = (String) obj;
                    kotlin.jvm.internal.p.b(description, "description");
                    if (p.a(description, str2, false)) {
                        break;
                    }
                }
                String str3 = (String) obj;
                if (str3 != null) {
                    Integer num = memoryContactItem.descriptionMap.get(str3);
                    if (num != null) {
                        int intValue = num.intValue();
                        memoryContactItem.c(intValue, str2.length() + intValue);
                        vVar = v.f38654a;
                    }
                    if (vVar == null) {
                    }
                }
                memoryContactItem.descriptionHighlights.clear();
                return false;
            }
            return true;
        }
        String str4 = memoryContactItem.unaccentDescription;
        kotlin.jvm.internal.p.b(str4, "item.unaccentDescription");
        int a2 = p.a((CharSequence) str4, str, 0, false, 6);
        if (a2 == -1) {
            return false;
        }
        memoryContactItem.c(a2, str.length() + a2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(MemoryContactItem memoryContactItem, String str) {
        memoryContactItem.textHighlights.clear();
        String str2 = memoryContactItem.nameT9;
        if (str2 == null || str2.length() == 0) {
            return false;
        }
        String str3 = memoryContactItem.nameT9NoZero;
        if (str3 == null || str3.length() == 0) {
            return false;
        }
        List<Integer> list = memoryContactItem.t9Indexes;
        if (list == null || list.isEmpty()) {
            return false;
        }
        String str4 = memoryContactItem.nameT9;
        kotlin.jvm.internal.p.b(str4, "item.nameT9");
        int a2 = p.a((CharSequence) str4, "0".concat(String.valueOf(str)), 0, false, 6);
        if (a2 != -1) {
            memoryContactItem.b(a2, str.length() + a2);
            return true;
        }
        String str5 = memoryContactItem.nameT9NoZero;
        kotlin.jvm.internal.p.b(str5, "item.nameT9NoZero");
        int a3 = p.a((CharSequence) str5, str, 0, false, 6);
        if (a3 == -1) {
            return false;
        }
        if (a3 != 0) {
            int intValue = memoryContactItem.t9Indexes.get(a3).intValue();
            Integer num = memoryContactItem.t9Indexes.get(a3 - 1);
            kotlin.jvm.internal.p.b(num, "item.t9Indexes[pos - 1]");
            if (intValue - num.intValue() <= 1) {
                return false;
            }
        }
        Integer start = memoryContactItem.t9Indexes.get(a3);
        Integer end = memoryContactItem.t9Indexes.get(a3 + str.length());
        kotlin.jvm.internal.p.b(start, "start");
        int intValue2 = start.intValue();
        kotlin.jvm.internal.p.b(end, "end");
        memoryContactItem.b(intValue2, end.intValue());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(MemoryContactItem memoryContactItem, String str) {
        Object obj;
        memoryContactItem.a(-1, -1);
        if (!b(memoryContactItem)) {
            return false;
        }
        List<String> list = memoryContactItem.normalNumbers;
        kotlin.jvm.internal.p.b(list, "item.normalNumbers");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            String it3 = (String) obj;
            kotlin.jvm.internal.p.b(it3, "it");
            if (p.a((CharSequence) it3, str, 0, false, 6) != -1) {
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 != null) {
            memoryContactItem.g = str2;
            int a2 = p.a((CharSequence) str2, str, 0, false, 6);
            memoryContactItem.a(a2, str.length() + a2);
            return true;
        }
        memoryContactItem.a(-1, -1);
        memoryContactItem.g = "";
        return false;
    }

    private final boolean d(String str) {
        if (this.f12722b.length() == 0) {
            return false;
        }
        return p.a(str, this.f12722b, false);
    }

    private static boolean e(String str) {
        String str2 = str;
        for (int i = 0; i < str2.length(); i++) {
            char charAt = str2.charAt(i);
            if (!Character.isLetterOrDigit(charAt) && !Character.isWhitespace(charAt)) {
                return true;
            }
        }
        return false;
    }

    private static List<String> f(String splitToWords) {
        kotlin.jvm.internal.p.d(splitToWords, "$this$splitToWords");
        return new l("\\s+").b(splitToWords);
    }

    public final void a() {
        this.f12722b = "";
        this.f12721a = new ArrayList();
    }

    public final boolean a(String str) {
        return (this.f12721a.isEmpty() ^ true) && d(str);
    }
}
