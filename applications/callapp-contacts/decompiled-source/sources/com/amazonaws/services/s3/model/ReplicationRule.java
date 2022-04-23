package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ReplicationRule.class */
public class ReplicationRule {
    private ReplicationDestinationConfig destinationConfig;
    private String prefix;
    private String status;

    public ReplicationDestinationConfig getDestinationConfig() {
        return this.destinationConfig;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getStatus() {
        return this.status;
    }

    public void setDestinationConfig(ReplicationDestinationConfig replicationDestinationConfig) {
        if (replicationDestinationConfig != null) {
            this.destinationConfig = replicationDestinationConfig;
            return;
        }
        throw new IllegalArgumentException("Destination cannot be null in the replication rule");
    }

    public void setPrefix(String str) {
        if (str != null) {
            this.prefix = str;
            return;
        }
        throw new IllegalArgumentException("Prefix cannot be null for a replication rule");
    }

    public void setStatus(ReplicationRuleStatus replicationRuleStatus) {
        setStatus(replicationRuleStatus.getStatus());
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public ReplicationRule withDestinationConfig(ReplicationDestinationConfig replicationDestinationConfig) {
        setDestinationConfig(replicationDestinationConfig);
        return this;
    }

    public ReplicationRule withPrefix(String str) {
        setPrefix(str);
        return this;
    }

    public ReplicationRule withStatus(ReplicationRuleStatus replicationRuleStatus) {
        setStatus(replicationRuleStatus.getStatus());
        return this;
    }

    public ReplicationRule withStatus(String str) {
        setStatus(str);
        return this;
    }
}
