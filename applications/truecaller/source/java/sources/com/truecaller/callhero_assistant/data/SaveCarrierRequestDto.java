package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;", "", "", "component1", "()Ljava/lang/String;", "carrierId", "copy", "(Ljava/lang/String;)Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCarrierId", "<init>", "(Ljava/lang/String;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/SaveCarrierRequestDto.class */
public final class SaveCarrierRequestDto {
    private final String carrierId;

    public SaveCarrierRequestDto(String str) {
        l.e(str, "carrierId");
        this.carrierId = str;
    }

    public static /* synthetic */ SaveCarrierRequestDto copy$default(SaveCarrierRequestDto saveCarrierRequestDto, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = saveCarrierRequestDto.carrierId;
        }
        return saveCarrierRequestDto.copy(str);
    }

    public final String component1() {
        return this.carrierId;
    }

    public final SaveCarrierRequestDto copy(String str) {
        l.e(str, "carrierId");
        return new SaveCarrierRequestDto(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof SaveCarrierRequestDto) && l.a(this.carrierId, ((SaveCarrierRequestDto) obj).carrierId);
        }
        return true;
    }

    public final String getCarrierId() {
        return this.carrierId;
    }

    public int hashCode() {
        String str = this.carrierId;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return "SaveCarrierRequestDto(carrierId=" + this.carrierId + ")";
    }
}
