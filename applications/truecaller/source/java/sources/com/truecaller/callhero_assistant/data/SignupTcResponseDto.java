package com.truecaller.callhero_assistant.data;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;", "", "Lcom/truecaller/callhero_assistant/data/Carrier;", AnalyticsConstants.CARRIER, "Lcom/truecaller/callhero_assistant/data/Carrier;", "getCarrier", "()Lcom/truecaller/callhero_assistant/data/Carrier;", "", AnalyticsConstants.TOKEN, "Ljava/lang/String;", "getToken", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;Lcom/truecaller/callhero_assistant/data/Carrier;)V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/data/SignupTcResponseDto.class */
public final class SignupTcResponseDto {
    private final Carrier carrier;
    private final String token;

    public SignupTcResponseDto(String str, Carrier carrier) {
        l.e(str, AnalyticsConstants.TOKEN);
        this.token = str;
        this.carrier = carrier;
    }

    public final Carrier getCarrier() {
        return this.carrier;
    }

    public final String getToken() {
        return this.token;
    }
}
