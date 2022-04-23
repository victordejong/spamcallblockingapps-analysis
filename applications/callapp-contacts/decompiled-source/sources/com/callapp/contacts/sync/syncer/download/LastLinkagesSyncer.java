package com.callapp.contacts.sync.syncer.download;

import com.callapp.common.model.json.JSONContact;
import com.callapp.contacts.util.http.HttpUtils;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/download/LastLinkagesSyncer.class */
public class LastLinkagesSyncer extends DownloadSyncer {

    /* renamed from: a  reason: collision with root package name */
    private long f15813a;

    static /* synthetic */ Map a(JSONContact jSONContact) {
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

    static /* synthetic */ Map b(JSONContact jSONContact) {
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

            /* renamed from: a  reason: collision with root package name */
            public JsonParser f15814a = null;

            /* renamed from: b  reason: collision with root package name */
            public ObjectMapper f15815b = new ObjectMapper();

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r10v0 */
            /* JADX WARN: Type inference failed for: r10v1 */
            /* JADX WARN: Type inference failed for: r10v2 */
            /* JADX WARN: Type inference failed for: r10v3 */
            /* JADX WARN: Type inference failed for: r10v4 */
            /* JADX WARN: Type inference failed for: r12v0 */
            /* JADX WARN: Type inference failed for: r12v1, types: [long] */
            /* JADX WARN: Type inference failed for: r12v2, types: [long] */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void a(java.lang.String r8, okhttp3.Response r9) throws java.io.IOException {
                /*
                    Method dump skipped, instructions count: 808
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.syncer.download.LastLinkagesSyncer.AnonymousClass1.a(java.lang.String, okhttp3.Response):void");
            }

            @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
            public final void b(String str, Response response) throws IOException {
            }
        };
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer
    public String getMethodName() {
        return "ul";
    }

    @Override // com.callapp.contacts.sync.syncer.download.DownloadSyncer, com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        if (shouldSync()) {
            this.f15813a = System.currentTimeMillis();
            super.onSyncStart();
        }
    }
}
