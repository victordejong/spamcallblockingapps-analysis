package com.truecaller.voip.contacts.p188ui;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.u;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B?\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b.\u0010/J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJH\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00022\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u0013\u001a\u00020\nHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u000eJ\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aHÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0019J \u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b#\u0010$R\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010%\u001a\u0004\b&\u0010\u0007R\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010'\u001a\u0004\b(\u0010\u0004R\u0019\u0010\u0013\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010)\u001a\u0004\b*\u0010\u000eR\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010'\u001a\u0004\b+\u0010\u0004R\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010,\u001a\u0004\b-\u0010\f¨\u00060"}, d2 = {"Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;", "Landroid/os/Parcelable;", "", "component1", "()Z", "Lcom/truecaller/voip/contacts/ui/GroupPickerMode;", "component2", "()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;", "component3", "", "", "component4", "()Ljava/util/Set;", "component5", "()Ljava/lang/String;", "modeGroupPicker", "groupPickerMode", "initiateCall", "peers", "callAnalyticsContext", "copy", "(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;", "toString", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/voip/contacts/ui/GroupPickerMode;", "getGroupPickerMode", "Z", "getModeGroupPicker", "Ljava/lang/String;", "getCallAnalyticsContext", "getInitiateCall", "Ljava/util/Set;", "getPeers", "<init>", "(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.voip.contacts.ui.VoipContactsScreenParams */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsScreenParams.class */
public final class VoipContactsScreenParams implements Parcelable {
    public static final Parcelable.Creator<VoipContactsScreenParams> CREATOR = new C4808a();
    private final String callAnalyticsContext;
    private final GroupPickerMode groupPickerMode;
    private final boolean initiateCall;
    private final boolean modeGroupPicker;
    private final Set<String> peers;

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsScreenParams$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsScreenParams$a.class */
    public static final class C4808a implements Parcelable.Creator<VoipContactsScreenParams> {
        @Override // android.os.Parcelable.Creator
        public VoipContactsScreenParams createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            boolean z = parcel.readInt() != 0;
            GroupPickerMode groupPickerMode = (GroupPickerMode) Enum.valueOf(GroupPickerMode.class, parcel.readString());
            boolean z2 = parcel.readInt() != 0;
            int readInt = parcel.readInt();
            LinkedHashSet linkedHashSet = new LinkedHashSet(readInt);
            while (readInt != 0) {
                linkedHashSet.add(parcel.readString());
                readInt--;
            }
            return new VoipContactsScreenParams(z, groupPickerMode, z2, linkedHashSet, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public VoipContactsScreenParams[] newArray(int i) {
            return new VoipContactsScreenParams[i];
        }
    }

    public VoipContactsScreenParams() {
        this(false, null, false, null, null, 31, null);
    }

    public VoipContactsScreenParams(boolean z, GroupPickerMode groupPickerMode, boolean z2, Set<String> set, String str) {
        l.e(groupPickerMode, "groupPickerMode");
        l.e(set, "peers");
        l.e(str, "callAnalyticsContext");
        this.modeGroupPicker = z;
        this.groupPickerMode = groupPickerMode;
        this.initiateCall = z2;
        this.peers = set;
        this.callAnalyticsContext = str;
    }

    public /* synthetic */ VoipContactsScreenParams(boolean z, GroupPickerMode groupPickerMode, boolean z2, Set set, String str, int i, f fVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? GroupPickerMode.ADD_PARTICIPANTS : groupPickerMode, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? u.a : set, (i & 16) != 0 ? "" : str);
    }

    public static /* synthetic */ VoipContactsScreenParams copy$default(VoipContactsScreenParams voipContactsScreenParams, boolean z, GroupPickerMode groupPickerMode, boolean z2, Set set, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = voipContactsScreenParams.modeGroupPicker;
        }
        if ((i & 2) != 0) {
            groupPickerMode = voipContactsScreenParams.groupPickerMode;
        }
        if ((i & 4) != 0) {
            z2 = voipContactsScreenParams.initiateCall;
        }
        if ((i & 8) != 0) {
            set = voipContactsScreenParams.peers;
        }
        if ((i & 16) != 0) {
            str = voipContactsScreenParams.callAnalyticsContext;
        }
        return voipContactsScreenParams.copy(z, groupPickerMode, z2, set, str);
    }

    public final boolean component1() {
        return this.modeGroupPicker;
    }

    public final GroupPickerMode component2() {
        return this.groupPickerMode;
    }

    public final boolean component3() {
        return this.initiateCall;
    }

    public final Set<String> component4() {
        return this.peers;
    }

    public final String component5() {
        return this.callAnalyticsContext;
    }

    public final VoipContactsScreenParams copy(boolean z, GroupPickerMode groupPickerMode, boolean z2, Set<String> set, String str) {
        l.e(groupPickerMode, "groupPickerMode");
        l.e(set, "peers");
        l.e(str, "callAnalyticsContext");
        return new VoipContactsScreenParams(z, groupPickerMode, z2, set, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipContactsScreenParams)) {
                return false;
            }
            VoipContactsScreenParams voipContactsScreenParams = (VoipContactsScreenParams) obj;
            return this.modeGroupPicker == voipContactsScreenParams.modeGroupPicker && l.a(this.groupPickerMode, voipContactsScreenParams.groupPickerMode) && this.initiateCall == voipContactsScreenParams.initiateCall && l.a(this.peers, voipContactsScreenParams.peers) && l.a(this.callAnalyticsContext, voipContactsScreenParams.callAnalyticsContext);
        }
        return true;
    }

    public final String getCallAnalyticsContext() {
        return this.callAnalyticsContext;
    }

    public final GroupPickerMode getGroupPickerMode() {
        return this.groupPickerMode;
    }

    public final boolean getInitiateCall() {
        return this.initiateCall;
    }

    public final boolean getModeGroupPicker() {
        return this.modeGroupPicker;
    }

    public final Set<String> getPeers() {
        return this.peers;
    }

    public int hashCode() {
        boolean z = this.modeGroupPicker;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        GroupPickerMode groupPickerMode = this.groupPickerMode;
        int i2 = 0;
        int hashCode = groupPickerMode != null ? groupPickerMode.hashCode() : 0;
        boolean z3 = this.initiateCall;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        Set<String> set = this.peers;
        int hashCode2 = set != null ? set.hashCode() : 0;
        String str = this.callAnalyticsContext;
        if (str != null) {
            i2 = str.hashCode();
        }
        return ((((((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i) * 31) + hashCode2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipContactsScreenParams(modeGroupPicker=");
        m8728C.append(this.modeGroupPicker);
        m8728C.append(", groupPickerMode=");
        m8728C.append(this.groupPickerMode);
        m8728C.append(", initiateCall=");
        m8728C.append(this.initiateCall);
        m8728C.append(", peers=");
        m8728C.append(this.peers);
        m8728C.append(", callAnalyticsContext=");
        return C22128a.m8618h(m8728C, this.callAnalyticsContext, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(this.modeGroupPicker ? 1 : 0);
        parcel.writeString(this.groupPickerMode.name());
        parcel.writeInt(this.initiateCall ? 1 : 0);
        Set<String> set = this.peers;
        parcel.writeInt(set.size());
        for (String str : set) {
            parcel.writeString(str);
        }
        parcel.writeString(this.callAnalyticsContext);
    }
}
