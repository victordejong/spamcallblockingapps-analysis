package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/PlaceItemData.class */
public class PlaceItemData extends BaseAdapterItemData implements StickyHeaderSection {

    /* renamed from: a  reason: collision with root package name */
    private double f12747a;

    /* renamed from: b  reason: collision with root package name */
    private String f12748b;

    /* renamed from: c  reason: collision with root package name */
    private String f12749c;

    /* renamed from: d  reason: collision with root package name */
    private String f12750d;
    private String e;
    private String f;
    private String g;
    private boolean h;
    private int i;
    private DataSource j;

    public DataSource getDataSource() {
        return this.j;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return PhoneManager.get().a(this.e);
    }

    public String getPlaceAddress() {
        return this.f12749c;
    }

    public String getPlaceHours() {
        return this.f12750d;
    }

    public String getPlaceImageUri() {
        return this.f;
    }

    public double getPlaceRatingNumber() {
        return this.f12747a;
    }

    public String getPlaceType() {
        return this.f12748b;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.i;
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
        return this.h;
    }

    public void setDataSource(DataSource dataSource) {
        this.j = dataSource;
    }

    public void setOpen(boolean z) {
        this.h = z;
    }

    public void setPlaceAddress(String str) {
        this.f12749c = str;
    }

    public void setPlaceHours(String str) {
        this.f12750d = str;
    }

    public void setPlaceId(String str) {
        this.g = str;
    }

    public void setPlaceImageUri(String str) {
        this.f = str;
    }

    public void setPlaceName(String str) {
        this.displayName = str;
    }

    public void setPlacePhoneNumber(String str) {
        this.e = str;
    }

    public void setPlaceRatingNumber(double d2) {
        this.f12747a = d2;
    }

    public void setPlaceType(String str) {
        this.f12748b = str;
    }

    public void setSectionId(int i) {
        this.i = i;
    }
}
