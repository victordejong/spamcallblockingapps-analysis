package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010\u000b\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b!\u0010\bR\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\"\u0010\u0004¨\u0006%"}, d2 = {"Lcom/truecaller/flashsdk/models/MediaUrl;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "Lcom/truecaller/flashsdk/models/FormField;", "component3", "()Lcom/truecaller/flashsdk/models/FormField;", "uploadUrl", "downloadUrl", "formField", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/flashsdk/models/FormField;)Lcom/truecaller/flashsdk/models/MediaUrl;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getDownloadUrl", "Lcom/truecaller/flashsdk/models/FormField;", "getFormField", "getUploadUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/flashsdk/models/FormField;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/MediaUrl.class */
public final class MediaUrl implements Parcelable {
    public static final Parcelable.Creator<MediaUrl> CREATOR = new C3925a();
    @b("downloadUrl")
    private final String downloadUrl;
    @b("formFields")
    private final FormField formField;
    @b("uploadUrl")
    private final String uploadUrl;

    /* renamed from: com.truecaller.flashsdk.models.MediaUrl$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/MediaUrl$a.class */
    public static final class C3925a implements Parcelable.Creator<MediaUrl> {
        @Override // android.os.Parcelable.Creator
        public MediaUrl createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new MediaUrl(parcel.readString(), parcel.readString(), FormField.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public MediaUrl[] newArray(int i) {
            return new MediaUrl[i];
        }
    }

    public MediaUrl(String str, String str2, FormField formField) {
        l.e(str, "uploadUrl");
        l.e(str2, "downloadUrl");
        l.e(formField, "formField");
        this.uploadUrl = str;
        this.downloadUrl = str2;
        this.formField = formField;
    }

    public static /* synthetic */ MediaUrl copy$default(MediaUrl mediaUrl, String str, String str2, FormField formField, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mediaUrl.uploadUrl;
        }
        if ((i & 2) != 0) {
            str2 = mediaUrl.downloadUrl;
        }
        if ((i & 4) != 0) {
            formField = mediaUrl.formField;
        }
        return mediaUrl.copy(str, str2, formField);
    }

    public final String component1() {
        return this.uploadUrl;
    }

    public final String component2() {
        return this.downloadUrl;
    }

    public final FormField component3() {
        return this.formField;
    }

    public final MediaUrl copy(String str, String str2, FormField formField) {
        l.e(str, "uploadUrl");
        l.e(str2, "downloadUrl");
        l.e(formField, "formField");
        return new MediaUrl(str, str2, formField);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof MediaUrl)) {
                return false;
            }
            MediaUrl mediaUrl = (MediaUrl) obj;
            return l.a(this.uploadUrl, mediaUrl.uploadUrl) && l.a(this.downloadUrl, mediaUrl.downloadUrl) && l.a(this.formField, mediaUrl.formField);
        }
        return true;
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final FormField getFormField() {
        return this.formField;
    }

    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    public int hashCode() {
        String str = this.uploadUrl;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.downloadUrl;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        FormField formField = this.formField;
        if (formField != null) {
            i = formField.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediaUrl(uploadUrl=");
        m8728C.append(this.uploadUrl);
        m8728C.append(", downloadUrl=");
        m8728C.append(this.downloadUrl);
        m8728C.append(", formField=");
        m8728C.append(this.formField);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.uploadUrl);
        parcel.writeString(this.downloadUrl);
        this.formField.writeToParcel(parcel, 0);
    }
}
