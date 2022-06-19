package com.callapp.contacts.loader.social.facebook;

import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.FacebookData;
import com.callapp.contacts.model.contact.social.FacebookDataUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.facebook.AccessToken;
import com.facebook.EnumC10352k;
import com.facebook.GraphRequest;
import java.text.ParseException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/LoadFbLastUploadedPhotos.class */
public class LoadFbLastUploadedPhotos extends BaseSocialLoaderTask {
    public LoadFbLastUploadedPhotos(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f25214a.f25322a;
        FacebookData facebookData = contactData.getFacebookData();
        if (facebookData == null) {
            return;
        }
        final FacebookHelper facebookHelper = FacebookHelper.get();
        final String id = this.f25533b.getId();
        ArrayList arrayList = (ArrayList) facebookHelper.m29251a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.10
            /* renamed from: b */
            public ArrayList mo29086a() {
                ParseException e;
                JSONObject optJSONObject;
                Bundle bundle = new Bundle();
                bundle.putString("fields", "images,created_time");
                JSONObject jSONObject = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), id + "/photos", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
                ArrayList arrayList2 = null;
                if (jSONObject != null) {
                    try {
                        JSONArray optJSONArray = jSONObject.optJSONArray("data");
                        arrayList2 = null;
                        if (optJSONArray != null) {
                            arrayList2 = new ArrayList();
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                try {
                                    UploadedPhoto uploadedPhoto = new UploadedPhoto();
                                    JSONObject jSONObject2 = (JSONObject) optJSONArray.opt(i);
                                    if (jSONObject2 != null) {
                                        String optString = jSONObject2.optString("created_time");
                                        if (StringUtils.m26045b((CharSequence) optString)) {
                                            uploadedPhoto.setCreatedTime(StringUtils.m26034d(optString));
                                            JSONArray optJSONArray2 = jSONObject2.optJSONArray("images");
                                            if (optJSONArray2 != null && (optJSONObject = optJSONArray2.optJSONObject(0)) != null) {
                                                String optString2 = optJSONObject.optString(Payload.SOURCE);
                                                if (StringUtils.m26045b((CharSequence) optString2)) {
                                                    uploadedPhoto.setUrl(optString2.trim().replaceAll(org.apache.commons.lang3.StringUtils.SPACE, "%20"));
                                                    arrayList2.add(uploadedPhoto);
                                                }
                                            }
                                        }
                                    }
                                } catch (ParseException e2) {
                                    e = e2;
                                    CLog.m27609a(FacebookHelper.class, e);
                                    return arrayList2;
                                }
                            }
                        }
                    } catch (ParseException e3) {
                        e = e3;
                        arrayList2 = null;
                    }
                }
                return arrayList2;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "fb_profile_uploaded_pictures_urls_" + id;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427357;
            }
        }, ArrayList.class);
        if (!CollectionUtils.m26068b(arrayList)) {
            return;
        }
        FacebookDataUtils.setUploadedPhotosUrl(contactData, facebookData, arrayList);
    }
}
