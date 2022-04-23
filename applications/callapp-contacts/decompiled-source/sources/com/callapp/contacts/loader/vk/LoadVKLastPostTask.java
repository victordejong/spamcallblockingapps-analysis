package com.callapp.contacts.loader.vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.contacts.model.contact.social.VKDataUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.vk.api.sdk.d.b;
import com.vk.api.sdk.exceptions.VKApiException;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKLastPostTask.class */
public class LoadVKLastPostTask extends BaseSocialLoaderTask {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadVKLastPostTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        VKData vKData = contactData.getVKData();
        if (vKData != null) {
            final VKHelper vKHelper = VKHelper.get();
            final String id = this.f14738b.getId();
            VKDataUtils.setLatestPost(contactData, vKData, (String) vKHelper.a(new RemoteAccountHelper.SocialCallable<String>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.9
                /* renamed from: b */
                public String a() {
                    String str;
                    JSONObject optJSONObject;
                    JSONArray optJSONArray;
                    try {
                        b bVar = new b("wall.get", "5.90");
                        bVar.a("owner_id", id);
                        bVar.a("filter", "owner");
                        bVar.a("count", 5);
                        JSONObject jSONObject = (JSONObject) com.vk.api.sdk.b.a(bVar);
                        if (!(jSONObject == null || (optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE)) == null || (optJSONArray = optJSONObject.optJSONArray("items")) == null)) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                str = optJSONArray.optJSONObject(i).optString("text");
                                if (StringUtils.b((CharSequence) str)) {
                                    break;
                                }
                            }
                        }
                    } catch (VKApiException | IOException | InterruptedException e) {
                        CLog.a(VKHelper.class, e.getMessage());
                    }
                    str = null;
                    return str;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public String getCacheKey() {
                    return "vk_user_" + id;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public int getCacheTtl() {
                    return 2131427412;
                }
            }, String.class));
        }
    }
}
