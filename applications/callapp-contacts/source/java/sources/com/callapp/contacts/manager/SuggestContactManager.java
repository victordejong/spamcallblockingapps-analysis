package com.callapp.contacts.manager;

import android.util.SparseArray;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.SuggestContactData;
import com.callapp.contacts.model.objectbox.SuggestContactData_;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import io.objectbox.C17944a;
import io.objectbox.query.AbstractC17985c;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/SuggestContactManager.class */
public class SuggestContactManager {
    /* renamed from: a */
    public static SparseArray<String> m28474a(long j) {
        final SparseArray<String> sparseArray = new SparseArray<>();
        CallAppApplication.get().getObjectBoxStore().m4727d(SuggestContactData.class).m4700e().m4611a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f29662b, j)).m4618a().m4636a(new AbstractC17985c<SuggestContactData>() { // from class: com.callapp.contacts.manager.SuggestContactManager.2
            @Override // io.objectbox.query.AbstractC17985c
            public final /* synthetic */ void accept(SuggestContactData suggestContactData) {
                SuggestContactData suggestContactData2 = suggestContactData;
                int socialNetworkId = suggestContactData2.getSocialNetworkId();
                if (((String) sparseArray.get(socialNetworkId)) == null) {
                    sparseArray.put(socialNetworkId, suggestContactData2.getProfileId());
                }
            }
        });
        return sparseArray;
    }

    /* renamed from: a */
    public static void m28473a(long j, int i, String str) {
        if (j == 0 || !isSocialNetIdBetweenRange(i)) {
            return;
        }
        CallAppApplication.get().getObjectBoxStore().m4727d(SuggestContactData.class).m4700e().m4611a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f29662b, j)).m4613a(SuggestContactData_.socialNetworkId, i).m4611a(SuggestContactData_.profileId, str).m4618a().m4624f();
    }

    /* renamed from: a */
    public static void m28472a(long j, int i, String str, String str2, String str3) {
        if (j == 0 || str == null || !isSocialNetIdBetweenRange(i)) {
            return;
        }
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(SuggestContactData.class);
        String str4 = str2;
        if (StringUtils.m26059a((CharSequence) str2)) {
            str4 = "";
        }
        SuggestContactData suggestContactData = (SuggestContactData) m4727d.m4700e().m4611a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f29662b, j)).m4613a(SuggestContactData_.socialNetworkId, i).m4611a(SuggestContactData_.profileId, str).m4611a(SuggestContactData_.userName, str4).m4611a(SuggestContactData_.contactName, str3).m4618a().m4641a();
        SuggestContactData suggestContactData2 = suggestContactData;
        if (suggestContactData == null) {
            suggestContactData2 = new SuggestContactData();
        }
        suggestContactData2.setPhoneOrIdKey(ContactData.generateId(Phone.f29662b, j));
        suggestContactData2.setSocialNetworkId(i);
        suggestContactData2.setProfileId(str);
        suggestContactData2.setUserName(str4);
        suggestContactData2.setContactName(str3);
        m4727d.m4711a((C17944a) suggestContactData2);
    }

    /* renamed from: b */
    public static void m28471b(long j) {
        CallAppApplication.get().getObjectBoxStore().m4727d(SuggestContactData.class).m4700e().m4611a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f29662b, j)).m4618a().m4624f();
    }

    public static Map<Long, SparseArray<String>> getAllSuggestionMap() {
        final HashMap hashMap = new HashMap();
        CallAppApplication.get().getObjectBoxStore().m4727d(SuggestContactData.class).m4700e().m4618a().m4636a(new AbstractC17985c<SuggestContactData>() { // from class: com.callapp.contacts.manager.SuggestContactManager.1
            @Override // io.objectbox.query.AbstractC17985c
            public final /* synthetic */ void accept(SuggestContactData suggestContactData) {
                SuggestContactData suggestContactData2 = suggestContactData;
                long longValue = ((Long) ContactData.splitPhoneOrIdKey(suggestContactData2.getPhoneOrIdKey()).second).longValue();
                SparseArray sparseArray = (SparseArray) hashMap.get(Long.valueOf(longValue));
                SparseArray sparseArray2 = sparseArray;
                if (sparseArray == null) {
                    sparseArray2 = new SparseArray();
                    hashMap.put(Long.valueOf(longValue), sparseArray2);
                }
                sparseArray2.put(suggestContactData2.getSocialNetworkId(), suggestContactData2.getProfileId());
            }
        });
        return hashMap;
    }

    private static boolean isSocialNetIdBetweenRange(int i) {
        return i > 0 && i <= 10;
    }
}
