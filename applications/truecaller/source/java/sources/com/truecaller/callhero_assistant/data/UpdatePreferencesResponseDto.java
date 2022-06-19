package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0004¨\u0006\u0015"}, d2 = {"Lcom/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto;", "", "", "component1", "()Z", AnalyticsConstants.SUCCESS, "copy", "(Z)Lcom/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getSuccess", "<init>", "(Z)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto.class */
public final class UpdatePreferencesResponseDto {
    private final boolean success;

    public UpdatePreferencesResponseDto(boolean z) {
        this.success = z;
    }

    public static /* synthetic */ UpdatePreferencesResponseDto copy$default(UpdatePreferencesResponseDto updatePreferencesResponseDto, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = updatePreferencesResponseDto.success;
        }
        return updatePreferencesResponseDto.copy(z);
    }

    public final boolean component1() {
        return this.success;
    }

    public final UpdatePreferencesResponseDto copy(boolean z) {
        return new UpdatePreferencesResponseDto(z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof UpdatePreferencesResponseDto) && this.success == ((UpdatePreferencesResponseDto) obj).success;
        }
        return true;
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
        return z2 ? 1 : 0;
    }

    public String toString() {
        return "UpdatePreferencesResponseDto(success=" + this.success + ")";
    }
}
