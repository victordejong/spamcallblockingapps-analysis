package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B%\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ4\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b\u001f\u0010\bR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010 \u001a\u0004\b!\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010 \u001a\u0004\b\"\u0010\u0004¨\u0006%"}, d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()Ljava/util/List;", "authorizationCode", "state", "scopesGranted", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/util/List;", "getScopesGranted", "Ljava/lang/String;", "getState", "getAuthorizationCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "sdk-external_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthData.class */
public final class TcOAuthData implements Parcelable {
    public static final Parcelable.Creator<TcOAuthData> CREATOR = new C2871a();
    private final String authorizationCode;
    private final List<String> scopesGranted;
    private final String state;

    /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthData$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthData$a.class */
    public static final class C2871a implements Parcelable.Creator<TcOAuthData> {
        @Override // android.os.Parcelable.Creator
        public TcOAuthData createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new TcOAuthData(parcel.readString(), parcel.readString(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public TcOAuthData[] newArray(int i) {
            return new TcOAuthData[i];
        }
    }

    public TcOAuthData(String str, String str2, List<String> list) {
        l.e(str, "authorizationCode");
        l.e(str2, "state");
        l.e(list, "scopesGranted");
        this.authorizationCode = str;
        this.state = str2;
        this.scopesGranted = list;
    }

    public static /* synthetic */ TcOAuthData copy$default(TcOAuthData tcOAuthData, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tcOAuthData.authorizationCode;
        }
        if ((i & 2) != 0) {
            str2 = tcOAuthData.state;
        }
        if ((i & 4) != 0) {
            list = tcOAuthData.scopesGranted;
        }
        return tcOAuthData.copy(str, str2, list);
    }

    public final String component1() {
        return this.authorizationCode;
    }

    public final String component2() {
        return this.state;
    }

    public final List<String> component3() {
        return this.scopesGranted;
    }

    public final TcOAuthData copy(String str, String str2, List<String> list) {
        l.e(str, "authorizationCode");
        l.e(str2, "state");
        l.e(list, "scopesGranted");
        return new TcOAuthData(str, str2, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof TcOAuthData)) {
                return false;
            }
            TcOAuthData tcOAuthData = (TcOAuthData) obj;
            return l.a(this.authorizationCode, tcOAuthData.authorizationCode) && l.a(this.state, tcOAuthData.state) && l.a(this.scopesGranted, tcOAuthData.scopesGranted);
        }
        return true;
    }

    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    public final List<String> getScopesGranted() {
        return this.scopesGranted;
    }

    public final String getState() {
        return this.state;
    }

    public int hashCode() {
        String str = this.authorizationCode;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.state;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<String> list = this.scopesGranted;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TcOAuthData(authorizationCode=");
        m8728C.append(this.authorizationCode);
        m8728C.append(", state=");
        m8728C.append(this.state);
        m8728C.append(", scopesGranted=");
        return C22128a.m8602l(m8728C, this.scopesGranted, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.authorizationCode);
        parcel.writeString(this.state);
        parcel.writeStringList(this.scopesGranted);
    }
}
