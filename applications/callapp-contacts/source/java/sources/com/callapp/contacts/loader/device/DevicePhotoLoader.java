package com.callapp.contacts.loader.device;

import android.util.LruCache;
import android.util.Pair;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DevicePhotoLoader.class */
public class DevicePhotoLoader extends SimpleContactLoader {

    /* renamed from: a */
    private static LruCache<Long, Pair<String, String>> f25396a = new LruCache<>(500);

    /* renamed from: a */
    public static void m28851a() {
        f25396a.evictAll();
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public void mo27726a(LoadContext loadContext) {
        String str;
        String str2;
        boolean z = false;
        if (!CollectionUtils.m26073a(loadContext.f25323b, ContactField.photoUrl)) {
            return;
        }
        ContactData contactData = loadContext.f25322a;
        long deviceId = contactData.getDeviceId();
        if (deviceId == 0) {
            return;
        }
        Pair<String, String> pair = f25396a.get(Long.valueOf(deviceId));
        Pair<String, String> pair2 = pair;
        if (pair == null) {
            pair2 = ContactUtils.m28303d(deviceId);
        }
        if (pair2 != null) {
            str2 = StringUtils.m26059a((CharSequence) pair2.first) ? null : (String) pair2.first;
            str = StringUtils.m26059a((CharSequence) pair2.second) ? null : (String) pair2.second;
            if (StringUtils.m26042b(str2, str)) {
                str2 = null;
            }
        } else {
            str = null;
            str2 = null;
        }
        if (!StringUtils.m26042b(contactData.getDeviceData().getPhotoUrl(), str2)) {
            contactData.getDeviceData().setPhotoUrl(str2);
            z = true;
        }
        if (!StringUtils.m26042b(contactData.getDeviceData().getThumbnailUrl(), str)) {
            contactData.getDeviceData().setThumbnailUrl(str);
            z = true;
        }
        if (z) {
            contactData.updatePhoto();
        }
        f25396a.put(Long.valueOf(deviceId), Pair.create(str2, str));
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public Set<ContactField> getLoadedFields() {
        return ContactFieldEnumSets.PHOTO_FIELDS;
    }
}
