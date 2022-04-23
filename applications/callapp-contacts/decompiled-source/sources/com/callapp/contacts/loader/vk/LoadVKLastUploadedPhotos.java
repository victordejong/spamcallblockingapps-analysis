package com.callapp.contacts.loader.vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.contacts.model.contact.social.VKDataUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.vk.api.sdk.d.b;
import com.vk.api.sdk.exceptions.VKApiException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos.class */
public class LoadVKLastUploadedPhotos extends BaseSocialLoaderTask {
    public LoadVKLastUploadedPhotos(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        VKData vKData = contactData.getVKData();
        if (vKData != null) {
            final VKHelper vKHelper = VKHelper.get();
            final String id = this.f14738b.getId();
            ArrayList arrayList = (ArrayList) vKHelper.a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.6
                /* renamed from: b */
                public ArrayList a() {
                    ArrayList arrayList2;
                    Exception e;
                    JSONObject jSONObject;
                    try {
                        b bVar = new b("photos.get", "5.90");
                        bVar.a("owner_id", id);
                        bVar.a("extended", 1);
                        bVar.a("photo_sizes", 1);
                        bVar.a("album_id", "wall");
                        jSONObject = (JSONObject) com.vk.api.sdk.b.a(bVar);
                        arrayList2 = null;
                    } catch (VKApiException | IOException | InterruptedException e2) {
                        e = e2;
                        arrayList2 = null;
                    }
                    if (jSONObject != null) {
                        JSONObject optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE);
                        arrayList2 = null;
                        if (optJSONObject != null) {
                            JSONArray optJSONArray = optJSONObject.optJSONArray("items");
                            arrayList2 = null;
                            if (optJSONArray != null) {
                                ArrayList arrayList3 = new ArrayList();
                                int i = 0;
                                while (true) {
                                    arrayList2 = arrayList3;
                                    try {
                                        if (i >= optJSONArray.length()) {
                                            break;
                                        }
                                        UploadedPhoto uploadedPhoto = new UploadedPhoto();
                                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                        String optString = optJSONObject2.optString("date");
                                        if (StringUtils.g(optString)) {
                                            Calendar instance = Calendar.getInstance();
                                            instance.setTimeInMillis(Long.parseLong(optString) * 1000);
                                            uploadedPhoto.setCreatedTime(instance.getTime());
                                        }
                                        JSONArray optJSONArray2 = optJSONObject2.optJSONArray("sizes");
                                        if (optJSONArray2 != null) {
                                            String str = null;
                                            int i2 = 0;
                                            for (int i3 = 0; i3 < optJSONArray2.length(); i3++) {
                                                JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i3);
                                                str = str;
                                                i2 = i2;
                                                if (optJSONObject3 != null) {
                                                    int optInt = optJSONObject3.optInt("width", 0);
                                                    str = str;
                                                    i2 = i2;
                                                    if (optInt > i2) {
                                                        String optString2 = optJSONObject3.optString("url");
                                                        str = str;
                                                        i2 = i2;
                                                        if (StringUtils.b((CharSequence) optString2)) {
                                                            str = optString2;
                                                            i2 = optInt;
                                                        }
                                                    }
                                                }
                                            }
                                            if (StringUtils.b((CharSequence) str)) {
                                                uploadedPhoto.setUrl(str);
                                                arrayList3.add(uploadedPhoto);
                                            }
                                        }
                                        i++;
                                    } catch (VKApiException e3) {
                                        e = e3;
                                        arrayList2 = arrayList3;
                                        CLog.a(VKHelper.class, e.getMessage());
                                        return arrayList2;
                                    } catch (IOException e4) {
                                        e = e4;
                                        arrayList2 = arrayList3;
                                        CLog.a(VKHelper.class, e.getMessage());
                                        return arrayList2;
                                    } catch (InterruptedException e5) {
                                        e = e5;
                                        arrayList2 = arrayList3;
                                        CLog.a(VKHelper.class, e.getMessage());
                                        return arrayList2;
                                    }
                                }
                            }
                        }
                    }
                    return arrayList2;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public String getCacheKey() {
                    return "vk_profile_uploaded_pictures_urls_" + id;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public int getCacheTtl() {
                    return 2131427412;
                }
            }, ArrayList.class);
            if (CollectionUtils.b(arrayList)) {
                VKDataUtils.setUploadedPhotosUrl(contactData, vKData, arrayList);
            }
        }
    }
}
