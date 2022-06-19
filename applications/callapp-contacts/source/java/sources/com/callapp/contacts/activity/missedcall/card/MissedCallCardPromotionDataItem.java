package com.callapp.contacts.activity.missedcall.card;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem.class */
public class MissedCallCardPromotionDataItem extends BaseAdapterItemData {

    /* renamed from: a */
    private String f23920a;

    /* renamed from: b */
    private String f23921b;

    /* renamed from: c */
    private int f23922c;

    /* renamed from: d */
    private String f23923d;

    /* renamed from: e */
    private String f23924e;

    /* renamed from: f */
    private String f23925f;

    /* renamed from: g */
    private String f23926g;

    /* renamed from: h */
    private String f23927h;

    public MissedCallCardPromotionDataItem(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7) {
        this.f23920a = str2;
        this.f23921b = str3;
        this.f23922c = i;
        this.f23923d = str;
        this.f23924e = str4;
        this.f23925f = str5;
        this.f23926g = str6;
        this.f23927h = str7;
    }

    public String getActionCta() {
        return this.f23926g;
    }

    public String getActionText() {
        return this.f23925f;
    }

    public String getId() {
        return this.f23923d;
    }

    public int getImage() {
        return this.f23922c;
    }

    public String getImgFromUrl() {
        return this.f23924e;
    }

    public String getMainTitle() {
        return this.f23920a;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return null;
    }

    public String getSubTitle() {
        return this.f23921b;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 20;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
