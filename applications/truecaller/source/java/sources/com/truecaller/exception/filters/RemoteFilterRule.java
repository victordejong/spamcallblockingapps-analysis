package com.truecaller.exception.filters;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0001\u0018��2\u00020\u0001B%\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/truecaller/exception/filters/RemoteFilterRule;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "type", "getType", "target", "getTarget", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/exception/filters/RemoteFilterRule.class */
public final class RemoteFilterRule {
    private final String target;
    private final String type;
    private final String value;

    public RemoteFilterRule(String str, String str2, String str3) {
        this.type = str;
        this.target = str2;
        this.value = str3;
    }

    public final String getTarget() {
        return this.target;
    }

    public final String getType() {
        return this.type;
    }

    public final String getValue() {
        return this.value;
    }
}
