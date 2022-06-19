package com.verizon.ads;

import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/RuleComponent.class */
public interface RuleComponent extends Component {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RuleComponent$RuleListener.class */
    public interface RuleListener {
        void onRuleFired(RuleComponent ruleComponent);
    }

    void fire();

    Map<String, Object> getEventArgs();

    String getEventId();

    boolean hasFired();

    @Override // com.verizon.ads.Component
    void release();

    void reset();
}
