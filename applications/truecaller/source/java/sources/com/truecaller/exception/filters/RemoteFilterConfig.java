package com.truecaller.exception.filters;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0003\u0018��2\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR!\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/truecaller/exception/filters/RemoteFilterConfig;", "", "", "Lcom/truecaller/exception/filters/RemoteFilterRule;", "rules", "[Lcom/truecaller/exception/filters/RemoteFilterRule;", "getRules", "()[Lcom/truecaller/exception/filters/RemoteFilterRule;", "<init>", "([Lcom/truecaller/exception/filters/RemoteFilterRule;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/exception/filters/RemoteFilterConfig.class */
public final class RemoteFilterConfig {
    private final RemoteFilterRule[] rules;

    public RemoteFilterConfig(RemoteFilterRule[] remoteFilterRuleArr) {
        this.rules = remoteFilterRuleArr;
    }

    public final RemoteFilterRule[] getRules() {
        return this.rules;
    }
}
