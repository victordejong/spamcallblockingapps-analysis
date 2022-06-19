package com.truecaller.contextcall.p159db.incomingcallcontext;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ8\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0013J \u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010 \u001a\u0004\b!\u0010\u0004R\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010 \u001a\u0004\b\"\u0010\u0004R\u001c\u0010\r\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010#\u001a\u0004\b$\u0010\tR\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b%\u0010\u0004¨\u0006("}, d2 = {"Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "", "component4", "()J", "id", "number", "message", "createdAt", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getId", "getMessage", "J", "getCreatedAt", "getNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext.class */
public final class IncomingCallContext implements Parcelable {
    public static final Parcelable.Creator<IncomingCallContext> CREATOR = new C3779a();
    private final long createdAt;

    /* renamed from: id */
    private final String f11427id;
    private final String message;
    private final String number;

    /* renamed from: com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext$a.class */
    public static final class C3779a implements Parcelable.Creator<IncomingCallContext> {
        @Override // android.os.Parcelable.Creator
        public IncomingCallContext createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new IncomingCallContext(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public IncomingCallContext[] newArray(int i) {
            return new IncomingCallContext[i];
        }
    }

    public IncomingCallContext(String str, String str2, String str3, long j) {
        C22128a.m8703I0(str, "id", str2, "number", str3, "message");
        this.f11427id = str;
        this.number = str2;
        this.message = str3;
        this.createdAt = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext] */
    public static /* synthetic */ IncomingCallContext copy$default(IncomingCallContext incomingCallContext, String str, String str2, String str3, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((IncomingCallContext) incomingCallContext).f11427id;
        }
        if ((i & 2) != 0) {
            str2 = ((IncomingCallContext) incomingCallContext).number;
        }
        if ((i & 4) != 0) {
            str3 = ((IncomingCallContext) incomingCallContext).message;
        }
        ?? r11 = j;
        if ((i & 8) != 0) {
            r11 = ((IncomingCallContext) incomingCallContext).createdAt;
        }
        return incomingCallContext.copy(str, str2, str3, r11);
    }

    public final String component1() {
        return this.f11427id;
    }

    public final String component2() {
        return this.number;
    }

    public final String component3() {
        return this.message;
    }

    public final long component4() {
        return this.createdAt;
    }

    public final IncomingCallContext copy(String str, String str2, String str3, long j) {
        l.e(str, "id");
        l.e(str2, "number");
        l.e(str3, "message");
        return new IncomingCallContext(str, str2, str3, j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof IncomingCallContext)) {
                return false;
            }
            IncomingCallContext incomingCallContext = (IncomingCallContext) obj;
            return l.a(this.f11427id, incomingCallContext.f11427id) && l.a(this.number, incomingCallContext.number) && l.a(this.message, incomingCallContext.message) && this.createdAt == incomingCallContext.createdAt;
        }
        return true;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final String getId() {
        return this.f11427id;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getNumber() {
        return this.number;
    }

    public int hashCode() {
        String str = this.f11427id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.number;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.message;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + C4876d.m34274a(this.createdAt);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IncomingCallContext(id=");
        m8728C.append(this.f11427id);
        m8728C.append(", number=");
        m8728C.append(this.number);
        m8728C.append(", message=");
        m8728C.append(this.message);
        m8728C.append(", createdAt=");
        return C22128a.m8693K2(m8728C, this.createdAt, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11427id);
        parcel.writeString(this.number);
        parcel.writeString(this.message);
        parcel.writeLong(this.createdAt);
    }
}
