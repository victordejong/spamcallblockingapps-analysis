package com.truecaller.common.profile;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/truecaller/common/profile/ProfileSaveError;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()I", "component3", "fieldName", "errorType", "details", "copy", "(Ljava/lang/String;ILjava/lang/String;)Lcom/truecaller/common/profile/ProfileSaveError;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getErrorType", "Ljava/lang/String;", "getDetails", "getFieldName", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "common_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/profile/ProfileSaveError.class */
public final class ProfileSaveError {
    private final String details;
    private final int errorType;
    private final String fieldName;

    public ProfileSaveError(String str, int i, String str2) {
        l.e(str, "fieldName");
        l.e(str2, "details");
        this.fieldName = str;
        this.errorType = i;
        this.details = str2;
    }

    public static /* synthetic */ ProfileSaveError copy$default(ProfileSaveError profileSaveError, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = profileSaveError.fieldName;
        }
        if ((i2 & 2) != 0) {
            i = profileSaveError.errorType;
        }
        if ((i2 & 4) != 0) {
            str2 = profileSaveError.details;
        }
        return profileSaveError.copy(str, i, str2);
    }

    public final String component1() {
        return this.fieldName;
    }

    public final int component2() {
        return this.errorType;
    }

    public final String component3() {
        return this.details;
    }

    public final ProfileSaveError copy(String str, int i, String str2) {
        l.e(str, "fieldName");
        l.e(str2, "details");
        return new ProfileSaveError(str, i, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ProfileSaveError)) {
                return false;
            }
            ProfileSaveError profileSaveError = (ProfileSaveError) obj;
            return l.a(this.fieldName, profileSaveError.fieldName) && this.errorType == profileSaveError.errorType && l.a(this.details, profileSaveError.details);
        }
        return true;
    }

    public final String getDetails() {
        return this.details;
    }

    public final int getErrorType() {
        return this.errorType;
    }

    public final String getFieldName() {
        return this.fieldName;
    }

    public int hashCode() {
        String str = this.fieldName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.errorType;
        String str2 = this.details;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ProfileSaveError(fieldName=");
        m8728C.append(this.fieldName);
        m8728C.append(", errorType=");
        m8728C.append(this.errorType);
        m8728C.append(", details=");
        return C22128a.m8618h(m8728C, this.details, ")");
    }
}
