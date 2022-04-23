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

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<Long, Pair<String, String>> f14607a = new LruCache<>(500);

    public static void a() {
        f14607a.evictAll();
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public void a(LoadContext loadContext) {
        String str;
        String str2;
        r11 = true;
        boolean z = false;
        if (CollectionUtils.a(loadContext.f14536b, ContactField.photoUrl)) {
            ContactData contactData = loadContext.f14535a;
            long deviceId = contactData.getDeviceId();
            if (deviceId != 0) {
                Pair<String, String> pair = f14607a.get(Long.valueOf(deviceId));
                Pair<String, String> pair2 = pair;
                if (pair == null) {
                    pair2 = ContactUtils.d(deviceId);
                }
                if (pair2 != null) {
                    str2 = StringUtils.a((CharSequence) pair2.first) ? null : (String) pair2.first;
                    str = StringUtils.a((CharSequence) pair2.second) ? null : (String) pair2.second;
                    if (StringUtils.b(str2, str)) {
                        str2 = null;
                    }
                } else {
                    str = null;
                    str2 = null;
                }
                if (!StringUtils.b(contactData.getDeviceData().getPhotoUrl(), str2)) {
                    contactData.getDeviceData().setPhotoUrl(str2);
                    z = true;
                }
                if (!StringUtils.b(contactData.getDeviceData().getThumbnailUrl(), str)) {
                    contactData.getDeviceData().setThumbnailUrl(str);
                }
                if (z) {
                    contactData.updatePhoto();
                }
                f14607a.put(Long.valueOf(deviceId), Pair.create(str2, str));
            }
        }
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
