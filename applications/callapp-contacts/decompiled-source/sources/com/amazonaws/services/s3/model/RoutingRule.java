package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/RoutingRule.class */
public class RoutingRule {
    RoutingRuleCondition condition;
    RedirectRule redirect;

    public RoutingRuleCondition getCondition() {
        return this.condition;
    }

    public RedirectRule getRedirect() {
        return this.redirect;
    }

    public void setCondition(RoutingRuleCondition routingRuleCondition) {
        this.condition = routingRuleCondition;
    }

    public void setRedirect(RedirectRule redirectRule) {
        this.redirect = redirectRule;
    }

    public RoutingRule withCondition(RoutingRuleCondition routingRuleCondition) {
        setCondition(routingRuleCondition);
        return this;
    }

    public RoutingRule withRedirect(RedirectRule redirectRule) {
        setRedirect(redirectRule);
        return this;
    }
}
