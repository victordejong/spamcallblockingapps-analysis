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

    /* renamed from: a */
    public final ExtractedInfo f20527a;

    /* renamed from: b */
    public final SparseIntArray f20528b;

    /* renamed from: i */
    private Drawable f20529i;

    /* renamed from: j */
    private int f20530j;

    /* renamed from: k */
    private String f20531k;

    /* renamed from: l */
    private String f20532l;

    /* renamed from: m */
    private int f20533m;

    /* renamed from: n */
    private final boolean f20534n;

    /* renamed from: o */
    private final String f20535o;

    public CallAppPlusData(ExtractedInfo extractedInfo) {
        this.f20528b = new SparseIntArray();
        this.f20527a = extractedInfo;
        this.f20535o = null;
        this.f20534n = false;
        if (extractedInfo != null) {
            this.f22603c = extractedInfo.isStarred();
        }
    }

    public CallAppPlusData(String str) {
        this.f20528b = new SparseIntArray();
        this.f20527a = null;
        this.f20535o = str;
        this.f20534n = StringUtils.m26045b((CharSequence) str);
    }

    /* renamed from: a */
    public final long m31419a() {
        ExtractedInfo extractedInfo = this.f20527a;
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
        if (this.f20530j != callAppPlusData.f20530j || this.f20533m != callAppPlusData.f20533m || this.f20534n != callAppPlusData.f20534n || !Objects.equals(this.f20527a, callAppPlusData.f20527a) || !Objects.equals(this.f20529i, callAppPlusData.f20529i) || !Objects.equals(this.f20531k, callAppPlusData.f20531k) || !Objects.equals(this.f20532l, callAppPlusData.f20532l) || !this.f20528b.equals(callAppPlusData.f20528b)) {
            return false;
        }
        return Objects.equals(this.f20535o, callAppPlusData.f20535o);
    }

    public Drawable getBadge() {
        return this.f20529i;
    }

    public int getBadgeColor() {
        return this.f20530j;
    }

    public int getBadgeId() {
        return this.f20533m;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.f20527a == null ? Phone.f29662b : PhoneManager.get().m28239a(this.f20527a.phoneAsRaw);
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 4;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        ExtractedInfo extractedInfo = this.f20527a;
        int i = 0;
        int hashCode2 = extractedInfo != null ? extractedInfo.hashCode() : 0;
        Drawable drawable = this.f20529i;
        int hashCode3 = drawable != null ? drawable.hashCode() : 0;
        int i2 = this.f20530j;
        int i3 = this.f20533m;
        String str = this.f20531k;
        int hashCode4 = str != null ? str.hashCode() : 0;
        String str2 = this.f20532l;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        int hashCode6 = this.f20528b.hashCode();
        boolean z = this.f20534n;
        String str3 = this.f20535o;
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
        this.f20529i = drawable;
    }

    public void setBadgeColor(int i) {
        this.f20530j = i;
    }

    public void setBadgeId(int i) {
        this.f20533m = i;
    }

    public void setStarred(boolean z) {
        this.f22603c = z;
        this.f20527a.setStarred(z);
    }
}
