package com.truecaller.sdk.oAuth.networking.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0011J \u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001d\u001a\u0004\b\u001f\u0010\u0004R\"\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010 \u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()Z", "scope", "description", "checked", "copy", "(Ljava/lang/String;Ljava/lang/String;Z)Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;", "toString", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getDescription", "getScope", "Z", "getChecked", "setChecked", "(Z)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/ScopeInfo.class */
public final class ScopeInfo implements Parcelable {
    public static final Parcelable.Creator<ScopeInfo> CREATOR = new C4424a();
    private boolean checked;
    private final String description;
    private final String scope;

    /* renamed from: com.truecaller.sdk.oAuth.networking.data.ScopeInfo$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/ScopeInfo$a.class */
    public static final class C4424a implements Parcelable.Creator<ScopeInfo> {
        @Override // android.os.Parcelable.Creator
        public ScopeInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new ScopeInfo(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public ScopeInfo[] newArray(int i) {
            return new ScopeInfo[i];
        }
    }

    public ScopeInfo(String str, String str2, boolean z) {
        l.e(str, "scope");
        l.e(str2, "description");
        this.scope = str;
        this.description = str2;
        this.checked = z;
    }

    public /* synthetic */ ScopeInfo(String str, String str2, boolean z, int i, f fVar) {
        this(str, str2, (i & 4) != 0 ? true : z);
    }

    public static /* synthetic */ ScopeInfo copy$default(ScopeInfo scopeInfo, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = scopeInfo.scope;
        }
        if ((i & 2) != 0) {
            str2 = scopeInfo.description;
        }
        if ((i & 4) != 0) {
            z = scopeInfo.checked;
        }
        return scopeInfo.copy(str, str2, z);
    }

    public final String component1() {
        return this.scope;
    }

    public final String component2() {
        return this.description;
    }

    public final boolean component3() {
        return this.checked;
    }

    public final ScopeInfo copy(String str, String str2, boolean z) {
        l.e(str, "scope");
        l.e(str2, "description");
        return new ScopeInfo(str, str2, z);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ScopeInfo)) {
                return false;
            }
            ScopeInfo scopeInfo = (ScopeInfo) obj;
            return l.a(this.scope, scopeInfo.scope) && l.a(this.description, scopeInfo.description) && this.checked == scopeInfo.checked;
        }
        return true;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getScope() {
        return this.scope;
    }

    public int hashCode() {
        String str = this.scope;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.checked;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public final void setChecked(boolean z) {
        this.checked = z;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ScopeInfo(scope=");
        m8728C.append(this.scope);
        m8728C.append(", description=");
        m8728C.append(this.description);
        m8728C.append(", checked=");
        return C22128a.m8590o(m8728C, this.checked, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.scope);
        parcel.writeString(this.description);
        parcel.writeInt(this.checked ? 1 : 0);
    }
}
