package com.truecaller.contextcall.p159db.reason;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0004J \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007¨\u0006 "}, d2 = {"Lcom/truecaller/contextcall/db/reason/CallReason;", "Landroid/os/Parcelable;", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "id", "reasonText", "copy", "(ILjava/lang/String;)Lcom/truecaller/contextcall/db/reason/CallReason;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "I", "getId", "Ljava/lang/String;", "getReasonText", "<init>", "(ILjava/lang/String;)V", "context-call_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.contextcall.db.reason.CallReason */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/reason/CallReason.class */
public final class CallReason implements Parcelable {
    public static final Parcelable.Creator<CallReason> CREATOR = new C3780a();

    /* renamed from: id */
    private final int f11428id;
    private final String reasonText;

    /* renamed from: com.truecaller.contextcall.db.reason.CallReason$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/reason/CallReason$a.class */
    public static final class C3780a implements Parcelable.Creator<CallReason> {
        @Override // android.os.Parcelable.Creator
        public CallReason createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new CallReason(parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public CallReason[] newArray(int i) {
            return new CallReason[i];
        }
    }

    public CallReason(int i, String str) {
        l.e(str, "reasonText");
        this.f11428id = i;
        this.reasonText = str;
    }

    public /* synthetic */ CallReason(int i, String str, int i2, f fVar) {
        this((i2 & 1) != 0 ? 0 : i, str);
    }

    public static /* synthetic */ CallReason copy$default(CallReason callReason, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = callReason.f11428id;
        }
        if ((i2 & 2) != 0) {
            str = callReason.reasonText;
        }
        return callReason.copy(i, str);
    }

    public final int component1() {
        return this.f11428id;
    }

    public final String component2() {
        return this.reasonText;
    }

    public final CallReason copy(int i, String str) {
        l.e(str, "reasonText");
        return new CallReason(i, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallReason)) {
                return false;
            }
            CallReason callReason = (CallReason) obj;
            return this.f11428id == callReason.f11428id && l.a(this.reasonText, callReason.reasonText);
        }
        return true;
    }

    public final int getId() {
        return this.f11428id;
    }

    public final String getReasonText() {
        return this.reasonText;
    }

    public int hashCode() {
        int i = this.f11428id;
        String str = this.reasonText;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallReason(id=");
        m8728C.append(this.f11428id);
        m8728C.append(", reasonText=");
        return C22128a.m8618h(m8728C, this.reasonText, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.f11428id);
        parcel.writeString(this.reasonText);
    }
}
