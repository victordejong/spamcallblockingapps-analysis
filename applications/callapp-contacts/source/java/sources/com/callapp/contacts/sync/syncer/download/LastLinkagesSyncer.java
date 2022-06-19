package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.SuggestContactManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/LastLinkagesSyncer.class */
public class LastLinkagesSyncer extends DownloadSyncer {

    /* renamed from: a */
    private long f27647a;

    /* renamed from: a */
    static /* synthetic */ Map m27723a(JSONContact jSONContact) {
        HashMap hashMap = new HashMap();
        if (jSONContact != null) {
            hashMap.put(1, jSONContact.getFacebookID());
            hashMap.put(10, jSONContact.getVkID());
            hashMap.put(3, jSONContact.getLinkedinPubProfileUrl());
            hashMap.put(2, jSONContact.getLinkedinID());
            hashMap.put(4, jSONContact.getTwitterScreenName());
            hashMap.put(5, jSONContact.getGooglePlusID());
            hashMap.put(6, jSONContact.getFoursquareID());
            hashMap.put(7, jSONContact.getInstagramID());
            hashMap.put(8, jSONContact.getXingID());
            hashMap.put(9, jSONContact.getPinterestID());
        }
        return hashMap;
    }

    /* renamed from: b */
    static /* synthetic */ Map m27721b(JSONContact jSONContact) {
        HashMap hashMap = new HashMap();
        if (jSONContact != null) {
            hashMap.put(1, jSONContact.getFacebookNegatives());
            hashMap.put(10, jSONContact.getVkNegatives());
            hashMap.put(2, jSONContact.getLinkedinNegatives());
            hashMap.put(4, jSONContact.getTwitterNegatives());
            hashMap.put(5, jSONContact.getGooglePlusNegatives());
            hashMap.put(6, jSONContact.getFoursquareNegatives());
            hashMap.put(7, jSONContact.getInstagramNegatives());
            hashMap.put(8, jSONContact.getXingNegatives());
            hashMap.put(9, jSONContact.getPinterestNegatives());
        }
        return hashMap;
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public HttpUtils.HttpResponseHandler getHandler() {
        return new HttpUtils.HttpResponseHandler() { // from class: com.callapp.contacts.sync.syncer.download.LastLinkagesSyncer.1

            /* renamed from: a */
            public JsonParser f27648a = null;

            /* renamed from: b */
            public ObjectMapper f27649b = new ObjectMapper();

            /* JADX WARN: Type inference failed for: r0v141, types: [long] */
            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: a */
            public final void mo26911a(String str, Response response) throws IOException {
                char c;
                RemoteAccountHelper remoteAccountHelper;
                try {
                    if (response != null) {
                        try {
                        } catch (IOException e) {
                            CLog.m27609a(LastLinkagesSyncer.class, e);
                        }
                        if (response.body() != null && response.body().byteStream() != null) {
                            this.f27649b.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                            this.f27649b.configure(JsonParser.Feature.AUTO_CLOSE_SOURCE, true);
                            JsonParser createParser = this.f27649b.getFactory().createParser(response.body().byteStream());
                            this.f27648a = createParser;
                            if (createParser == null) {
                                IoUtils.m27514a(createParser);
                                LastLinkagesSyncer.this.lastSyncPref.set(Long.valueOf(LastLinkagesSyncer.this.syncContext.startDate));
                            }
                            JsonToken nextToken = createParser.nextToken();
                            while (nextToken != null && nextToken != JsonToken.START_ARRAY) {
                                nextToken = this.f27648a.nextToken();
                            }
                            if (nextToken != null) {
                                while (this.f27648a.nextToken() == JsonToken.START_OBJECT) {
                                    JSONContact jSONContact = (JSONContact) this.f27649b.readValue(this.f27648a, JSONContact.class);
                                    if (CollectionUtils.m26068b(jSONContact.getPhoneNumbers()) && (jSONContact.hasAnyNegatives() || jSONContact.hasAnySocialIDs())) {
                                        Iterator<JSONPhoneNumber> it2 = jSONContact.getPhoneNumbers().iterator();
                                        char c2 = 0;
                                        while (true) {
                                            c = c2;
                                            if (!it2.hasNext()) {
                                                break;
                                            }
                                            try {
                                                c = DeviceIdLoader.m28854a(PhoneManager.get().m28239a(it2.next().getPhoneNumber()), 0);
                                                c2 = c;
                                            } catch (DeviceIdLoader.OperationFailedException e2) {
                                            }
                                            if (c != 0) {
                                                break;
                                            }
                                        }
                                        Map m27723a = LastLinkagesSyncer.m27723a(jSONContact);
                                        for (Integer num : m27723a.keySet()) {
                                            int intValue = num.intValue();
                                            JSONSocialNetworkID jSONSocialNetworkID = (JSONSocialNetworkID) m27723a.get(Integer.valueOf(intValue));
                                            if (jSONSocialNetworkID != null && StringUtils.m26045b((CharSequence) jSONSocialNetworkID.getId())) {
                                                if (c != 0) {
                                                    SuggestContactManager.m28473a(c, intValue, jSONSocialNetworkID.getId());
                                                    UserPositiveNegativeManager.m28885a(c, null, intValue, jSONSocialNetworkID.getId(), true);
                                                } else {
                                                    for (JSONPhoneNumber jSONPhoneNumber : jSONContact.getPhoneNumbers()) {
                                                        SuggestContactManager.m28473a(c, intValue, jSONSocialNetworkID.getId());
                                                        UserPositiveNegativeManager.m28885a(c, PhoneManager.get().m28239a(jSONPhoneNumber.getPhoneNumber()).m26101a(), intValue, jSONSocialNetworkID.getId(), true);
                                                    }
                                                }
                                            }
                                        }
                                        Map m27721b = LastLinkagesSyncer.m27721b(jSONContact);
                                        for (Integer num2 : m27721b.keySet()) {
                                            int intValue2 = num2.intValue();
                                            List<String> list = (List) m27721b.get(Integer.valueOf(intValue2));
                                            if (CollectionUtils.m26068b(list)) {
                                                if (list.contains("DONTHAVE")) {
                                                    if (c != 0) {
                                                        UserPositiveNegativeManager.m28887a(c, (String) null, intValue2);
                                                    } else {
                                                        for (JSONPhoneNumber jSONPhoneNumber2 : jSONContact.getPhoneNumbers()) {
                                                            UserPositiveNegativeManager.m28887a(c, PhoneManager.get().m28239a(jSONPhoneNumber2.getPhoneNumber()).m26101a(), intValue2);
                                                        }
                                                    }
                                                }
                                                for (String str2 : list) {
                                                    if (!StringUtils.m26042b(str2, "DONTHAVE") && (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(intValue2)) != null) {
                                                        if (c != 0) {
                                                            remoteAccountHelper.m29255a(c, (String) null, str2);
                                                        } else {
                                                            for (JSONPhoneNumber jSONPhoneNumber3 : jSONContact.getPhoneNumbers()) {
                                                                remoteAccountHelper.m29255a(c, PhoneManager.get().m28239a(jSONPhoneNumber3.getPhoneNumber()).m26101a(), str2);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            IoUtils.m27514a(this.f27648a);
                            LastLinkagesSyncer.this.lastSyncPref.set(Long.valueOf(LastLinkagesSyncer.this.syncContext.startDate));
                        }
                    }
                    CLog.m27588c(LastLinkagesSyncer.class, "failed to get user's old uploaded linkages");
                    IoUtils.m27514a(this.f27648a);
                    LastLinkagesSyncer.this.lastSyncPref.set(Long.valueOf(LastLinkagesSyncer.this.syncContext.startDate));
                } catch (Throwable th) {
                    IoUtils.m27514a(this.f27648a);
                    LastLinkagesSyncer.this.lastSyncPref.set(Long.valueOf(LastLinkagesSyncer.this.syncContext.startDate));
                    throw th;
                }
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /* renamed from: b */
            public final void mo26961b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "ul";
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer, com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        if (!shouldSync()) {
            return;
        }
        this.f27647a = System.currentTimeMillis();
        super.onSyncStart();
    }
}
