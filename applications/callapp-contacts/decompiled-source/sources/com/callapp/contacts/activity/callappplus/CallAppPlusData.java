package com.callapp.contacts.activity.callappplus;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusData.class */
public class CallAppPlusData extends MemoryContactItem {

    /* renamed from: a  reason: collision with root package name */
    public final ExtractedInfo f11269a;

    /* renamed from: b  reason: collision with root package name */
    public final SparseIntArray f11270b;
    private Drawable i;
    private int j;
    private String k;
    private String l;
    private int m;
    private final boolean n;
    private final String o;

    public CallAppPlusData(ExtractedInfo extractedInfo) {
        this.f11270b = new SparseIntArray();
        this.f11269a = extractedInfo;
        this.o = null;
        this.n = false;
        if (extractedInfo != null) {
            this.f12645c = extractedInfo.isStarred();
        }
    }

    public CallAppPlusData(String str) {
        this.f11270b = new SparseIntArray();
        this.f11269a = null;
        this.o = str;
        this.n = StringUtils.b((CharSequence) str);
    }

    public final long a() {
        ExtractedInfo extractedInfo = this.f11269a;
        if (extractedInfo != null) {
            return extractedInfo.when;
        }
        return 0L;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        CallAppPlusData callAppPlusData = (CallAppPlusData) obj;
        if (this.j == callAppPlusData.j && this.m == callAppPlusData.m && this.n == callAppPlusData.n && Objects.equals(this.f11269a, callAppPlusData.f11269a) && Objects.equals(this.i, callAppPlusData.i) && Objects.equals(this.k, callAppPlusData.k) && Objects.equals(this.l, callAppPlusData.l) && this.f11270b.equals(callAppPlusData.f11270b)) {
            return Objects.equals(this.o, callAppPlusData.o);
        }
        return false;
    }

    public Drawable getBadge() {
        return this.i;
    }

    public int getBadgeColor() {
        return this.j;
    }

    public int getBadgeId() {
        return this.m;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.f11269a == null ? Phone.f17100b : PhoneManager.get().a(this.f11269a.phoneAsRaw);
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 4;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        ExtractedInfo extractedInfo = this.f11269a;
        int i = 0;
        int hashCode2 = extractedInfo != null ? extractedInfo.hashCode() : 0;
        Drawable drawable = this.i;
        int hashCode3 = drawable != null ? drawable.hashCode() : 0;
        int i2 = this.j;
        int i3 = this.m;
        String str = this.k;
        int hashCode4 = str != null ? str.hashCode() : 0;
        String str2 = this.l;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        int hashCode6 = this.f11270b.hashCode();
        boolean z = this.n;
        String str3 = this.o;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + (z ? 1 : 0)) * 31) + i;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public void setBadge(Drawable drawable) {
        this.i = drawable;
    }

    public void setBadgeColor(int i) {
        this.j = i;
    }

    public void setBadgeId(int i) {
        this.m = i;
    }

    public void setStarred(boolean z) {
        this.f12645c = z;
        this.f11269a.setStarred(z);
    }
}
