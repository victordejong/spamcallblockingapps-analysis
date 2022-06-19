package com.callapp.contacts.widget.referandearn;

import com.callapp.common.model.json.JSONReferAndEarnRewards;
import com.callapp.common.model.json.JSONReferAndEarnRewardsPremiumItem;
import com.callapp.common.model.json.JSONReferAndEarnRewardsStoreUnlockPremium;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.type.TypeReference;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002@\u0002X\u0083.¢\u0006\u0002\n��R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0002@\u0002X\u0083.¢\u0006\u0002\n��R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0002@\u0002X\u0083.¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;", "", "()V", "jSONReferAndEarnRewards", "", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "jSONReferAndEarnRewardsPremium", "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsPremiumItem;", "jsonReferAndEarnRewardsStoreUnlockPremium", "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsStoreUnlockPremium;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject.class */
public final class JSONReferAndEarnRewardsObject {
    public static final Companion Companion = new Companion(null);
    @JsonProperty("JSONReferAndEarnRewards")
    private List<? extends JSONReferAndEarnRewards> jSONReferAndEarnRewards;
    @JsonProperty("JSONReferAndEarnRewardsPremium")
    private List<? extends JSONReferAndEarnRewardsPremiumItem> jSONReferAndEarnRewardsPremium;
    @JsonProperty("JSONReferAndEarnRewardsStoreUnlockPremium")
    private List<? extends JSONReferAndEarnRewardsStoreUnlockPremium> jsonReferAndEarnRewardsStoreUnlockPremium;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;", "", "()V", "getJSONReferAndEarnRewardsData", "", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "getMaxRewards", "", "()Ljava/lang/Integer;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<JSONReferAndEarnRewards> getJSONReferAndEarnRewardsData() {
            Boolean enableInvitesDebugCatalog = Prefs.f26476eo.get();
            CallAppRemoteConfigManager callAppRemoteConfigManager = CallAppRemoteConfigManager.get();
            C18524p.m3843b(enableInvitesDebugCatalog, "enableInvitesDebugCatalog");
            String m28702a = callAppRemoteConfigManager.m28702a(enableInvitesDebugCatalog.booleanValue() ? "ReferAndEarnCatalogUrlDebug" : "ReferAndEarnCatalogUrl", enableInvitesDebugCatalog.booleanValue());
            if (StringUtils.m26045b((CharSequence) m28702a)) {
                try {
                    JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject = (JSONReferAndEarnRewardsObject) Parser.m26917a(m28702a, new TypeReference<JSONReferAndEarnRewardsObject>() { // from class: com.callapp.contacts.widget.referandearn.JSONReferAndEarnRewardsObject$Companion$getJSONReferAndEarnRewardsData$jsonReferAndEarnRewardsObject$1
                    });
                    Boolean bool = Prefs.f26339cJ.get();
                    C18524p.m3843b(bool, "Prefs.isPremium.get()");
                    if (!bool.booleanValue()) {
                        if (jSONReferAndEarnRewardsObject == null) {
                            return null;
                        }
                        return JSONReferAndEarnRewardsObject.access$getJSONReferAndEarnRewards$p(jSONReferAndEarnRewardsObject);
                    }
                    Boolean bool2 = Prefs.f26340cK.get();
                    C18524p.m3843b(bool2, "Prefs.hasFreeStoreSku.get()");
                    if (bool2.booleanValue()) {
                        if (jSONReferAndEarnRewardsObject == null) {
                            return null;
                        }
                        return JSONReferAndEarnRewardsObject.access$getJsonReferAndEarnRewardsStoreUnlockPremium$p(jSONReferAndEarnRewardsObject);
                    } else if (jSONReferAndEarnRewardsObject == null) {
                        return null;
                    } else {
                        return JSONReferAndEarnRewardsObject.access$getJSONReferAndEarnRewardsPremium$p(jSONReferAndEarnRewardsObject);
                    }
                } catch (Exception e) {
                    return null;
                }
            }
            return null;
        }

        public final Integer getMaxRewards() {
            List<JSONReferAndEarnRewards> jSONReferAndEarnRewardsData = getJSONReferAndEarnRewardsData();
            if (jSONReferAndEarnRewardsData != null) {
                Iterator<T> it2 = jSONReferAndEarnRewardsData.iterator();
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
                Integer valueOf = Integer.valueOf(((JSONReferAndEarnRewards) it2.next()).getKey());
                while (it2.hasNext()) {
                    Integer valueOf2 = Integer.valueOf(((JSONReferAndEarnRewards) it2.next()).getKey());
                    if (valueOf.compareTo(valueOf2) < 0) {
                        valueOf = valueOf2;
                    }
                }
                return valueOf;
            }
            return null;
        }
    }

    public static final /* synthetic */ List access$getJSONReferAndEarnRewards$p(JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject) {
        List<? extends JSONReferAndEarnRewards> list = jSONReferAndEarnRewardsObject.jSONReferAndEarnRewards;
        if (list == null) {
            C18524p.m3848a("jSONReferAndEarnRewards");
        }
        return list;
    }

    public static final /* synthetic */ List access$getJSONReferAndEarnRewardsPremium$p(JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject) {
        List<? extends JSONReferAndEarnRewardsPremiumItem> list = jSONReferAndEarnRewardsObject.jSONReferAndEarnRewardsPremium;
        if (list == null) {
            C18524p.m3848a("jSONReferAndEarnRewardsPremium");
        }
        return list;
    }

    public static final /* synthetic */ List access$getJsonReferAndEarnRewardsStoreUnlockPremium$p(JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject) {
        List<? extends JSONReferAndEarnRewardsStoreUnlockPremium> list = jSONReferAndEarnRewardsObject.jsonReferAndEarnRewardsStoreUnlockPremium;
        if (list == null) {
            C18524p.m3848a("jsonReferAndEarnRewardsStoreUnlockPremium");
        }
        return list;
    }

    public static final List<JSONReferAndEarnRewards> getJSONReferAndEarnRewardsData() {
        return Companion.getJSONReferAndEarnRewardsData();
    }

    public static final Integer getMaxRewards() {
        return Companion.getMaxRewards();
    }
}
