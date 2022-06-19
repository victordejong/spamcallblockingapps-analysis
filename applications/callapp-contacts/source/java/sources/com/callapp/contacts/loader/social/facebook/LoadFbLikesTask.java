package com.callapp.contacts.loader.social.facebook;

import android.os.Bundle;
import com.callapp.common.model.json.JSONFBCategorizedType;
import com.callapp.common.model.json.JSONFBType;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.UsageCounter;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.FacebookData;
import com.callapp.contacts.model.contact.social.FacebookDataUtils;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.facebook.AccessToken;
import com.facebook.EnumC10352k;
import com.facebook.GraphRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/LoadFbLikesTask.class */
class LoadFbLikesTask extends BaseSocialLoaderTask {
    public LoadFbLikesTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
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
        List<JSONFBType> list = StringUtils.m26059a((CharSequence) id) ? null : (List) facebookHelper.m29251a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.15
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            public final /* synthetic */ List mo29086a() {
                facebookHelper.m29247a(UsageCounter.facebookRequests, CallAppApplication.get().getResources().getInteger(2131427354), CallAppApplication.get().getResources().getInteger(2131427355), true);
                List emptyList = Collections.emptyList();
                Bundle bundle = new Bundle();
                bundle.putString("fields", "category,name,id,created_time");
                bundle.putInt("limit", 10);
                JSONObject jSONObject = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), id + "/likes", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
                ArrayList arrayList = emptyList;
                if (jSONObject != null) {
                    ArrayList arrayList2 = new ArrayList();
                    JSONArray optJSONArray = jSONObject.optJSONArray("data");
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                JSONFBCategorizedType jSONFBCategorizedType = new JSONFBCategorizedType();
                                String optString = optJSONObject.optString("category");
                                if (StringUtils.m26045b((CharSequence) optString)) {
                                    jSONFBCategorizedType.setCategory(optString);
                                }
                                String optString2 = optJSONObject.optString("id");
                                if (StringUtils.m26045b((CharSequence) optString2)) {
                                    jSONFBCategorizedType.setId(optString2);
                                }
                                String optString3 = optJSONObject.optString("name");
                                if (StringUtils.m26045b((CharSequence) optString3)) {
                                    jSONFBCategorizedType.setName(optString3);
                                }
                                arrayList2.add(jSONFBCategorizedType);
                            }
                        }
                    }
                    arrayList = emptyList;
                    if (CollectionUtils.m26068b(arrayList2)) {
                        arrayList = arrayList2;
                    }
                }
                return arrayList;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "fb_userlikes_" + id;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427352;
            }
        }, List.class);
        String str = null;
        if (list != null) {
            str = null;
            if (!list.isEmpty()) {
                StringBuilder sb = new StringBuilder(Activities.getString(2131886893));
                boolean z = true;
                for (JSONFBType jSONFBType : list) {
                    if (!z) {
                        sb.append(", ");
                    } else {
                        z = false;
                    }
                    sb.append(jSONFBType.getName());
                }
                str = sb.toString();
            }
        }
        FacebookDataUtils.setLikes(contactData, facebookData, str);
    }
}
