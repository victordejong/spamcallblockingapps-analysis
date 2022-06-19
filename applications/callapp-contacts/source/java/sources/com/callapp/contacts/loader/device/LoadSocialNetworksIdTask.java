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

    /* renamed from: a */
    private final ContactData f25423a;

    public LoadSocialNetworksIdTask(ContactData contactData) {
        this.f25423a = contactData;
    }

    /* renamed from: a */
    public static void m28844a(ContactData contactData, boolean z) {
        contactData.assertDeviceDataExist();
        UserNegativePositiveData m28889a = UserPositiveNegativeManager.m28889a(contactData.getDeviceId(), contactData.getPhone());
        boolean z2 = false;
        if (m28889a != null) {
            ToMany<UserPositiveSocialData> userPositiveSocialData = m28889a.getUserPositiveSocialData();
            if (CollectionUtils.m26068b(userPositiveSocialData)) {
                Iterator<UserPositiveSocialData> it2 = userPositiveSocialData.iterator();
                while (it2.hasNext()) {
                    UserPositiveSocialData next = it2.next();
                    JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID();
                    jSONSocialNetworkID.setId(next.getProfileId());
                    jSONSocialNetworkID.setSure(next.isSure());
                    jSONSocialNetworkID.setFromDevice(true);
                    m28843a(contactData.getDeviceData(), Integer.valueOf(next.getSocialNetworkId()), jSONSocialNetworkID);
                }
                z2 = true;
            }
            SparseArray<Set<String>> sparseArray = new SparseArray<>();
            ToMany<UserNegativeSocialData> userNegativeSocialData = m28889a.getUserNegativeSocialData();
            if (CollectionUtils.m26068b(userNegativeSocialData)) {
                Iterator<UserNegativeSocialData> it3 = userNegativeSocialData.iterator();
                while (it3.hasNext()) {
                    UserNegativeSocialData next2 = it3.next();
                    Set<String> set = sparseArray.get(next2.getSocialNetworkId());
                    HashSet hashSet = set;
                    if (set == null) {
                        hashSet = new HashSet();
                        sparseArray.put(next2.getSocialNetworkId(), hashSet);
                    }
                    hashSet.add(next2.getProfileId());
                }
            }
            if (z && !contactData.getNegativesMap().equals(sparseArray)) {
                contactData.setNegativesMap(sparseArray);
                contactData.updateNegatives();
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (!z || !z2) {
            return;
        }
        contactData.updateSocialNetworkIds();
    }

    /* renamed from: a */
    private static void m28843a(DeviceData deviceData, Integer num, JSONSocialNetworkID jSONSocialNetworkID) {
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
        } else if (intValue != 10) {
        } else {
            deviceData.setVKId(jSONSocialNetworkID);
        }
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        m28844a(this.f25423a, true);
    }
}
