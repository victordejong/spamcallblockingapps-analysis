package com.callapp.contacts.loader;

import android.graphics.Color;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.TwilioTrustedCommData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import java.io.Serializable;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/TwilioTrustedCommLoader.class */
public class TwilioTrustedCommLoader extends SimpleContactLoader implements NetworkDataLoader {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/TwilioTrustedCommLoader$JWTTokens.class */
    public static class JWTTokens implements Serializable {
        @JsonProperty("call_info_token")
        private String callInfoToken;
        @JsonProperty("directory_token")
        private String directoryToken;
        @JsonProperty("exp")
        private Date exp;

        private JWTTokens() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            JWTTokens jWTTokens = (JWTTokens) obj;
            if (Objects.equals(this.exp, jWTTokens.exp) && Objects.equals(this.directoryToken, jWTTokens.directoryToken)) {
                return Objects.equals(this.callInfoToken, jWTTokens.callInfoToken);
            }
            return false;
        }

        public String getCallInfoToken() {
            return this.callInfoToken;
        }

        public String getDirectoryToken() {
            return this.directoryToken;
        }

        public Date getExp() {
            return this.exp;
        }

        public int hashCode() {
            Date date = this.exp;
            int i = 0;
            int hashCode = date != null ? date.hashCode() : 0;
            String str = this.directoryToken;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.callInfoToken;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }
    }

    private void a(LoadContext loadContext, TwilioTrustedCommData twilioTrustedCommData) {
        final ContactData contactData = loadContext.f14535a;
        contactData.setTwilioTrustedCommData(twilioTrustedCommData);
        Set<ContactField> set = loadContext.f14536b;
        MultiTaskRunner b2 = loadContext.b();
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.TwilioTrustedCommLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.TwilioTrustedCommLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.resetPhotoWithoutFiringAndUpdating();
                    contactData.updatePhoto();
                }
            });
        }
        loadContext.a(b2, false);
    }

    private JWTTokens getJWTToken() {
        JWTTokens jWTTokens = (JWTTokens) CacheManager.get().b(JWTTokens.class, "TWCpsTokens", false);
        if (jWTTokens != null) {
            return jWTTokens;
        }
        String str = Prefs.aR.get();
        JWTTokens jWTTokens2 = jWTTokens;
        if (StringUtils.b((CharSequence) str)) {
            ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JWTTokens.class);
            HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(String.format("%s%s?", HttpUtils.getCallappServerPrefix(), "twcpsjwttoken") + "myp=" + UrlUtils.a(str) + "&tk=" + Prefs.aV.get());
            httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
            HttpUtils.b(httpRequestParamsBuilder.a());
            JWTTokens jWTTokens3 = (JWTTokens) classParserHttpResponseHandler.getResult();
            if (jWTTokens3 == null || !StringUtils.b((CharSequence) jWTTokens3.getCallInfoToken()) || !StringUtils.b((CharSequence) jWTTokens3.getDirectoryToken())) {
                CLog.a(TwilioTrustedCommLoader.class, "Bad JWTToken: ".concat(String.valueOf(jWTTokens3)));
                jWTTokens2 = jWTTokens;
            } else {
                jWTTokens2 = jWTTokens;
                if (jWTTokens3.getExp() != null) {
                    long a2 = DateUtils.a(new Date(), jWTTokens3.getExp(), TimeUnit.MINUTES);
                    if (a2 < 1) {
                        return jWTTokens;
                    }
                    try {
                        CacheManager.get().b(JWTTokens.class, "TWCpsTokens", jWTTokens3, (int) (a2 * 0.85d));
                    } catch (Exception e) {
                        CLog.a(TwilioTrustedCommLoader.class, e);
                    }
                    jWTTokens2 = jWTTokens3;
                }
            }
        }
        return jWTTokens2;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        if (Prefs.aT.get().booleanValue() && CallAppRemoteConfigManager.get().c("twilioTrustedCommCPSEnabled") && loadContext.f14537c != null && CollectionUtils.a(loadContext.f14536b, ContactField.call)) {
            final ContactData contactData = loadContext.f14535a;
            synchronized (contactData.getLock(TwilioTrustedCommLoader.class)) {
                Phone phone = contactData.getPhone();
                if (!phone.isEmpty()) {
                    String a2 = phone.a();
                    JWTTokens jWTToken = getJWTToken();
                    if (!(jWTToken == null || jWTToken.getDirectoryToken() == null || jWTToken.getCallInfoToken() == null)) {
                        ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JsonNode.class);
                        HashMap hashMap = new HashMap();
                        hashMap.put("Accept", "application/json");
                        hashMap.put("Authorization", "Bearer " + jWTToken.getDirectoryToken());
                        hashMap.put("X-XCNAM-Sensitive-Phone-Number", a2);
                        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder("https://preview.twilio.com/TrustedComms/CPS");
                        httpRequestParamsBuilder.f16226a = hashMap;
                        httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                        HttpUtils.b(httpRequestParamsBuilder.a());
                        JsonNode jsonNode = (JsonNode) classParserHttpResponseHandler.getResult();
                        CLog.a(TwilioTrustedCommData.class, "CPS directory response code: " + classParserHttpResponseHandler.getResponseCode() + ", json: " + classParserHttpResponseHandler.getResult());
                        if (jsonNode != null) {
                            JsonNode jsonNode2 = jsonNode.get("cps_url");
                            if (jsonNode2 != null && !jsonNode2.isNull()) {
                                String asText = jsonNode2.asText();
                                if (!StringUtils.a((CharSequence) asText)) {
                                    classParserHttpResponseHandler.f16282b = null;
                                    hashMap.remove("X-XCNAM-Sensitive-Phone-Number");
                                    hashMap.put("Accept", "application/json");
                                    hashMap.put("Authorization", "Bearer " + jWTToken.getCallInfoToken());
                                    hashMap.put("X-XCNAM-Sensitive-Phone-Number-From", a2);
                                    hashMap.put("X-XCNAM-Sensitive-Phone-Number-To", Prefs.aR.get());
                                    HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder2 = new HttpRequestParams.HttpRequestParamsBuilder(asText);
                                    httpRequestParamsBuilder2.f16226a = hashMap;
                                    httpRequestParamsBuilder2.f16228c = classParserHttpResponseHandler;
                                    HttpUtils.b(httpRequestParamsBuilder2.a());
                                    JsonNode jsonNode3 = (JsonNode) classParserHttpResponseHandler.getResult();
                                    CLog.a(TwilioTrustedCommData.class, "CPS url response code: " + classParserHttpResponseHandler.getResponseCode() + ", json: " + classParserHttpResponseHandler.getResult());
                                    if (jsonNode3 != null) {
                                        JsonNode jsonNode4 = jsonNode3.get("caller");
                                        if (jsonNode4 != null && !jsonNode4.isNull()) {
                                            String asText2 = jsonNode4.asText();
                                            if (!StringUtils.a((CharSequence) asText2)) {
                                                TwilioTrustedCommData twilioTrustedCommData = new TwilioTrustedCommData(asText2);
                                                JsonNode jsonNode5 = jsonNode3.get("logo");
                                                if (jsonNode5 != null && !jsonNode5.isNull()) {
                                                    String asText3 = jsonNode5.asText();
                                                    if (StringUtils.b((CharSequence) asText3)) {
                                                        twilioTrustedCommData.setLogoUrl(asText3);
                                                    }
                                                }
                                                JsonNode jsonNode6 = jsonNode3.get("bg_color");
                                                if (jsonNode6 != null && !jsonNode6.isNull()) {
                                                    String asText4 = jsonNode6.asText();
                                                    if (StringUtils.b((CharSequence) asText4)) {
                                                        try {
                                                            twilioTrustedCommData.setLogoBgColor(Integer.valueOf(Color.parseColor(asText4)));
                                                        } catch (RuntimeException e) {
                                                            CLog.b(TwilioTrustedCommLoader.class, e);
                                                        }
                                                    }
                                                }
                                                a(loadContext, twilioTrustedCommData);
                                                JsonNode jsonNode7 = jsonNode3.get("reason");
                                                if (jsonNode7 != null && !jsonNode7.isNull()) {
                                                    String asText5 = jsonNode7.asText();
                                                    if (StringUtils.b((CharSequence) asText5)) {
                                                        twilioTrustedCommData.setCallReason(asText5);
                                                        new Task() { // from class: com.callapp.contacts.loader.TwilioTrustedCommLoader.3
                                                            @Override // com.callapp.contacts.manager.task.Task
                                                            public void doTask() {
                                                                contactData.updateCallReason();
                                                            }
                                                        }.execute();
                                                    }
                                                }
                                                CacheManager.get().a((Class<String>) TwilioTrustedCommData.class, contactData.getCacheKey(TwilioTrustedCommData.class), (String) twilioTrustedCommData);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b(LoadContext loadContext) {
        TwilioTrustedCommData twilioTrustedCommData = (TwilioTrustedCommData) CacheManager.get().b(TwilioTrustedCommData.class, loadContext.f14535a.getCacheKey(TwilioTrustedCommData.class), false);
        if (twilioTrustedCommData != null) {
            a(loadContext, twilioTrustedCommData);
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.call);
    }
}
