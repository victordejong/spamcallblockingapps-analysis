package com.callapp.contacts.activity.linkedaccounts;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/SocialConnectorData.class */
public class SocialConnectorData extends BaseViewTypeData {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13021a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13022b;

    /* renamed from: c  reason: collision with root package name */
    private final String f13023c;

    /* renamed from: d  reason: collision with root package name */
    private final String f13024d;
    private final RemoteAccountHelper e;

    public SocialConnectorData(RemoteAccountHelper remoteAccountHelper) {
        boolean isLoggedIn = remoteAccountHelper.isLoggedIn();
        this.f13021a = isLoggedIn;
        this.f13022b = RemoteAccountHelper.getSocialBadgeColoredResId(remoteAccountHelper.getApiConstantNetworkId());
        this.f13023c = remoteAccountHelper.getName();
        this.f13024d = isLoggedIn ? remoteAccountHelper.getUserName() : null;
        this.e = remoteAccountHelper;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SocialConnectorData socialConnectorData = (SocialConnectorData) obj;
        if (this.f13021a == socialConnectorData.f13021a && this.f13022b == socialConnectorData.f13022b && this.f13023c.equals(socialConnectorData.f13023c)) {
            return Objects.equals(this.f13024d, socialConnectorData.f13024d);
        }
        return false;
    }

    public RemoteAccountHelper getHelper() {
        return this.e;
    }

    public int getIconRes() {
        return this.f13022b;
    }

    public String getSocialNetworkName() {
        return this.f13023c;
    }

    public String getUserName() {
        return this.f13024d;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 17;
    }

    public int hashCode() {
        boolean z = this.f13021a;
        int i = this.f13022b;
        int hashCode = this.f13023c.hashCode();
        String str = this.f13024d;
        return ((((((z ? 1 : 0) * 31) + i) * 31) + hashCode) * 31) + (str != null ? str.hashCode() : 0);
    }

    public boolean isLoggedIn() {
        return this.f13021a;
    }
}
