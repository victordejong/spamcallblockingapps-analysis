package com.truecaller.acs.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.HistoryEvent;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0011\b\u0087\b\u0018�� 02\u00020\u0001:\u00011B1\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u000e\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b-\u0010.B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b-\u0010/J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0010J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0010JD\u0010\u001b\u001a\u00020��2\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\u000e2\b\b\u0002\u0010\u0018\u001a\u00020\u000e2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u001a\u001a\u00020\u000eHÆ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b \u0010\nJ\u001a\u0010#\u001a\u00020\u000e2\b\u0010\"\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b#\u0010$R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010%\u001a\u0004\b&\u0010\u0014R\u0019\u0010\u0017\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010'\u001a\u0004\b(\u0010\u0010R\u0019\u0010\u001a\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010'\u001a\u0004\b)\u0010\u0010R\u0019\u0010\u0018\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010'\u001a\u0004\b*\u0010\u0010R\u0019\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010+\u001a\u0004\b,\u0010\r¨\u00062"}, d2 = {"Lcom/truecaller/acs/data/AfterCallHistoryEvent;", "Landroid/os/Parcelable;", "Landroid/os/Parcel;", "parcel", "", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Lcom/truecaller/data/entity/HistoryEvent;", "component1", "()Lcom/truecaller/data/entity/HistoryEvent;", "", "component2", "()Z", "component3", "Lcom/truecaller/blocking/FilterMatch;", "component4", "()Lcom/truecaller/blocking/FilterMatch;", "component5", "historyEvent", "rejected", "keepScreenOnWhenBlocked", "filterMatch", "launchedFromWidget", "copy", "(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/acs/data/AfterCallHistoryEvent;", "", "toString", "()Ljava/lang/String;", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/blocking/FilterMatch;", "getFilterMatch", "Z", "getRejected", "getLaunchedFromWidget", "getKeepScreenOnWhenBlocked", "Lcom/truecaller/data/entity/HistoryEvent;", "getHistoryEvent", "<init>", "(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)V", "(Landroid/os/Parcel;)V", "CREATOR", "a", "acs_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/data/AfterCallHistoryEvent.class */
public final class AfterCallHistoryEvent implements Parcelable {
    public static final C2784a CREATOR = new C2784a(null);
    private final FilterMatch filterMatch;
    private final HistoryEvent historyEvent;
    private final boolean keepScreenOnWhenBlocked;
    private final boolean launchedFromWidget;
    private final boolean rejected;

    /* renamed from: com.truecaller.acs.data.AfterCallHistoryEvent$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/data/AfterCallHistoryEvent$a.class */
    public static final class C2784a implements Parcelable.Creator<AfterCallHistoryEvent> {
        public C2784a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public AfterCallHistoryEvent createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new AfterCallHistoryEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AfterCallHistoryEvent[] newArray(int i) {
            return new AfterCallHistoryEvent[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AfterCallHistoryEvent(android.os.Parcel r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "parcel"
            s1.z.c.l.e(r0, r1)
            android.os.Parcelable$Creator<com.truecaller.data.entity.HistoryEvent> r0 = com.truecaller.data.entity.HistoryEvent.CREATOR
            r1 = r8
            java.lang.Object r0 = r0.createFromParcel(r1)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "HistoryEvent.CREATOR.createFromParcel(parcel)"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            com.truecaller.data.entity.HistoryEvent r0 = (com.truecaller.data.entity.HistoryEvent) r0
            r10 = r0
            r0 = r8
            int r0 = r0.readInt()
            r1 = 1
            if (r0 != r1) goto L29
            r0 = 1
            r11 = r0
            goto L2c
        L29:
            r0 = 0
            r11 = r0
        L2c:
            r0 = r8
            int r0 = r0.readInt()
            r1 = 1
            if (r0 != r1) goto L3a
            r0 = 1
            r12 = r0
            goto L3d
        L3a:
            r0 = 0
            r12 = r0
        L3d:
            r0 = r8
            int r0 = r0.readInt()
            r1 = 1
            if (r0 != r1) goto L55
            android.os.Parcelable$Creator<com.truecaller.blocking.FilterMatch> r0 = com.truecaller.blocking.FilterMatch.CREATOR
            r1 = r8
            java.lang.Object r0 = r0.createFromParcel(r1)
            com.truecaller.blocking.FilterMatch r0 = (com.truecaller.blocking.FilterMatch) r0
            r9 = r0
            goto L57
        L55:
            r0 = 0
            r9 = r0
        L57:
            r0 = r8
            int r0 = r0.readInt()
            r1 = 1
            if (r0 != r1) goto L65
            r0 = 1
            r13 = r0
            goto L68
        L65:
            r0 = 0
            r13 = r0
        L68:
            r0 = r7
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r9
            r5 = r13
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.acs.data.AfterCallHistoryEvent.<init>(android.os.Parcel):void");
    }

    public AfterCallHistoryEvent(HistoryEvent historyEvent, boolean z, boolean z2, FilterMatch filterMatch, boolean z3) {
        l.e(historyEvent, "historyEvent");
        this.historyEvent = historyEvent;
        this.rejected = z;
        this.keepScreenOnWhenBlocked = z2;
        this.filterMatch = filterMatch;
        this.launchedFromWidget = z3;
    }

    public static /* synthetic */ AfterCallHistoryEvent copy$default(AfterCallHistoryEvent afterCallHistoryEvent, HistoryEvent historyEvent, boolean z, boolean z2, FilterMatch filterMatch, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            historyEvent = afterCallHistoryEvent.historyEvent;
        }
        if ((i & 2) != 0) {
            z = afterCallHistoryEvent.rejected;
        }
        if ((i & 4) != 0) {
            z2 = afterCallHistoryEvent.keepScreenOnWhenBlocked;
        }
        if ((i & 8) != 0) {
            filterMatch = afterCallHistoryEvent.filterMatch;
        }
        if ((i & 16) != 0) {
            z3 = afterCallHistoryEvent.launchedFromWidget;
        }
        return afterCallHistoryEvent.copy(historyEvent, z, z2, filterMatch, z3);
    }

    public final HistoryEvent component1() {
        return this.historyEvent;
    }

    public final boolean component2() {
        return this.rejected;
    }

    public final boolean component3() {
        return this.keepScreenOnWhenBlocked;
    }

    public final FilterMatch component4() {
        return this.filterMatch;
    }

    public final boolean component5() {
        return this.launchedFromWidget;
    }

    public final AfterCallHistoryEvent copy(HistoryEvent historyEvent, boolean z, boolean z2, FilterMatch filterMatch, boolean z3) {
        l.e(historyEvent, "historyEvent");
        return new AfterCallHistoryEvent(historyEvent, z, z2, filterMatch, z3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AfterCallHistoryEvent)) {
                return false;
            }
            AfterCallHistoryEvent afterCallHistoryEvent = (AfterCallHistoryEvent) obj;
            return l.a(this.historyEvent, afterCallHistoryEvent.historyEvent) && this.rejected == afterCallHistoryEvent.rejected && this.keepScreenOnWhenBlocked == afterCallHistoryEvent.keepScreenOnWhenBlocked && l.a(this.filterMatch, afterCallHistoryEvent.filterMatch) && this.launchedFromWidget == afterCallHistoryEvent.launchedFromWidget;
        }
        return true;
    }

    public final FilterMatch getFilterMatch() {
        return this.filterMatch;
    }

    public final HistoryEvent getHistoryEvent() {
        return this.historyEvent;
    }

    public final boolean getKeepScreenOnWhenBlocked() {
        return this.keepScreenOnWhenBlocked;
    }

    public final boolean getLaunchedFromWidget() {
        return this.launchedFromWidget;
    }

    public final boolean getRejected() {
        return this.rejected;
    }

    public int hashCode() {
        HistoryEvent historyEvent = this.historyEvent;
        int i = 0;
        int hashCode = historyEvent != null ? historyEvent.hashCode() : 0;
        boolean z = this.rejected;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.keepScreenOnWhenBlocked;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        FilterMatch filterMatch = this.filterMatch;
        if (filterMatch != null) {
            i = filterMatch.hashCode();
        }
        boolean z3 = this.launchedFromWidget;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((hashCode * 31) + i3) * 31) + i4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AfterCallHistoryEvent(historyEvent=");
        m8728C.append(this.historyEvent);
        m8728C.append(", rejected=");
        m8728C.append(this.rejected);
        m8728C.append(", keepScreenOnWhenBlocked=");
        m8728C.append(this.keepScreenOnWhenBlocked);
        m8728C.append(", filterMatch=");
        m8728C.append(this.filterMatch);
        m8728C.append(", launchedFromWidget=");
        return C22128a.m8590o(m8728C, this.launchedFromWidget, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        this.historyEvent.writeToParcel(parcel, 0);
        parcel.writeInt(this.rejected ? 1 : 0);
        parcel.writeInt(this.keepScreenOnWhenBlocked ? 1 : 0);
        parcel.writeInt(this.filterMatch != null ? 1 : 0);
        FilterMatch filterMatch = this.filterMatch;
        if (filterMatch != null) {
            filterMatch.writeToParcel(parcel, 0);
        }
        parcel.writeInt(this.launchedFromWidget ? 1 : 0);
    }
}
