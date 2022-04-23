package com.callapp.contacts.manager;

import android.util.SparseArray;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.SuggestContactData;
import com.callapp.contacts.model.objectbox.SuggestContactData_;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.query.c;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/SuggestContactManager.class */
public class SuggestContactManager {
    public static SparseArray<String> a(long j) {
        final SparseArray<String> sparseArray = new SparseArray<>();
        CallAppApplication.get().getObjectBoxStore().d(SuggestContactData.class).e().a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f17100b, j)).a().a(new c<SuggestContactData>() { // from class: com.callapp.contacts.manager.SuggestContactManager.2
            @Override // io.objectbox.query.c
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

    public static void a(long j, int i, String str) {
        if (j != 0 && isSocialNetIdBetweenRange(i)) {
            CallAppApplication.get().getObjectBoxStore().d(SuggestContactData.class).e().a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f17100b, j)).a(SuggestContactData_.socialNetworkId, i).a(SuggestContactData_.profileId, str).a().f();
        }
    }

    public static void a(long j, int i, String str, String str2, String str3) {
        if (j != 0 && str != null && isSocialNetIdBetweenRange(i)) {
            a d2 = CallAppApplication.get().getObjectBoxStore().d(SuggestContactData.class);
            String str4 = str2;
            if (StringUtils.a((CharSequence) str2)) {
                str4 = "";
            }
            SuggestContactData suggestContactData = (SuggestContactData) d2.e().a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f17100b, j)).a(SuggestContactData_.socialNetworkId, i).a(SuggestContactData_.profileId, str).a(SuggestContactData_.userName, str4).a(SuggestContactData_.contactName, str3).a().a();
            SuggestContactData suggestContactData2 = suggestContactData;
            if (suggestContactData == null) {
                suggestContactData2 = new SuggestContactData();
            }
            suggestContactData2.setPhoneOrIdKey(ContactData.generateId(Phone.f17100b, j));
            suggestContactData2.setSocialNetworkId(i);
            suggestContactData2.setProfileId(str);
            suggestContactData2.setUserName(str4);
            suggestContactData2.setContactName(str3);
            d2.a((a) suggestContactData2);
        }
    }

    public static void b(long j) {
        CallAppApplication.get().getObjectBoxStore().d(SuggestContactData.class).e().a(SuggestContactData_.phoneOrIdKey, ContactData.generateId(Phone.f17100b, j)).a().f();
    }

    public static Map<Long, SparseArray<String>> getAllSuggestionMap() {
        final HashMap hashMap = new HashMap();
        CallAppApplication.get().getObjectBoxStore().d(SuggestContactData.class).e().a().a(new c<SuggestContactData>() { // from class: com.callapp.contacts.manager.SuggestContactManager.1
            @Override // io.objectbox.query.c
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
