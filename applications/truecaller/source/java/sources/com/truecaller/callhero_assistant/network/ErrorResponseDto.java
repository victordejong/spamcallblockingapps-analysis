package com.truecaller.callhero_assistant.network;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0083\b\u0018��2\u00020\u0001B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001c\u0010\u0006\u001a\u00020��2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0004¨\u0006\u0015"}, d2 = {"Lcom/truecaller/callhero_assistant/network/ErrorResponseDto;", "", "", "component1", "()Ljava/lang/Boolean;", AnalyticsConstants.SUCCESS, "copy", "(Ljava/lang/Boolean;)Lcom/truecaller/callhero_assistant/network/ErrorResponseDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Boolean;", "getSuccess", "<init>", "(Ljava/lang/Boolean;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/network/ErrorResponseDto.class */
public final class ErrorResponseDto {
    private final Boolean success;

    public ErrorResponseDto(Boolean bool) {
        this.success = bool;
    }

    public static /* synthetic */ ErrorResponseDto copy$default(ErrorResponseDto errorResponseDto, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = errorResponseDto.success;
        }
        return errorResponseDto.copy(bool);
    }

    public final Boolean component1() {
        return this.success;
    }

    public final ErrorResponseDto copy(Boolean bool) {
        return new ErrorResponseDto(bool);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof ErrorResponseDto) && l.a(this.success, ((ErrorResponseDto) obj).success);
        }
        return true;
    }

    public final Boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        Boolean bool = this.success;
        return bool != null ? bool.hashCode() : 0;
    }

    public String toString() {
        return "ErrorResponseDto(success=" + this.success + ")";
    }
}
