package com.callapp.contacts.loader.social.facebook;

import android.os.Bundle;
import android.util.Pair;
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
import com.callapp.framework.util.StringUtils;
import com.facebook.AccessToken;
import com.facebook.EnumC10352k;
import com.facebook.GraphRequest;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/LoadFbLastPostTask.class */
class LoadFbLastPostTask extends BaseSocialLoaderTask {
    public LoadFbLastPostTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
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
        String str = (String) facebookHelper.m29251a(new RemoteAccountHelper.SocialCallable<String>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.11
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            public final /* synthetic */ String mo29086a() {
                boolean z;
                Date date;
                boolean z2;
                String str2;
                facebookHelper.m29247a(UsageCounter.facebookRequests, CallAppApplication.get().getResources().getInteger(2131427354), CallAppApplication.get().getResources().getInteger(2131427355), true);
                Bundle bundle = new Bundle();
                bundle.putString("fields", "message,attachments{unshimmed_url},updated_time");
                bundle.putInt("limit", 10);
                JSONObject jSONObject = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), id + "/feed", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
                String str3 = null;
                if (jSONObject != null) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("data");
                    if (optJSONArray != null) {
                        int i = 0;
                        while (true) {
                            if (i >= optJSONArray.length()) {
                                break;
                            }
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("message");
                                if (StringUtils.m26045b((CharSequence) optString)) {
                                    String optString2 = optJSONObject.optString("updated_time");
                                    if (StringUtils.m26045b((CharSequence) optString2)) {
                                        date = FacebookHelper.m29212b((Date) null, optString2);
                                        if (date != null) {
                                            str3 = optString;
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                            i++;
                        }
                        z = true;
                    }
                    date = null;
                    z = true;
                } else {
                    date = null;
                    z = false;
                    str3 = null;
                }
                String str4 = str3;
                Date date2 = date;
                boolean z3 = z;
                if (!z) {
                    Pair m29215b = FacebookHelper.m29215b(facebookHelper, id);
                    str4 = str3;
                    date2 = date;
                    z3 = z;
                    if (m29215b != null) {
                        String str5 = (String) m29215b.first;
                        Date date3 = (Date) m29215b.second;
                        str4 = str5;
                        date2 = date3;
                        z3 = z;
                        if (date3 != null) {
                            str4 = str5;
                            date2 = date3;
                            z3 = z;
                            if (StringUtils.m26045b((CharSequence) str5)) {
                                z3 = true;
                                date2 = date3;
                                str4 = str5;
                            }
                        }
                    }
                }
                if (z3 || jSONObject == null || !jSONObject.has("data")) {
                    z2 = z3;
                    str2 = str4;
                } else {
                    JSONArray optJSONArray2 = jSONObject.optJSONArray("data");
                    str2 = str4;
                    z2 = true;
                    if (optJSONArray2 != null) {
                        int i2 = 0;
                        boolean z4 = false;
                        while (true) {
                            boolean z5 = z4;
                            str2 = str4;
                            z2 = true;
                            if (i2 >= optJSONArray2.length()) {
                                break;
                            }
                            str2 = str4;
                            z2 = true;
                            if (z5) {
                                break;
                            }
                            JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i2);
                            String str6 = str4;
                            boolean z6 = z5;
                            if (optJSONObject2 != null) {
                                str6 = str4;
                                z6 = z5;
                                if (optJSONObject2.has("attachments")) {
                                    JSONObject optJSONObject3 = optJSONObject2.optJSONObject("attachments");
                                    str6 = str4;
                                    z6 = z5;
                                    if (optJSONObject3 != null) {
                                        str6 = str4;
                                        z6 = z5;
                                        if (optJSONObject3.has("data")) {
                                            JSONArray optJSONArray3 = optJSONObject3.optJSONArray("data");
                                            str6 = str4;
                                            z6 = z5;
                                            if (optJSONArray3 != null) {
                                                int i3 = 0;
                                                while (true) {
                                                    str6 = str4;
                                                    z6 = z5;
                                                    if (i3 >= optJSONArray3.length()) {
                                                        break;
                                                    }
                                                    JSONObject optJSONObject4 = optJSONArray3.optJSONObject(i3);
                                                    if (optJSONObject4 != null && optJSONObject4.has("unshimmed_url")) {
                                                        String optString3 = optJSONObject4.optString("unshimmed_url");
                                                        if (StringUtils.m26045b((CharSequence) optString3) && optJSONObject2.has("updated_time")) {
                                                            String optString4 = optJSONObject2.optString("updated_time");
                                                            if (StringUtils.m26045b((CharSequence) optString4)) {
                                                                if (FacebookHelper.m29212b(date2, optString4) != null) {
                                                                    str4 = optString3;
                                                                }
                                                                z6 = true;
                                                                str6 = str4;
                                                            }
                                                        }
                                                    }
                                                    i3++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            i2++;
                            str4 = str6;
                            z4 = z6;
                        }
                    }
                }
                String str7 = str2;
                if (StringUtils.m26059a((CharSequence) str2)) {
                    str7 = str2;
                    if (z2) {
                        str7 = "";
                    }
                }
                return str7;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "fb_user_self_wall_post_" + id;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427356;
            }
        }, String.class);
        String str2 = str;
        if (StringUtils.m26059a((CharSequence) str)) {
            str2 = null;
        }
        FacebookDataUtils.setLatestPost(contactData, facebookData, str2);
    }
}
