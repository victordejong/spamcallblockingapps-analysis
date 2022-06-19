package com.callapp.contacts.loader.p239vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
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
import com.p488vk.api.sdk.C17601b;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.p495d.C17648b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callapp.contacts.loader.vk.LoadVKLastUploadedPhotos */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos.class */
public class LoadVKLastUploadedPhotos extends BaseSocialLoaderTask {
    public LoadVKLastUploadedPhotos(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f25214a.f25322a;
        VKData vKData = contactData.getVKData();
        if (vKData == null) {
            return;
        }
        final VKHelper vKHelper = VKHelper.get();
        final String id = this.f25533b.getId();
        ArrayList arrayList = (ArrayList) vKHelper.m29251a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.6
            /* renamed from: b */
            public ArrayList mo29086a() {
                ArrayList arrayList2;
                ArrayList arrayList3;
                Exception e;
                JSONObject jSONObject;
                try {
                    C17648b c17648b = new C17648b("photos.get", "5.90");
                    c17648b.m4851a("owner_id", id);
                    c17648b.m4852a("extended", 1);
                    c17648b.m4852a("photo_sizes", 1);
                    c17648b.m4851a("album_id", "wall");
                    jSONObject = (JSONObject) C17601b.m4887a(c17648b);
                    arrayList2 = null;
                } catch (VKApiException | IOException | InterruptedException e2) {
                    e = e2;
                    arrayList3 = null;
                }
                if (jSONObject != null) {
                    JSONObject optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE);
                    arrayList2 = null;
                    if (optJSONObject != null) {
                        JSONArray optJSONArray = optJSONObject.optJSONArray("items");
                        arrayList2 = null;
                        if (optJSONArray != null) {
                            ArrayList arrayList4 = new ArrayList();
                            int i = 0;
                            while (true) {
                                arrayList3 = arrayList4;
                                try {
                                    if (i >= optJSONArray.length()) {
                                        break;
                                    }
                                    UploadedPhoto uploadedPhoto = new UploadedPhoto();
                                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                    String optString = optJSONObject2.optString("date");
                                    if (StringUtils.m26026g(optString)) {
                                        Calendar calendar = Calendar.getInstance();
                                        calendar.setTimeInMillis(Long.parseLong(optString) * 1000);
                                        uploadedPhoto.setCreatedTime(calendar.getTime());
                                    }
                                    JSONArray optJSONArray2 = optJSONObject2.optJSONArray("sizes");
                                    if (optJSONArray2 != null) {
                                        String str = null;
                                        int i2 = 0;
                                        int i3 = 0;
                                        while (true) {
                                            int i4 = i3;
                                            if (i2 >= optJSONArray2.length()) {
                                                break;
                                            }
                                            JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i2);
                                            String str2 = str;
                                            int i5 = i4;
                                            if (optJSONObject3 != null) {
                                                int optInt = optJSONObject3.optInt("width", 0);
                                                str2 = str;
                                                i5 = i4;
                                                if (optInt > i4) {
                                                    String optString2 = optJSONObject3.optString("url");
                                                    str2 = str;
                                                    i5 = i4;
                                                    if (StringUtils.m26045b((CharSequence) optString2)) {
                                                        str2 = optString2;
                                                        i5 = optInt;
                                                    }
                                                }
                                            }
                                            i2++;
                                            str = str2;
                                            i3 = i5;
                                        }
                                        if (StringUtils.m26045b((CharSequence) str)) {
                                            uploadedPhoto.setUrl(str);
                                            arrayList4.add(uploadedPhoto);
                                        }
                                    }
                                    i++;
                                } catch (VKApiException e3) {
                                    e = e3;
                                    arrayList3 = arrayList4;
                                    CLog.m27611a(VKHelper.class, e.getMessage());
                                    arrayList2 = arrayList3;
                                    return arrayList2;
                                } catch (IOException e4) {
                                    e = e4;
                                    arrayList3 = arrayList4;
                                    CLog.m27611a(VKHelper.class, e.getMessage());
                                    arrayList2 = arrayList3;
                                    return arrayList2;
                                } catch (InterruptedException e5) {
                                    e = e5;
                                    arrayList3 = arrayList4;
                                    CLog.m27611a(VKHelper.class, e.getMessage());
                                    arrayList2 = arrayList3;
                                    return arrayList2;
                                }
                            }
                            arrayList2 = arrayList3;
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
        if (!CollectionUtils.m26068b(arrayList)) {
            return;
        }
        VKDataUtils.setUploadedPhotosUrl(contactData, vKData, arrayList);
    }
}
