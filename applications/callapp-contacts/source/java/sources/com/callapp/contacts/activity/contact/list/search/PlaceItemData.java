package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/PlaceItemData.class */
public class PlaceItemData extends BaseAdapterItemData implements StickyHeaderSection {

    /* renamed from: a */
    private double f22769a;

    /* renamed from: b */
    private String f22770b;

    /* renamed from: c */
    private String f22771c;

    /* renamed from: d */
    private String f22772d;

    /* renamed from: e */
    private String f22773e;

    /* renamed from: f */
    private String f22774f;

    /* renamed from: g */
    private String f22775g;

    /* renamed from: h */
    private boolean f22776h;

    /* renamed from: i */
    private int f22777i;

    /* renamed from: j */
    private DataSource f22778j;

    public DataSource getDataSource() {
        return this.f22778j;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return PhoneManager.get().m28239a(this.f22773e);
    }

    public String getPlaceAddress() {
        return this.f22771c;
    }

    public String getPlaceHours() {
        return this.f22772d;
    }

    public String getPlaceImageUri() {
        return this.f22774f;
    }

    public double getPlaceRatingNumber() {
        return this.f22769a;
    }

    public String getPlaceType() {
        return this.f22770b;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f22777i;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 3;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public boolean isOpen() {
        return this.f22776h;
    }

    public void setDataSource(DataSource dataSource) {
        this.f22778j = dataSource;
    }

    public void setOpen(boolean z) {
        this.f22776h = z;
    }

    public void setPlaceAddress(String str) {
        this.f22771c = str;
    }

    public void setPlaceHours(String str) {
        this.f22772d = str;
    }

    public void setPlaceId(String str) {
        this.f22775g = str;
    }

    public void setPlaceImageUri(String str) {
        this.f22774f = str;
    }

    public void setPlaceName(String str) {
        this.displayName = str;
    }

    public void setPlacePhoneNumber(String str) {
        this.f22773e = str;
    }

    public void setPlaceRatingNumber(double d) {
        this.f22769a = d;
    }

    public void setPlaceType(String str) {
        this.f22770b = str;
    }

    public void setSectionId(int i) {
        this.f22777i = i;
    }
}
