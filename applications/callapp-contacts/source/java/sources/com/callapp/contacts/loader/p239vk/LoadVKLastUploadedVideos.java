package com.callapp.contacts.loader.p239vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.VideoData;
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
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callapp.contacts.loader.vk.LoadVKLastUploadedVideos */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKLastUploadedVideos.class */
public class LoadVKLastUploadedVideos extends BaseSocialLoaderTask {
    public LoadVKLastUploadedVideos(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
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
        ArrayList arrayList = (ArrayList) vKHelper.m29251a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.10
            /* renamed from: b */
            public ArrayList mo29086a() {
                ArrayList arrayList2;
                ArrayList arrayList3;
                Exception e;
                C17648b c17648b = new C17648b("video.get", "5.90");
                c17648b.m4851a("owner_id", id);
                c17648b.m4852a("extended", 1);
                c17648b.m4852a("count", 5);
                try {
                    JSONObject jSONObject = (JSONObject) C17601b.m4887a(c17648b);
                    arrayList2 = null;
                    if (jSONObject != null) {
                        JSONObject optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE);
                        arrayList2 = null;
                        if (optJSONObject != null) {
                            JSONArray optJSONArray = optJSONObject.optJSONArray("items");
                            arrayList2 = null;
                            if (optJSONArray != null) {
                                arrayList3 = new ArrayList();
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    try {
                                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                        String optString = optJSONObject2.optString("player");
                                        if (StringUtils.m26045b((CharSequence) optString)) {
                                            VideoData videoData = new VideoData(VideoData.Types.Web);
                                            videoData.setVideoId(optString);
                                            videoData.setTitle(optJSONObject2.optString("title"));
                                            videoData.setThumbnailUrl(optJSONObject2.optString("photo_800"));
                                            arrayList3.add(videoData);
                                        }
                                    } catch (VKApiException e2) {
                                        e = e2;
                                        CLog.m27611a(VKHelper.class, e.getMessage());
                                        arrayList2 = arrayList3;
                                        return arrayList2;
                                    } catch (IOException e3) {
                                        e = e3;
                                        CLog.m27611a(VKHelper.class, e.getMessage());
                                        arrayList2 = arrayList3;
                                        return arrayList2;
                                    } catch (InterruptedException e4) {
                                        e = e4;
                                        CLog.m27611a(VKHelper.class, e.getMessage());
                                        arrayList2 = arrayList3;
                                        return arrayList2;
                                    }
                                }
                                arrayList2 = arrayList3;
                            }
                        }
                    }
                } catch (VKApiException e5) {
                    e = e5;
                    arrayList3 = null;
                } catch (IOException e6) {
                    e = e6;
                    arrayList3 = null;
                } catch (InterruptedException e7) {
                    e = e7;
                    arrayList3 = null;
                }
                return arrayList2;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "vk_profile_uploaded_videos_urls_" + id;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427412;
            }
        }, ArrayList.class);
        if (!CollectionUtils.m26068b(arrayList)) {
            return;
        }
        VKDataUtils.setUploadedVideosUrl(contactData, vKData, arrayList);
    }
}
