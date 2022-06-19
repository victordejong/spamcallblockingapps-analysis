package com.truecaller.voip.api;

import androidx.annotation.Keep;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0007\u001a\u00020��2\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0005¨\u0006\u0016"}, d2 = {"Lcom/truecaller/voip/api/CreateCallRequestDto;", "", "", "", "component1", "()Ljava/util/Set;", "participants", "copy", "(Ljava/util/Set;)Lcom/truecaller/voip/api/CreateCallRequestDto;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Set;", "getParticipants", "<init>", "(Ljava/util/Set;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CreateCallRequestDto.class */
public final class CreateCallRequestDto {
    private final Set<String> participants;

    public CreateCallRequestDto(Set<String> set) {
        l.e(set, "participants");
        this.participants = set;
    }

    public static /* synthetic */ CreateCallRequestDto copy$default(CreateCallRequestDto createCallRequestDto, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            set = createCallRequestDto.participants;
        }
        return createCallRequestDto.copy(set);
    }

    public final Set<String> component1() {
        return this.participants;
    }

    public final CreateCallRequestDto copy(Set<String> set) {
        l.e(set, "participants");
        return new CreateCallRequestDto(set);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof CreateCallRequestDto) && l.a(this.participants, ((CreateCallRequestDto) obj).participants);
        }
        return true;
    }

    public final Set<String> getParticipants() {
        return this.participants;
    }

    public int hashCode() {
        Set<String> set = this.participants;
        return set != null ? set.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CreateCallRequestDto(participants=");
        m8728C.append(this.participants);
        m8728C.append(")");
        return m8728C.toString();
    }
}
