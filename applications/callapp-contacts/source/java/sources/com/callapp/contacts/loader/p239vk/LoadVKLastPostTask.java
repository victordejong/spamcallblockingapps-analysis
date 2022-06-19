package com.callapp.contacts.loader.p239vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.contacts.model.contact.social.VKDataUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.p488vk.api.sdk.C17601b;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.p495d.C17648b;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callapp.contacts.loader.vk.LoadVKLastPostTask */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKLastPostTask.class */
public class LoadVKLastPostTask extends BaseSocialLoaderTask {
    public LoadVKLastPostTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
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
        VKDataUtils.setLatestPost(contactData, vKData, (String) vKHelper.m29251a(new RemoteAccountHelper.SocialCallable<String>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.9
            /* renamed from: b */
            public String mo29086a() {
                String str;
                JSONObject optJSONObject;
                JSONArray optJSONArray;
                try {
                    C17648b c17648b = new C17648b("wall.get", "5.90");
                    c17648b.m4851a("owner_id", id);
                    c17648b.m4851a("filter", "owner");
                    c17648b.m4852a("count", 5);
                    JSONObject jSONObject = (JSONObject) C17601b.m4887a(c17648b);
                    if (jSONObject != null && (optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE)) != null && (optJSONArray = optJSONObject.optJSONArray("items")) != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            str = optJSONArray.optJSONObject(i).optString("text");
                            if (StringUtils.m26045b((CharSequence) str)) {
                                break;
                            }
                        }
                    }
                } catch (VKApiException | IOException | InterruptedException e) {
                    CLog.m27611a(VKHelper.class, e.getMessage());
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
