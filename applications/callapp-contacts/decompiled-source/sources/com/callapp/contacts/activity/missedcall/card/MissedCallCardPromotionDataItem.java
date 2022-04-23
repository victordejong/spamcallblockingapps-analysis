package com.callapp.contacts.activity.missedcall.card;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem.class */
public class MissedCallCardPromotionDataItem extends BaseAdapterItemData {

    /* renamed from: a  reason: collision with root package name */
    private String f13465a;

    /* renamed from: b  reason: collision with root package name */
    private String f13466b;

    /* renamed from: c  reason: collision with root package name */
    private int f13467c;

    /* renamed from: d  reason: collision with root package name */
    private String f13468d;
    private String e;
    private String f;
    private String g;
    private String h;

    public MissedCallCardPromotionDataItem(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7) {
        this.f13465a = str2;
        this.f13466b = str3;
        this.f13467c = i;
        this.f13468d = str;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
    }

    public String getActionCta() {
        return this.g;
    }

    public String getActionText() {
        return this.f;
    }

    public String getId() {
        return this.f13468d;
    }

    public int getImage() {
        return this.f13467c;
    }

    public String getImgFromUrl() {
        return this.e;
    }

    public String getMainTitle() {
        return this.f13465a;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return null;
    }

    public String getSubTitle() {
        return this.f13466b;
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
