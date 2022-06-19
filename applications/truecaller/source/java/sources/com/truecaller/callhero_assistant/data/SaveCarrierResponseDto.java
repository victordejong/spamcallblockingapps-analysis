package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u0014\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/truecaller/callhero_assistant/data/SaveCarrierResponseDto;", "", "", "component1", "()Z", "", "component2", "()Ljava/lang/String;", AnalyticsConstants.SUCCESS, "did", "copy", "(ZLjava/lang/String;)Lcom/truecaller/callhero_assistant/data/SaveCarrierResponseDto;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getDid", "Z", "getSuccess", "<init>", "(ZLjava/lang/String;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/SaveCarrierResponseDto.class */
public final class SaveCarrierResponseDto {
    private final String did;
    private final boolean success;

    public SaveCarrierResponseDto(boolean z, String str) {
        l.e(str, "did");
        this.success = z;
        this.did = str;
    }

    public static /* synthetic */ SaveCarrierResponseDto copy$default(SaveCarrierResponseDto saveCarrierResponseDto, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = saveCarrierResponseDto.success;
        }
        if ((i & 2) != 0) {
            str = saveCarrierResponseDto.did;
        }
        return saveCarrierResponseDto.copy(z, str);
    }

    public final boolean component1() {
        return this.success;
    }

    public final String component2() {
        return this.did;
    }

    public final SaveCarrierResponseDto copy(boolean z, String str) {
        l.e(str, "did");
        return new SaveCarrierResponseDto(z, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SaveCarrierResponseDto)) {
                return false;
            }
            SaveCarrierResponseDto saveCarrierResponseDto = (SaveCarrierResponseDto) obj;
            return this.success == saveCarrierResponseDto.success && l.a(this.did, saveCarrierResponseDto.did);
        }
        return true;
    }

    public final String getDid() {
        return this.did;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        boolean z = this.success;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.did;
        return ((z2 ? 1 : 0) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SaveCarrierResponseDto(success=" + this.success + ", did=" + this.did + ")";
    }
}
