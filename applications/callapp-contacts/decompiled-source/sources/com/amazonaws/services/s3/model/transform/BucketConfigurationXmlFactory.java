package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.s3.model.CORSRule;
import com.amazonaws.services.s3.model.CloudFunctionConfiguration;
import com.amazonaws.services.s3.model.Filter;
import com.amazonaws.services.s3.model.FilterRule;
import com.amazonaws.services.s3.model.LambdaConfiguration;
import com.amazonaws.services.s3.model.NotificationConfiguration;
import com.amazonaws.services.s3.model.QueueConfiguration;
import com.amazonaws.services.s3.model.RedirectRule;
import com.amazonaws.services.s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.s3.model.ReplicationRule;
import com.amazonaws.services.s3.model.RoutingRule;
import com.amazonaws.services.s3.model.RoutingRuleCondition;
import com.amazonaws.services.s3.model.S3KeyFilter;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.TagSet;
import com.amazonaws.services.s3.model.analytics.AnalyticsAndOperator;
import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilter;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilterPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsPredicateVisitor;
import com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsTagPredicate;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysis;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport;
import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import com.amazonaws.services.s3.model.inventory.InventoryDestination;
import com.amazonaws.services.s3.model.inventory.InventoryFilter;
import com.amazonaws.services.s3.model.inventory.InventoryFilterPredicate;
import com.amazonaws.services.s3.model.inventory.InventoryPrefixPredicate;
import com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination;
import com.amazonaws.services.s3.model.inventory.InventorySchedule;
import com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilter;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilterPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecyclePredicateVisitor;
import com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsAndOperator;
import com.amazonaws.services.s3.model.metrics.MetricsConfiguration;
import com.amazonaws.services.s3.model.metrics.MetricsFilter;
import com.amazonaws.services.s3.model.metrics.MetricsFilterPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsPredicateVisitor;
import com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsTagPredicate;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory.class */
public class BucketConfigurationXmlFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl.class */
    public class AnalyticsPredicateVisitorImpl implements AnalyticsPredicateVisitor {
        private final XmlWriter xml;

        public AnalyticsPredicateVisitorImpl(XmlWriter xmlWriter) {
            this.xml = xmlWriter;
        }

        @Override // com.amazonaws.services.s3.model.analytics.AnalyticsPredicateVisitor
        public void visit(AnalyticsAndOperator analyticsAndOperator) {
            this.xml.a("And");
            for (AnalyticsFilterPredicate analyticsFilterPredicate : analyticsAndOperator.getOperands()) {
                analyticsFilterPredicate.accept(this);
            }
            this.xml.a();
        }

        @Override // com.amazonaws.services.s3.model.analytics.AnalyticsPredicateVisitor
        public void visit(AnalyticsPrefixPredicate analyticsPrefixPredicate) {
            BucketConfigurationXmlFactory.this.writePrefix(this.xml, analyticsPrefixPredicate.getPrefix());
        }

        @Override // com.amazonaws.services.s3.model.analytics.AnalyticsPredicateVisitor
        public void visit(AnalyticsTagPredicate analyticsTagPredicate) {
            BucketConfigurationXmlFactory.this.writeTag(this.xml, analyticsTagPredicate.getTag());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl.class */
    public class LifecyclePredicateVisitorImpl implements LifecyclePredicateVisitor {
        private final XmlWriter xml;

        public LifecyclePredicateVisitorImpl(XmlWriter xmlWriter) {
            this.xml = xmlWriter;
        }

        @Override // com.amazonaws.services.s3.model.lifecycle.LifecyclePredicateVisitor
        public void visit(LifecycleAndOperator lifecycleAndOperator) {
            this.xml.a("And");
            for (LifecycleFilterPredicate lifecycleFilterPredicate : lifecycleAndOperator.getOperands()) {
                lifecycleFilterPredicate.accept(this);
            }
            this.xml.a();
        }

        @Override // com.amazonaws.services.s3.model.lifecycle.LifecyclePredicateVisitor
        public void visit(LifecyclePrefixPredicate lifecyclePrefixPredicate) {
            BucketConfigurationXmlFactory.this.writePrefix(this.xml, lifecyclePrefixPredicate.getPrefix());
        }

        @Override // com.amazonaws.services.s3.model.lifecycle.LifecyclePredicateVisitor
        public void visit(LifecycleTagPredicate lifecycleTagPredicate) {
            BucketConfigurationXmlFactory.this.writeTag(this.xml, lifecycleTagPredicate.getTag());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl.class */
    public class MetricsPredicateVisitorImpl implements MetricsPredicateVisitor {
        private final XmlWriter xml;

        public MetricsPredicateVisitorImpl(XmlWriter xmlWriter) {
            this.xml = xmlWriter;
        }

        @Override // com.amazonaws.services.s3.model.metrics.MetricsPredicateVisitor
        public void visit(MetricsAndOperator metricsAndOperator) {
            this.xml.a("And");
            for (MetricsFilterPredicate metricsFilterPredicate : metricsAndOperator.getOperands()) {
                metricsFilterPredicate.accept(this);
            }
            this.xml.a();
        }

        @Override // com.amazonaws.services.s3.model.metrics.MetricsPredicateVisitor
        public void visit(MetricsPrefixPredicate metricsPrefixPredicate) {
            BucketConfigurationXmlFactory.this.writePrefix(this.xml, metricsPrefixPredicate.getPrefix());
        }

        @Override // com.amazonaws.services.s3.model.metrics.MetricsPredicateVisitor
        public void visit(MetricsTagPredicate metricsTagPredicate) {
            BucketConfigurationXmlFactory.this.writeTag(this.xml, metricsTagPredicate.getTag());
        }
    }

    private void addEventsAndFilterCriteria(XmlWriter xmlWriter, NotificationConfiguration notificationConfiguration) {
        for (String str : notificationConfiguration.getEvents()) {
            xmlWriter.a("Event").b(str).a();
        }
        Filter filter = notificationConfiguration.getFilter();
        if (filter != null) {
            validateFilter(filter);
            xmlWriter.a("Filter");
            if (filter.getS3KeyFilter() != null) {
                validateS3KeyFilter(filter.getS3KeyFilter());
                xmlWriter.a("S3Key");
                for (FilterRule filterRule : filter.getS3KeyFilter().getFilterRules()) {
                    xmlWriter.a("FilterRule");
                    xmlWriter.a("Name").b(filterRule.getName()).a();
                    xmlWriter.a("Value").b(filterRule.getValue()).a();
                    xmlWriter.a();
                }
                xmlWriter.a();
            }
            xmlWriter.a();
        }
    }

    private void addInventoryOptionalFields(XmlWriter xmlWriter, List<String> list) {
        if (!isNullOrEmpty(list)) {
            xmlWriter.a("OptionalFields");
            for (String str : list) {
                xmlWriter.a("Field").b(str).a();
            }
            xmlWriter.a();
        }
    }

    private void addInventorySchedule(XmlWriter xmlWriter, InventorySchedule inventorySchedule) {
        if (inventorySchedule != null) {
            xmlWriter.a("Schedule");
            addParameterIfNotNull(xmlWriter, "Frequency", inventorySchedule.getFrequency());
            xmlWriter.a();
        }
    }

    private void addNoncurrentTransitions(XmlWriter xmlWriter, List<BucketLifecycleConfiguration.NoncurrentVersionTransition> list) {
        if (!(list == null || list.isEmpty())) {
            for (BucketLifecycleConfiguration.NoncurrentVersionTransition noncurrentVersionTransition : list) {
                if (noncurrentVersionTransition != null) {
                    xmlWriter.a("NoncurrentVersionTransition");
                    if (noncurrentVersionTransition.getDays() != -1) {
                        xmlWriter.a("NoncurrentDays");
                        xmlWriter.b(Integer.toString(noncurrentVersionTransition.getDays()));
                        xmlWriter.a();
                    }
                    xmlWriter.a("StorageClass");
                    xmlWriter.b(noncurrentVersionTransition.getStorageClass().toString());
                    xmlWriter.a();
                    xmlWriter.a();
                }
            }
        }
    }

    private void addParameterIfNotNull(XmlWriter xmlWriter, String str, String str2) {
        if (str2 != null) {
            xmlWriter.a(str).b(str2).a();
        }
    }

    private void addTransitions(XmlWriter xmlWriter, List<BucketLifecycleConfiguration.Transition> list) {
        if (!(list == null || list.isEmpty())) {
            for (BucketLifecycleConfiguration.Transition transition : list) {
                if (transition != null) {
                    xmlWriter.a("Transition");
                    if (transition.getDate() != null) {
                        xmlWriter.a("Date");
                        xmlWriter.b(ServiceUtils.a(transition.getDate()));
                        xmlWriter.a();
                    }
                    if (transition.getDays() != -1) {
                        xmlWriter.a("Days");
                        xmlWriter.b(Integer.toString(transition.getDays()));
                        xmlWriter.a();
                    }
                    xmlWriter.a("StorageClass");
                    xmlWriter.b(transition.getStorageClass().toString());
                    xmlWriter.a();
                    xmlWriter.a();
                }
            }
        }
    }

    private boolean hasCurrentExpirationPolicy(BucketLifecycleConfiguration.Rule rule) {
        return (rule.getExpirationInDays() == -1 && rule.getExpirationDate() == null && !rule.isExpiredObjectDeleteMarker()) ? false : true;
    }

    private boolean hasTags(TagSet tagSet) {
        return (tagSet == null || tagSet.getAllTags() == null || tagSet.getAllTags().size() <= 0) ? false : true;
    }

    private <T> boolean isNullOrEmpty(Collection<T> collection) {
        return collection == null || collection.isEmpty();
    }

    private void validateFilter(Filter filter) {
        if (filter.getS3KeyFilter() == null) {
            throw new AmazonClientException("Cannot have a Filter without any criteria");
        }
    }

    private void validateS3KeyFilter(S3KeyFilter s3KeyFilter) {
        if (isNullOrEmpty(s3KeyFilter.getFilterRules())) {
            throw new AmazonClientException("Cannot have an S3KeyFilter without any filter rules");
        }
    }

    private void writeAnalyticsExportDestination(XmlWriter xmlWriter, AnalyticsExportDestination analyticsExportDestination) {
        if (analyticsExportDestination != null) {
            xmlWriter.a("Destination");
            if (analyticsExportDestination.getS3BucketDestination() != null) {
                xmlWriter.a("S3BucketDestination");
                AnalyticsS3BucketDestination s3BucketDestination = analyticsExportDestination.getS3BucketDestination();
                addParameterIfNotNull(xmlWriter, "Format", s3BucketDestination.getFormat());
                addParameterIfNotNull(xmlWriter, "BucketAccountId", s3BucketDestination.getBucketAccountId());
                addParameterIfNotNull(xmlWriter, "Bucket", s3BucketDestination.getBucketArn());
                addParameterIfNotNull(xmlWriter, "Prefix", s3BucketDestination.getPrefix());
                xmlWriter.a();
            }
            xmlWriter.a();
        }
    }

    private void writeAnalyticsFilter(XmlWriter xmlWriter, AnalyticsFilter analyticsFilter) {
        if (analyticsFilter != null) {
            xmlWriter.a("Filter");
            writeAnalyticsFilterPredicate(xmlWriter, analyticsFilter.getPredicate());
            xmlWriter.a();
        }
    }

    private void writeAnalyticsFilterPredicate(XmlWriter xmlWriter, AnalyticsFilterPredicate analyticsFilterPredicate) {
        if (analyticsFilterPredicate != null) {
            analyticsFilterPredicate.accept(new AnalyticsPredicateVisitorImpl(xmlWriter));
        }
    }

    private void writeInventoryDestination(XmlWriter xmlWriter, InventoryDestination inventoryDestination) {
        if (inventoryDestination != null) {
            xmlWriter.a("Destination");
            InventoryS3BucketDestination s3BucketDestination = inventoryDestination.getS3BucketDestination();
            if (s3BucketDestination != null) {
                xmlWriter.a("S3BucketDestination");
                addParameterIfNotNull(xmlWriter, "AccountId", s3BucketDestination.getAccountId());
                addParameterIfNotNull(xmlWriter, "Bucket", s3BucketDestination.getBucketArn());
                addParameterIfNotNull(xmlWriter, "Prefix", s3BucketDestination.getPrefix());
                addParameterIfNotNull(xmlWriter, "Format", s3BucketDestination.getFormat());
                xmlWriter.a();
            }
            xmlWriter.a();
        }
    }

    private void writeInventoryFilter(XmlWriter xmlWriter, InventoryFilter inventoryFilter) {
        if (inventoryFilter != null) {
            xmlWriter.a("Filter");
            writeInventoryFilterPredicate(xmlWriter, inventoryFilter.getPredicate());
            xmlWriter.a();
        }
    }

    private void writeInventoryFilterPredicate(XmlWriter xmlWriter, InventoryFilterPredicate inventoryFilterPredicate) {
        if (inventoryFilterPredicate != null && (inventoryFilterPredicate instanceof InventoryPrefixPredicate)) {
            writePrefix(xmlWriter, ((InventoryPrefixPredicate) inventoryFilterPredicate).getPrefix());
        }
    }

    private void writeLifecycleFilter(XmlWriter xmlWriter, LifecycleFilter lifecycleFilter) {
        if (lifecycleFilter != null) {
            xmlWriter.a("Filter");
            writeLifecycleFilterPredicate(xmlWriter, lifecycleFilter.getPredicate());
            xmlWriter.a();
        }
    }

    private void writeLifecycleFilterPredicate(XmlWriter xmlWriter, LifecycleFilterPredicate lifecycleFilterPredicate) {
        if (lifecycleFilterPredicate != null) {
            lifecycleFilterPredicate.accept(new LifecyclePredicateVisitorImpl(xmlWriter));
        }
    }

    private void writeMetricsFilter(XmlWriter xmlWriter, MetricsFilter metricsFilter) {
        if (metricsFilter != null) {
            xmlWriter.a("Filter");
            writeMetricsFilterPredicate(xmlWriter, metricsFilter.getPredicate());
            xmlWriter.a();
        }
    }

    private void writeMetricsFilterPredicate(XmlWriter xmlWriter, MetricsFilterPredicate metricsFilterPredicate) {
        if (metricsFilterPredicate != null) {
            metricsFilterPredicate.accept(new MetricsPredicateVisitorImpl(xmlWriter));
        }
    }

    private void writePrefix(XmlWriter xmlWriter, BucketLifecycleConfiguration.Rule rule) {
        if (rule.getFilter() == null) {
            xmlWriter.a("Prefix").b(rule.getPrefix() == null ? "" : rule.getPrefix()).a();
        } else if (rule.getPrefix() != null) {
            throw new IllegalArgumentException("Prefix cannot be used with Filter. Use LifecyclePrefixPredicate to create a LifecycleFilter");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writePrefix(XmlWriter xmlWriter, String str) {
        addParameterIfNotNull(xmlWriter, "Prefix", str);
    }

    private void writeRule(XmlWriter xmlWriter, BucketLifecycleConfiguration.Rule rule) {
        xmlWriter.a("Rule");
        if (rule.getId() != null) {
            xmlWriter.a("ID").b(rule.getId()).a();
        }
        writePrefix(xmlWriter, rule);
        xmlWriter.a("Status").b(rule.getStatus()).a();
        writeLifecycleFilter(xmlWriter, rule.getFilter());
        addTransitions(xmlWriter, rule.getTransitions());
        addNoncurrentTransitions(xmlWriter, rule.getNoncurrentVersionTransitions());
        if (hasCurrentExpirationPolicy(rule)) {
            xmlWriter.a("Expiration");
            if (rule.getExpirationInDays() != -1) {
                XmlWriter a2 = xmlWriter.a("Days");
                StringBuilder sb = new StringBuilder();
                sb.append(rule.getExpirationInDays());
                a2.b(sb.toString()).a();
            }
            if (rule.getExpirationDate() != null) {
                xmlWriter.a("Date").b(ServiceUtils.a(rule.getExpirationDate())).a();
            }
            if (rule.isExpiredObjectDeleteMarker()) {
                xmlWriter.a("ExpiredObjectDeleteMarker").b("true").a();
            }
            xmlWriter.a();
        }
        if (rule.getNoncurrentVersionExpirationInDays() != -1) {
            xmlWriter.a("NoncurrentVersionExpiration");
            xmlWriter.a("NoncurrentDays").b(Integer.toString(rule.getNoncurrentVersionExpirationInDays())).a();
            xmlWriter.a();
        }
        if (rule.getAbortIncompleteMultipartUpload() != null) {
            xmlWriter.a("AbortIncompleteMultipartUpload");
            xmlWriter.a("DaysAfterInitiation").b(Integer.toString(rule.getAbortIncompleteMultipartUpload().getDaysAfterInitiation())).a();
            xmlWriter.a();
        }
        xmlWriter.a();
    }

    private void writeRule(XmlWriter xmlWriter, CORSRule cORSRule) {
        xmlWriter.a("CORSRule");
        if (cORSRule.getId() != null) {
            xmlWriter.a("ID").b(cORSRule.getId()).a();
        }
        if (cORSRule.getAllowedOrigins() != null) {
            for (String str : cORSRule.getAllowedOrigins()) {
                xmlWriter.a("AllowedOrigin").b(str).a();
            }
        }
        if (cORSRule.getAllowedMethods() != null) {
            for (CORSRule.AllowedMethods allowedMethods : cORSRule.getAllowedMethods()) {
                xmlWriter.a("AllowedMethod").b(allowedMethods.toString()).a();
            }
        }
        if (cORSRule.getMaxAgeSeconds() != 0) {
            xmlWriter.a("MaxAgeSeconds").b(Integer.toString(cORSRule.getMaxAgeSeconds())).a();
        }
        if (cORSRule.getExposedHeaders() != null) {
            for (String str2 : cORSRule.getExposedHeaders()) {
                xmlWriter.a("ExposeHeader").b(str2).a();
            }
        }
        if (cORSRule.getAllowedHeaders() != null) {
            for (String str3 : cORSRule.getAllowedHeaders()) {
                xmlWriter.a("AllowedHeader").b(str3).a();
            }
        }
        xmlWriter.a();
    }

    private void writeRule(XmlWriter xmlWriter, RoutingRule routingRule) {
        xmlWriter.a("RoutingRule");
        RoutingRuleCondition condition = routingRule.getCondition();
        if (condition != null) {
            xmlWriter.a(JsonDocumentFields.CONDITION);
            xmlWriter.a("KeyPrefixEquals");
            if (condition.getKeyPrefixEquals() != null) {
                xmlWriter.b(condition.getKeyPrefixEquals());
            }
            xmlWriter.a();
            if (condition.getHttpErrorCodeReturnedEquals() != null) {
                xmlWriter.a("HttpErrorCodeReturnedEquals ").b(condition.getHttpErrorCodeReturnedEquals()).a();
            }
            xmlWriter.a();
        }
        xmlWriter.a("Redirect");
        RedirectRule redirect = routingRule.getRedirect();
        if (redirect != null) {
            if (redirect.getprotocol() != null) {
                xmlWriter.a("Protocol").b(redirect.getprotocol()).a();
            }
            if (redirect.getHostName() != null) {
                xmlWriter.a("HostName").b(redirect.getHostName()).a();
            }
            if (redirect.getReplaceKeyPrefixWith() != null) {
                xmlWriter.a("ReplaceKeyPrefixWith").b(redirect.getReplaceKeyPrefixWith()).a();
            }
            if (redirect.getReplaceKeyWith() != null) {
                xmlWriter.a("ReplaceKeyWith").b(redirect.getReplaceKeyWith()).a();
            }
            if (redirect.getHttpRedirectCode() != null) {
                xmlWriter.a("HttpRedirectCode").b(redirect.getHttpRedirectCode()).a();
            }
        }
        xmlWriter.a();
        xmlWriter.a();
    }

    private void writeRule(XmlWriter xmlWriter, TagSet tagSet) {
        xmlWriter.a("TagSet");
        for (String str : tagSet.getAllTags().keySet()) {
            xmlWriter.a("Tag");
            xmlWriter.a("Key").b(str).a();
            xmlWriter.a("Value").b(tagSet.getTag(str)).a();
            xmlWriter.a();
        }
        xmlWriter.a();
    }

    private void writeStorageClassAnalysis(XmlWriter xmlWriter, StorageClassAnalysis storageClassAnalysis) {
        if (storageClassAnalysis != null) {
            xmlWriter.a("StorageClassAnalysis");
            if (storageClassAnalysis.getDataExport() != null) {
                StorageClassAnalysisDataExport dataExport = storageClassAnalysis.getDataExport();
                xmlWriter.a("DataExport");
                addParameterIfNotNull(xmlWriter, "OutputSchemaVersion", dataExport.getOutputSchemaVersion());
                writeAnalyticsExportDestination(xmlWriter, dataExport.getDestination());
                xmlWriter.a();
            }
            xmlWriter.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeTag(XmlWriter xmlWriter, Tag tag) {
        if (tag != null) {
            xmlWriter.a("Tag");
            xmlWriter.a("Key").b(tag.getKey()).a();
            xmlWriter.a("Value").b(tag.getValue()).a();
            xmlWriter.a();
        }
    }

    public byte[] convertToXmlByteArray(BucketAccelerateConfiguration bucketAccelerateConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("AccelerateConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        xmlWriter.a("Status").b(bucketAccelerateConfiguration.getStatus()).a();
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketCrossOriginConfiguration bucketCrossOriginConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("CORSConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        for (CORSRule cORSRule : bucketCrossOriginConfiguration.getRules()) {
            writeRule(xmlWriter, cORSRule);
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketLifecycleConfiguration bucketLifecycleConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("LifecycleConfiguration");
        for (BucketLifecycleConfiguration.Rule rule : bucketLifecycleConfiguration.getRules()) {
            writeRule(xmlWriter, rule);
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketLoggingConfiguration bucketLoggingConfiguration) {
        bucketLoggingConfiguration.getLogFilePrefix();
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("BucketLoggingStatus", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        if (bucketLoggingConfiguration.isLoggingEnabled()) {
            xmlWriter.a("LoggingEnabled");
            xmlWriter.a("TargetBucket").b(bucketLoggingConfiguration.getDestinationBucketName()).a();
            xmlWriter.a("TargetPrefix").b(bucketLoggingConfiguration.getLogFilePrefix()).a();
            xmlWriter.a();
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketNotificationConfiguration bucketNotificationConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("NotificationConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        for (Map.Entry<String, NotificationConfiguration> entry : bucketNotificationConfiguration.getConfigurations().entrySet()) {
            String key = entry.getKey();
            NotificationConfiguration value = entry.getValue();
            if (value instanceof BucketNotificationConfiguration.TopicConfiguration) {
                xmlWriter.a("TopicConfiguration");
                xmlWriter.a(JsonDocumentFields.POLICY_ID).b(key).a();
                xmlWriter.a("Topic").b(((BucketNotificationConfiguration.TopicConfiguration) value).getTopicARN()).a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.a();
            } else if (value instanceof QueueConfiguration) {
                xmlWriter.a("QueueConfiguration");
                xmlWriter.a(JsonDocumentFields.POLICY_ID).b(key).a();
                xmlWriter.a("Queue").b(((QueueConfiguration) value).getQueueARN()).a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.a();
            } else if (value instanceof CloudFunctionConfiguration) {
                xmlWriter.a("CloudFunctionConfiguration");
                xmlWriter.a(JsonDocumentFields.POLICY_ID).b(key).a();
                XmlWriter a2 = xmlWriter.a("InvocationRole");
                CloudFunctionConfiguration cloudFunctionConfiguration = (CloudFunctionConfiguration) value;
                a2.b(cloudFunctionConfiguration.getInvocationRoleARN()).a();
                xmlWriter.a("CloudFunction").b(cloudFunctionConfiguration.getCloudFunctionARN()).a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.a();
            } else if (value instanceof LambdaConfiguration) {
                xmlWriter.a("CloudFunctionConfiguration");
                xmlWriter.a(JsonDocumentFields.POLICY_ID).b(key).a();
                xmlWriter.a("CloudFunction").b(((LambdaConfiguration) value).getFunctionARN()).a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.a();
            }
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketReplicationConfiguration bucketReplicationConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("ReplicationConfiguration");
        Map<String, ReplicationRule> rules = bucketReplicationConfiguration.getRules();
        xmlWriter.a("Role").b(bucketReplicationConfiguration.getRoleARN()).a();
        for (Map.Entry<String, ReplicationRule> entry : rules.entrySet()) {
            String key = entry.getKey();
            ReplicationRule value = entry.getValue();
            xmlWriter.a("Rule");
            xmlWriter.a("ID").b(key).a();
            xmlWriter.a("Prefix").b(value.getPrefix()).a();
            xmlWriter.a("Status").b(value.getStatus()).a();
            ReplicationDestinationConfig destinationConfig = value.getDestinationConfig();
            xmlWriter.a("Destination");
            xmlWriter.a("Bucket").b(destinationConfig.getBucketARN()).a();
            if (destinationConfig.getStorageClass() != null) {
                xmlWriter.a("StorageClass").b(destinationConfig.getStorageClass()).a();
            }
            xmlWriter.a();
            xmlWriter.a();
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketTaggingConfiguration bucketTaggingConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("Tagging");
        for (TagSet tagSet : bucketTaggingConfiguration.getAllTagSets()) {
            writeRule(xmlWriter, tagSet);
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketVersioningConfiguration bucketVersioningConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("VersioningConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        xmlWriter.a("Status").b(bucketVersioningConfiguration.getStatus()).a();
        Boolean isMfaDeleteEnabled = bucketVersioningConfiguration.isMfaDeleteEnabled();
        if (isMfaDeleteEnabled != null) {
            if (isMfaDeleteEnabled.booleanValue()) {
                xmlWriter.a("MfaDelete").b("Enabled").a();
            } else {
                xmlWriter.a("MfaDelete").b(BucketLifecycleConfiguration.DISABLED).a();
            }
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(BucketWebsiteConfiguration bucketWebsiteConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("WebsiteConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        if (bucketWebsiteConfiguration.getIndexDocumentSuffix() != null) {
            XmlWriter a2 = xmlWriter.a("IndexDocument");
            a2.a("Suffix").b(bucketWebsiteConfiguration.getIndexDocumentSuffix()).a();
            a2.a();
        }
        if (bucketWebsiteConfiguration.getErrorDocument() != null) {
            XmlWriter a3 = xmlWriter.a("ErrorDocument");
            a3.a("Key").b(bucketWebsiteConfiguration.getErrorDocument()).a();
            a3.a();
        }
        RedirectRule redirectAllRequestsTo = bucketWebsiteConfiguration.getRedirectAllRequestsTo();
        if (redirectAllRequestsTo != null) {
            XmlWriter a4 = xmlWriter.a("RedirectAllRequestsTo");
            if (redirectAllRequestsTo.getprotocol() != null) {
                xmlWriter.a("Protocol").b(redirectAllRequestsTo.getprotocol()).a();
            }
            if (redirectAllRequestsTo.getHostName() != null) {
                xmlWriter.a("HostName").b(redirectAllRequestsTo.getHostName()).a();
            }
            if (redirectAllRequestsTo.getReplaceKeyPrefixWith() != null) {
                xmlWriter.a("ReplaceKeyPrefixWith").b(redirectAllRequestsTo.getReplaceKeyPrefixWith()).a();
            }
            if (redirectAllRequestsTo.getReplaceKeyWith() != null) {
                xmlWriter.a("ReplaceKeyWith").b(redirectAllRequestsTo.getReplaceKeyWith()).a();
            }
            a4.a();
        }
        if (bucketWebsiteConfiguration.getRoutingRules() != null && bucketWebsiteConfiguration.getRoutingRules().size() > 0) {
            XmlWriter a5 = xmlWriter.a("RoutingRules");
            for (RoutingRule routingRule : bucketWebsiteConfiguration.getRoutingRules()) {
                writeRule(a5, routingRule);
            }
            a5.a();
        }
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(AnalyticsConfiguration analyticsConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("AnalyticsConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        addParameterIfNotNull(xmlWriter, JsonDocumentFields.POLICY_ID, analyticsConfiguration.getId());
        writeAnalyticsFilter(xmlWriter, analyticsConfiguration.getFilter());
        writeStorageClassAnalysis(xmlWriter, analyticsConfiguration.getStorageClassAnalysis());
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(InventoryConfiguration inventoryConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("InventoryConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        xmlWriter.a(JsonDocumentFields.POLICY_ID).b(inventoryConfiguration.getId()).a();
        xmlWriter.a("IsEnabled").b(String.valueOf(inventoryConfiguration.isEnabled())).a();
        xmlWriter.a("IncludedObjectVersions").b(inventoryConfiguration.getIncludedObjectVersions()).a();
        writeInventoryDestination(xmlWriter, inventoryConfiguration.getDestination());
        writeInventoryFilter(xmlWriter, inventoryConfiguration.getInventoryFilter());
        addInventorySchedule(xmlWriter, inventoryConfiguration.getSchedule());
        addInventoryOptionalFields(xmlWriter, inventoryConfiguration.getOptionalFields());
        xmlWriter.a();
        return xmlWriter.b();
    }

    public byte[] convertToXmlByteArray(MetricsConfiguration metricsConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("MetricsConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        addParameterIfNotNull(xmlWriter, JsonDocumentFields.POLICY_ID, metricsConfiguration.getId());
        writeMetricsFilter(xmlWriter, metricsConfiguration.getFilter());
        xmlWriter.a();
        return xmlWriter.b();
    }
}
