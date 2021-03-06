package com.callapp.contacts.activity.marketplace.videoRingtone;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J)\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000e¨\u0006\u001a"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "", "name", "", "photoUrl", "isHighLight", "", "(Ljava/lang/String;Ljava/lang/String;Z)V", "()Z", "setHighLight", "(Z)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getPhotoUrl", "setPhotoUrl", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData.class */
public final class PersonalStoreItemDetailsData {

    /* renamed from: a */
    private String f23742a;

    /* renamed from: b */
    private String f23743b;

    /* renamed from: c */
    private boolean f23744c;

    public PersonalStoreItemDetailsData(String name, String str, boolean z) {
        C18524p.m3840d(name, "name");
        this.f23742a = name;
        this.f23743b = str;
        this.f23744c = z;
    }

    public /* synthetic */ PersonalStoreItemDetailsData(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PersonalStoreItemDetailsData)) {
                return false;
            }
            PersonalStoreItemDetailsData personalStoreItemDetailsData = (PersonalStoreItemDetailsData) obj;
            return C18524p.m3850a((Object) this.f23742a, (Object) personalStoreItemDetailsData.f23742a) && C18524p.m3850a((Object) this.f23743b, (Object) personalStoreItemDetailsData.f23743b) && this.f23744c == personalStoreItemDetailsData.f23744c;
        }
        return true;
    }

    public final String getName() {
        return this.f23742a;
    }

    public final String getPhotoUrl() {
        return this.f23743b;
    }

    public final int hashCode() {
        String str = this.f23742a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f23743b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f23744c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public final boolean isHighLight() {
        return this.f23744c;
    }

    public final void setHighLight(boolean z) {
        this.f23744c = z;
    }

    public final String toString() {
        return "PersonalStoreItemDetailsData(name=" + this.f23742a + ", photoUrl=" + this.f23743b + ", isHighLight=" + this.f23744c + ")";
    }
}
