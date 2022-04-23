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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002@\u0002X\u0083.¢\u0006\u0002\n��R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0002@\u0002X\u0083.¢\u0006\u0002\n��R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0002@\u0002X\u0083.¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;", "", "()V", "jSONReferAndEarnRewards", "", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "jSONReferAndEarnRewardsPremium", "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsPremiumItem;", "jsonReferAndEarnRewardsStoreUnlockPremium", "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsStoreUnlockPremium;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject.class */
public final class JSONReferAndEarnRewardsObject {
    public static final Companion Companion = new Companion(null);
    @JsonProperty("JSONReferAndEarnRewards")
    private List<? extends JSONReferAndEarnRewards> jSONReferAndEarnRewards;
    @JsonProperty("JSONReferAndEarnRewardsPremium")
    private List<? extends JSONReferAndEarnRewardsPremiumItem> jSONReferAndEarnRewardsPremium;
    @JsonProperty("JSONReferAndEarnRewardsStoreUnlockPremium")
    private List<? extends JSONReferAndEarnRewardsStoreUnlockPremium> jsonReferAndEarnRewardsStoreUnlockPremium;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;", "", "()V", "getJSONReferAndEarnRewardsData", "", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "getMaxRewards", "", "()Ljava/lang/Integer;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<JSONReferAndEarnRewards> getJSONReferAndEarnRewardsData() {
            Boolean enableInvitesDebugCatalog = Prefs.eo.get();
            CallAppRemoteConfigManager callAppRemoteConfigManager = CallAppRemoteConfigManager.get();
            p.b(enableInvitesDebugCatalog, "enableInvitesDebugCatalog");
            String a2 = callAppRemoteConfigManager.a(enableInvitesDebugCatalog.booleanValue() ? "ReferAndEarnCatalogUrlDebug" : "ReferAndEarnCatalogUrl", enableInvitesDebugCatalog.booleanValue());
            if (!StringUtils.b((CharSequence) a2)) {
                return null;
            }
            try {
                JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject = (JSONReferAndEarnRewardsObject) Parser.a(a2, new TypeReference<JSONReferAndEarnRewardsObject>() { // from class: com.callapp.contacts.widget.referandearn.JSONReferAndEarnRewardsObject$Companion$getJSONReferAndEarnRewardsData$jsonReferAndEarnRewardsObject$1
                });
                Boolean bool = Prefs.cJ.get();
                p.b(bool, "Prefs.isPremium.get()");
                if (bool.booleanValue()) {
                    Boolean bool2 = Prefs.cK.get();
                    p.b(bool2, "Prefs.hasFreeStoreSku.get()");
                    if (bool2.booleanValue()) {
                        if (jSONReferAndEarnRewardsObject != null) {
                            return JSONReferAndEarnRewardsObject.access$getJsonReferAndEarnRewardsStoreUnlockPremium$p(jSONReferAndEarnRewardsObject);
                        }
                        return null;
                    } else if (jSONReferAndEarnRewardsObject != null) {
                        return JSONReferAndEarnRewardsObject.access$getJSONReferAndEarnRewardsPremium$p(jSONReferAndEarnRewardsObject);
                    } else {
                        return null;
                    }
                } else if (jSONReferAndEarnRewardsObject != null) {
                    return JSONReferAndEarnRewardsObject.access$getJSONReferAndEarnRewards$p(jSONReferAndEarnRewardsObject);
                } else {
                    return null;
                }
            } catch (Exception e) {
                return null;
            }
        }

        public final Integer getMaxRewards() {
            List<JSONReferAndEarnRewards> jSONReferAndEarnRewardsData = getJSONReferAndEarnRewardsData();
            if (jSONReferAndEarnRewardsData == null) {
                return null;
            }
            Iterator<T> it2 = jSONReferAndEarnRewardsData.iterator();
            if (it2.hasNext()) {
                Integer valueOf = Integer.valueOf(((JSONReferAndEarnRewards) it2.next()).getKey());
                while (it2.hasNext()) {
                    Integer valueOf2 = Integer.valueOf(((JSONReferAndEarnRewards) it2.next()).getKey());
                    if (valueOf.compareTo(valueOf2) < 0) {
                        valueOf = valueOf2;
                    }
                }
                return valueOf;
            }
            throw new NoSuchElementException();
        }
    }

    public static final /* synthetic */ List access$getJSONReferAndEarnRewards$p(JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject) {
        List<? extends JSONReferAndEarnRewards> list = jSONReferAndEarnRewardsObject.jSONReferAndEarnRewards;
        if (list == null) {
            p.a("jSONReferAndEarnRewards");
        }
        return list;
    }

    public static final /* synthetic */ List access$getJSONReferAndEarnRewardsPremium$p(JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject) {
        List<? extends JSONReferAndEarnRewardsPremiumItem> list = jSONReferAndEarnRewardsObject.jSONReferAndEarnRewardsPremium;
        if (list == null) {
            p.a("jSONReferAndEarnRewardsPremium");
        }
        return list;
    }

    public static final /* synthetic */ List access$getJsonReferAndEarnRewardsStoreUnlockPremium$p(JSONReferAndEarnRewardsObject jSONReferAndEarnRewardsObject) {
        List<? extends JSONReferAndEarnRewardsStoreUnlockPremium> list = jSONReferAndEarnRewardsObject.jsonReferAndEarnRewardsStoreUnlockPremium;
        if (list == null) {
            p.a("jsonReferAndEarnRewardsStoreUnlockPremium");
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
