package com.gogolook.whoscallsdk.core.num.data;

import gogolook.callgogolook2.gson.UserProfile;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/ContactInfo;", "", UserProfile.KEY_CONTACT_INFO_VALUE, "", "type", "(Ljava/lang/String;Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/ContactInfo.class */
public final class ContactInfo {
    public String info;
    public String type;

    public ContactInfo() {
        this(null, null, 3, null);
    }

    public ContactInfo(String str, String str2) {
        C15149k.m377b(str, UserProfile.KEY_CONTACT_INFO_VALUE);
        C15149k.m377b(str2, "type");
        this.info = str;
        this.type = str2;
    }

    public /* synthetic */ ContactInfo(String str, String str2, int i, C15145g gVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ ContactInfo copy$default(ContactInfo contactInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = contactInfo.info;
        }
        if ((i & 2) != 0) {
            str2 = contactInfo.type;
        }
        return contactInfo.copy(str, str2);
    }

    public final String component1() {
        return this.info;
    }

    public final String component2() {
        return this.type;
    }

    public final ContactInfo copy(String str, String str2) {
        C15149k.m377b(str, UserProfile.KEY_CONTACT_INFO_VALUE);
        C15149k.m377b(str2, "type");
        return new ContactInfo(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContactInfo)) {
            return false;
        }
        ContactInfo contactInfo = (ContactInfo) obj;
        return C15149k.m384a((Object) this.info, (Object) contactInfo.info) && C15149k.m384a((Object) this.type, (Object) contactInfo.type);
    }

    public int hashCode() {
        String str = this.info;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.type;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "ContactInfo(info=" + this.info + ", type=" + this.type + ")";
    }
}
