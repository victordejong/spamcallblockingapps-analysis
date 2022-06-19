package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001BG\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b/\u00100J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J`\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0004J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aHÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0019J \u0010$\u001a\u00020#2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b$\u0010%R\u001c\u0010\u0012\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010&\u001a\u0004\b'\u0010\u0004R\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010&\u001a\u0004\b(\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010&\u001a\u0004\b)\u0010\u0004R\u001c\u0010\u0011\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010&\u001a\u0004\b*\u0010\u0004R\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010&\u001a\u0004\b+\u0010\u0004R\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010&\u001a\u0004\b,\u0010\u0004R\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010&\u001a\u0004\b-\u0010\u0004R\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010&\u001a\u0004\b.\u0010\u0004¨\u00061"}, d2 = {"Lcom/truecaller/flashsdk/models/FormField;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "algorithm", "policy", "signature", AnalyticsConstants.KEY, "access", "date", "bucket", "credential", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/flashsdk/models/FormField;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getBucket", "getSignature", "getCredential", "getDate", "getAccess", "getAlgorithm", "getPolicy", "getKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "flash_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FormField.class */
public final class FormField implements Parcelable {
    public static final Parcelable.Creator<FormField> CREATOR = new C3923a();
    @b("acl")
    private final String access;
    @b("X-Amz-Algorithm")
    private final String algorithm;
    @b("bucket")
    private final String bucket;
    @b("X-Amz-Credential")
    private final String credential;
    @b("X-Amz-Date")
    private final String date;
    @b(AnalyticsConstants.KEY)
    private final String key;
    @b("Policy")
    private final String policy;
    @b("X-Amz-Signature")
    private final String signature;

    /* renamed from: com.truecaller.flashsdk.models.FormField$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FormField$a.class */
    public static final class C3923a implements Parcelable.Creator<FormField> {
        @Override // android.os.Parcelable.Creator
        public FormField createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new FormField(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public FormField[] newArray(int i) {
            return new FormField[i];
        }
    }

    public FormField(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        l.e(str, "algorithm");
        l.e(str2, "policy");
        l.e(str3, "signature");
        l.e(str4, AnalyticsConstants.KEY);
        l.e(str5, "access");
        l.e(str6, "date");
        l.e(str7, "bucket");
        l.e(str8, "credential");
        this.algorithm = str;
        this.policy = str2;
        this.signature = str3;
        this.key = str4;
        this.access = str5;
        this.date = str6;
        this.bucket = str7;
        this.credential = str8;
    }

    public static /* synthetic */ FormField copy$default(FormField formField, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, Object obj) {
        if ((i & 1) != 0) {
            str = formField.algorithm;
        }
        if ((i & 2) != 0) {
            str2 = formField.policy;
        }
        if ((i & 4) != 0) {
            str3 = formField.signature;
        }
        if ((i & 8) != 0) {
            str4 = formField.key;
        }
        if ((i & 16) != 0) {
            str5 = formField.access;
        }
        if ((i & 32) != 0) {
            str6 = formField.date;
        }
        if ((i & 64) != 0) {
            str7 = formField.bucket;
        }
        if ((i & 128) != 0) {
            str8 = formField.credential;
        }
        return formField.copy(str, str2, str3, str4, str5, str6, str7, str8);
    }

    public final String component1() {
        return this.algorithm;
    }

    public final String component2() {
        return this.policy;
    }

    public final String component3() {
        return this.signature;
    }

    public final String component4() {
        return this.key;
    }

    public final String component5() {
        return this.access;
    }

    public final String component6() {
        return this.date;
    }

    public final String component7() {
        return this.bucket;
    }

    public final String component8() {
        return this.credential;
    }

    public final FormField copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        l.e(str, "algorithm");
        l.e(str2, "policy");
        l.e(str3, "signature");
        l.e(str4, AnalyticsConstants.KEY);
        l.e(str5, "access");
        l.e(str6, "date");
        l.e(str7, "bucket");
        l.e(str8, "credential");
        return new FormField(str, str2, str3, str4, str5, str6, str7, str8);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FormField)) {
                return false;
            }
            FormField formField = (FormField) obj;
            return l.a(this.algorithm, formField.algorithm) && l.a(this.policy, formField.policy) && l.a(this.signature, formField.signature) && l.a(this.key, formField.key) && l.a(this.access, formField.access) && l.a(this.date, formField.date) && l.a(this.bucket, formField.bucket) && l.a(this.credential, formField.credential);
        }
        return true;
    }

    public final String getAccess() {
        return this.access;
    }

    public final String getAlgorithm() {
        return this.algorithm;
    }

    public final String getBucket() {
        return this.bucket;
    }

    public final String getCredential() {
        return this.credential;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getPolicy() {
        return this.policy;
    }

    public final String getSignature() {
        return this.signature;
    }

    public int hashCode() {
        String str = this.algorithm;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.policy;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.signature;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.key;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.access;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.date;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.bucket;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.credential;
        if (str8 != null) {
            i = str8.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FormField(algorithm=");
        m8728C.append(this.algorithm);
        m8728C.append(", policy=");
        m8728C.append(this.policy);
        m8728C.append(", signature=");
        m8728C.append(this.signature);
        m8728C.append(", key=");
        m8728C.append(this.key);
        m8728C.append(", access=");
        m8728C.append(this.access);
        m8728C.append(", date=");
        m8728C.append(this.date);
        m8728C.append(", bucket=");
        m8728C.append(this.bucket);
        m8728C.append(", credential=");
        return C22128a.m8618h(m8728C, this.credential, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.algorithm);
        parcel.writeString(this.policy);
        parcel.writeString(this.signature);
        parcel.writeString(this.key);
        parcel.writeString(this.access);
        parcel.writeString(this.date);
        parcel.writeString(this.bucket);
        parcel.writeString(this.credential);
    }
}
