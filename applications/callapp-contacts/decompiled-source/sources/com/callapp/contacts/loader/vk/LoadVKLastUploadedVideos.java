package com.callapp.contacts.loader.vk;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
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
import com.vk.api.sdk.d.b;
import com.vk.api.sdk.exceptions.VKApiException;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKLastUploadedVideos.class */
public class LoadVKLastUploadedVideos extends BaseSocialLoaderTask {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadVKLastUploadedVideos(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        VKData vKData = contactData.getVKData();
        if (vKData != null) {
            final VKHelper vKHelper = VKHelper.get();
            final String id = this.f14738b.getId();
            ArrayList arrayList = (ArrayList) vKHelper.a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.10
                /* renamed from: b */
                public ArrayList a() {
                    ArrayList arrayList2;
                    Exception e;
                    b bVar = new b("video.get", "5.90");
                    bVar.a("owner_id", id);
                    bVar.a("extended", 1);
                    bVar.a("count", 5);
                    try {
                        JSONObject jSONObject = (JSONObject) com.vk.api.sdk.b.a(bVar);
                        arrayList2 = null;
                        if (jSONObject != null) {
                            JSONObject optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE);
                            arrayList2 = null;
                            if (optJSONObject != null) {
                                JSONArray optJSONArray = optJSONObject.optJSONArray("items");
                                arrayList2 = null;
                                if (optJSONArray != null) {
                                    arrayList2 = new ArrayList();
                                    for (int i = 0; i < optJSONArray.length(); i++) {
                                        try {
                                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                            String optString = optJSONObject2.optString("player");
                                            if (StringUtils.b((CharSequence) optString)) {
                                                VideoData videoData = new VideoData(VideoData.Types.Web);
                                                videoData.setVideoId(optString);
                                                videoData.setTitle(optJSONObject2.optString("title"));
                                                videoData.setThumbnailUrl(optJSONObject2.optString("photo_800"));
                                                arrayList2.add(videoData);
                                            }
                                        } catch (VKApiException e2) {
                                            e = e2;
                                            CLog.a(VKHelper.class, e.getMessage());
                                            return arrayList2;
                                        } catch (IOException e3) {
                                            e = e3;
                                            CLog.a(VKHelper.class, e.getMessage());
                                            return arrayList2;
                                        } catch (InterruptedException e4) {
                                            e = e4;
                                            CLog.a(VKHelper.class, e.getMessage());
                                            return arrayList2;
                                        }
                                    }
                                    arrayList2 = arrayList2;
                                }
                            }
                        }
                    } catch (VKApiException e5) {
                        e = e5;
                        arrayList2 = null;
                    } catch (IOException e6) {
                        e = e6;
                        arrayList2 = null;
                    } catch (InterruptedException e7) {
                        e = e7;
                        arrayList2 = null;
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
            if (CollectionUtils.b(arrayList)) {
                VKDataUtils.setUploadedVideosUrl(contactData, vKData, arrayList);
            }
        }
    }
}
