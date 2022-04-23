package com.callapp.contacts.loader.device;

import android.util.SparseArray;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DeviceData;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData;
import com.callapp.contacts.model.objectbox.UserNegativeSocialData;
import com.callapp.contacts.model.objectbox.UserPositiveSocialData;
import com.callapp.framework.util.CollectionUtils;
import io.objectbox.relation.ToMany;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadSocialNetworksIdTask.class */
public class LoadSocialNetworksIdTask extends Task {

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14631a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadSocialNetworksIdTask(ContactData contactData) {
        this.f14631a = contactData;
    }

    public static void a(ContactData contactData, boolean z) {
        contactData.assertDeviceDataExist();
        UserNegativePositiveData a2 = UserPositiveNegativeManager.a(contactData.getDeviceId(), contactData.getPhone());
        r8 = true;
        boolean z2 = false;
        if (a2 != null) {
            ToMany<UserPositiveSocialData> userPositiveSocialData = a2.getUserPositiveSocialData();
            if (CollectionUtils.b(userPositiveSocialData)) {
                Iterator<UserPositiveSocialData> it2 = userPositiveSocialData.iterator();
                while (it2.hasNext()) {
                    UserPositiveSocialData next = it2.next();
                    JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID();
                    jSONSocialNetworkID.setId(next.getProfileId());
                    jSONSocialNetworkID.setSure(next.isSure());
                    jSONSocialNetworkID.setFromDevice(true);
                    a(contactData.getDeviceData(), Integer.valueOf(next.getSocialNetworkId()), jSONSocialNetworkID);
                }
                z2 = true;
            }
            SparseArray<Set<String>> sparseArray = new SparseArray<>();
            ToMany<UserNegativeSocialData> userNegativeSocialData = a2.getUserNegativeSocialData();
            if (CollectionUtils.b(userNegativeSocialData)) {
                Iterator<UserNegativeSocialData> it3 = userNegativeSocialData.iterator();
                while (it3.hasNext()) {
                    UserNegativeSocialData next2 = it3.next();
                    Set<String> set = sparseArray.get(next2.getSocialNetworkId());
                    Set<String> set2 = set;
                    if (set == null) {
                        set2 = new HashSet<>();
                        sparseArray.put(next2.getSocialNetworkId(), set2);
                    }
                    set2.add(next2.getProfileId());
                }
            }
            if (z && !contactData.getNegativesMap().equals(sparseArray)) {
                contactData.setNegativesMap(sparseArray);
                contactData.updateNegatives();
            }
        } else {
            z2 = false;
        }
        if (z && z2) {
            contactData.updateSocialNetworkIds();
        }
    }

    private static void a(DeviceData deviceData, Integer num, JSONSocialNetworkID jSONSocialNetworkID) {
        int intValue = num.intValue();
        if (intValue == 1) {
            deviceData.setFacebookId(jSONSocialNetworkID);
        } else if (intValue == 4) {
            deviceData.setTwitterScreenName(jSONSocialNetworkID);
        } else if (intValue == 6) {
            deviceData.setFoursquareId(jSONSocialNetworkID);
        } else if (intValue == 7) {
            deviceData.setInstagramId(jSONSocialNetworkID);
        } else if (intValue == 9) {
            deviceData.setPinterestId(jSONSocialNetworkID);
        } else if (intValue == 10) {
            deviceData.setVKId(jSONSocialNetworkID);
        }
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        a(this.f14631a, true);
    }
}
