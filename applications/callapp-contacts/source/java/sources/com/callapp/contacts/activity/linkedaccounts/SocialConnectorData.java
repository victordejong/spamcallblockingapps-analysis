package com.callapp.contacts.activity.linkedaccounts;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/SocialConnectorData.class */
public class SocialConnectorData extends BaseViewTypeData {

    /* renamed from: a */
    private final boolean f23218a;

    /* renamed from: b */
    private final int f23219b;

    /* renamed from: c */
    private final String f23220c;

    /* renamed from: d */
    private final String f23221d;

    /* renamed from: e */
    private final RemoteAccountHelper f23222e;

    public SocialConnectorData(RemoteAccountHelper remoteAccountHelper) {
        boolean isLoggedIn = remoteAccountHelper.isLoggedIn();
        this.f23218a = isLoggedIn;
        this.f23219b = RemoteAccountHelper.getSocialBadgeColoredResId(remoteAccountHelper.getApiConstantNetworkId());
        this.f23220c = remoteAccountHelper.getName();
        this.f23221d = isLoggedIn ? remoteAccountHelper.getUserName() : null;
        this.f23222e = remoteAccountHelper;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SocialConnectorData socialConnectorData = (SocialConnectorData) obj;
        if (this.f23218a != socialConnectorData.f23218a || this.f23219b != socialConnectorData.f23219b || !this.f23220c.equals(socialConnectorData.f23220c)) {
            return false;
        }
        return Objects.equals(this.f23221d, socialConnectorData.f23221d);
    }

    public RemoteAccountHelper getHelper() {
        return this.f23222e;
    }

    public int getIconRes() {
        return this.f23219b;
    }

    public String getSocialNetworkName() {
        return this.f23220c;
    }

    public String getUserName() {
        return this.f23221d;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 17;
    }

    public int hashCode() {
        boolean z = this.f23218a;
        int i = this.f23219b;
        int hashCode = this.f23220c.hashCode();
        String str = this.f23221d;
        return ((((((z ? 1 : 0) * 31) + i) * 31) + hashCode) * 31) + (str != null ? str.hashCode() : 0);
    }

    public boolean isLoggedIn() {
        return this.f23218a;
    }
}
