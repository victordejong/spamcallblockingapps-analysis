package com.truecaller.voip.api;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B#\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0005J0\u0010\t\u001a\u00020��2\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0005R\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0016\u0010\u0005¨\u0006\u0019"}, d2 = {"Lcom/truecaller/voip/api/InviteToCallRequestDto;", "", "", "", "component1", "()Ljava/util/Set;", "component2", "inviteIds", "currentIds", "copy", "(Ljava/util/Set;Ljava/util/Set;)Lcom/truecaller/voip/api/InviteToCallRequestDto;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Set;", "getCurrentIds", "getInviteIds", "<init>", "(Ljava/util/Set;Ljava/util/Set;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/InviteToCallRequestDto.class */
public final class InviteToCallRequestDto {
    @b("current")
    private final Set<String> currentIds;
    @b("toInvite")
    private final Set<String> inviteIds;

    public InviteToCallRequestDto(Set<String> set, Set<String> set2) {
        l.e(set, "inviteIds");
        l.e(set2, "currentIds");
        this.inviteIds = set;
        this.currentIds = set2;
    }

    public static /* synthetic */ InviteToCallRequestDto copy$default(InviteToCallRequestDto inviteToCallRequestDto, Set set, Set set2, int i, Object obj) {
        if ((i & 1) != 0) {
            set = inviteToCallRequestDto.inviteIds;
        }
        if ((i & 2) != 0) {
            set2 = inviteToCallRequestDto.currentIds;
        }
        return inviteToCallRequestDto.copy(set, set2);
    }

    public final Set<String> component1() {
        return this.inviteIds;
    }

    public final Set<String> component2() {
        return this.currentIds;
    }

    public final InviteToCallRequestDto copy(Set<String> set, Set<String> set2) {
        l.e(set, "inviteIds");
        l.e(set2, "currentIds");
        return new InviteToCallRequestDto(set, set2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof InviteToCallRequestDto)) {
                return false;
            }
            InviteToCallRequestDto inviteToCallRequestDto = (InviteToCallRequestDto) obj;
            return l.a(this.inviteIds, inviteToCallRequestDto.inviteIds) && l.a(this.currentIds, inviteToCallRequestDto.currentIds);
        }
        return true;
    }

    public final Set<String> getCurrentIds() {
        return this.currentIds;
    }

    public final Set<String> getInviteIds() {
        return this.inviteIds;
    }

    public int hashCode() {
        Set<String> set = this.inviteIds;
        int i = 0;
        int hashCode = set != null ? set.hashCode() : 0;
        Set<String> set2 = this.currentIds;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InviteToCallRequestDto(inviteIds=");
        m8728C.append(this.inviteIds);
        m8728C.append(", currentIds=");
        m8728C.append(this.currentIds);
        m8728C.append(")");
        return m8728C.toString();
    }
}
