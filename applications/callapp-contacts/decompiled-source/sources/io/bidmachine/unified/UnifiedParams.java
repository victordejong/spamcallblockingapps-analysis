package io.bidmachine.unified;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedParams.class */
public abstract class UnifiedParams {
    private UnifiedMediationParams mediationParams;

    public UnifiedParams(UnifiedMediationParams unifiedMediationParams) {
        this.mediationParams = unifiedMediationParams;
    }

    public UnifiedMediationParams getMediationParams() {
        return this.mediationParams;
    }

    public abstract boolean isValid(UnifiedAdCallback unifiedAdCallback);
}
