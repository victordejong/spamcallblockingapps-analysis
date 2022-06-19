package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.p101s3.internal.ServiceUtils;
import com.amazonaws.services.p101s3.internal.XmlWriter;
import com.amazonaws.services.p101s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.p101s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.p101s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.p101s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.p101s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.p101s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.p101s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.p101s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.p101s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.p101s3.model.CORSRule;
import com.amazonaws.services.p101s3.model.CloudFunctionConfiguration;
import com.amazonaws.services.p101s3.model.Filter;
import com.amazonaws.services.p101s3.model.FilterRule;
import com.amazonaws.services.p101s3.model.LambdaConfiguration;
import com.amazonaws.services.p101s3.model.NotificationConfiguration;
import com.amazonaws.services.p101s3.model.QueueConfiguration;
import com.amazonaws.services.p101s3.model.RedirectRule;
import com.amazonaws.services.p101s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.p101s3.model.ReplicationRule;
import com.amazonaws.services.p101s3.model.RoutingRule;
import com.amazonaws.services.p101s3.model.RoutingRuleCondition;
import com.amazonaws.services.p101s3.model.S3KeyFilter;
import com.amazonaws.services.p101s3.model.Tag;
import com.amazonaws.services.p101s3.model.TagSet;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsAndOperator;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsConfiguration;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsExportDestination;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsFilter;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsFilterPredicate;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsPredicateVisitor;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsPrefixPredicate;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsS3BucketDestination;
import com.amazonaws.services.p101s3.model.analytics.AnalyticsTagPredicate;
import com.amazonaws.services.p101s3.model.analytics.StorageClassAnalysis;
import com.amazonaws.services.p101s3.model.analytics.StorageClassAnalysisDataExport;
import com.amazonaws.services.p101s3.model.inventory.InventoryConfiguration;
import com.amazonaws.services.p101s3.model.inventory.InventoryDestination;
import com.amazonaws.services.p101s3.model.inventory.InventoryFilter;
import com.amazonaws.services.p101s3.model.inventory.InventoryFilterPredicate;
import com.amazonaws.services.p101s3.model.inventory.InventoryPrefixPredicate;
import com.amazonaws.services.p101s3.model.inventory.InventoryS3BucketDestination;
import com.amazonaws.services.p101s3.model.inventory.InventorySchedule;
import com.amazonaws.services.p101s3.model.lifecycle.LifecycleAndOperator;
import com.amazonaws.services.p101s3.model.lifecycle.LifecycleFilter;
import com.amazonaws.services.p101s3.model.lifecycle.LifecycleFilterPredicate;
import com.amazonaws.services.p101s3.model.lifecycle.LifecyclePredicateVisitor;
import com.amazonaws.services.p101s3.model.lifecycle.LifecyclePrefixPredicate;
import com.amazonaws.services.p101s3.model.lifecycle.LifecycleTagPredicate;
import com.amazonaws.services.p101s3.model.metrics.MetricsAndOperator;
import com.amazonaws.services.p101s3.model.metrics.MetricsConfiguration;
import com.amazonaws.services.p101s3.model.metrics.MetricsFilter;
import com.amazonaws.services.p101s3.model.metrics.MetricsFilterPredicate;
import com.amazonaws.services.p101s3.model.metrics.MetricsPredicateVisitor;
import com.amazonaws.services.p101s3.model.metrics.MetricsPrefixPredicate;
import com.amazonaws.services.p101s3.model.metrics.MetricsTagPredicate;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory.class */
public class BucketConfigurationXmlFactory {

    /* renamed from: com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl.class */
    public class AnalyticsPredicateVisitorImpl implements AnalyticsPredicateVisitor {
        private final XmlWriter xml;

        public AnalyticsPredicateVisitorImpl(XmlWriter xmlWriter) {
            BucketConfigurationXmlFactory.this = r4;
            this.xml = xmlWriter;
        }

        @Override // com.amazonaws.services.p101s3.model.analytics.AnalyticsPredicateVisitor
        public void visit(AnalyticsAndOperator analyticsAndOperator) {
            this.xml.m38396a("And");
            for (AnalyticsFilterPredicate analyticsFilterPredicate : analyticsAndOperator.getOperands()) {
                analyticsFilterPredicate.accept(this);
            }
            this.xml.m38397a();
        }

        @Override // com.amazonaws.services.p101s3.model.analytics.AnalyticsPredicateVisitor
        public void visit(AnalyticsPrefixPredicate analyticsPrefixPredicate) {
            BucketConfigurationXmlFactory.this.writePrefix(this.xml, analyticsPrefixPredicate.getPrefix());
        }

        @Override // com.amazonaws.services.p101s3.model.analytics.AnalyticsPredicateVisitor
        public void visit(AnalyticsTagPredicate analyticsTagPredicate) {
            BucketConfigurationXmlFactory.this.writeTag(this.xml, analyticsTagPredicate.getTag());
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl.class */
    public class LifecyclePredicateVisitorImpl implements LifecyclePredicateVisitor {
        private final XmlWriter xml;

        public LifecyclePredicateVisitorImpl(XmlWriter xmlWriter) {
            BucketConfigurationXmlFactory.this = r4;
            this.xml = xmlWriter;
        }

        @Override // com.amazonaws.services.p101s3.model.lifecycle.LifecyclePredicateVisitor
        public void visit(LifecycleAndOperator lifecycleAndOperator) {
            this.xml.m38396a("And");
            for (LifecycleFilterPredicate lifecycleFilterPredicate : lifecycleAndOperator.getOperands()) {
                lifecycleFilterPredicate.accept(this);
            }
            this.xml.m38397a();
        }

        @Override // com.amazonaws.services.p101s3.model.lifecycle.LifecyclePredicateVisitor
        public void visit(LifecyclePrefixPredicate lifecyclePrefixPredicate) {
            BucketConfigurationXmlFactory.this.writePrefix(this.xml, lifecyclePrefixPredicate.getPrefix());
        }

        @Override // com.amazonaws.services.p101s3.model.lifecycle.LifecyclePredicateVisitor
        public void visit(LifecycleTagPredicate lifecycleTagPredicate) {
            BucketConfigurationXmlFactory.this.writeTag(this.xml, lifecycleTagPredicate.getTag());
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl.class */
    public class MetricsPredicateVisitorImpl implements MetricsPredicateVisitor {
        private final XmlWriter xml;

        public MetricsPredicateVisitorImpl(XmlWriter xmlWriter) {
            BucketConfigurationXmlFactory.this = r4;
            this.xml = xmlWriter;
        }

        @Override // com.amazonaws.services.p101s3.model.metrics.MetricsPredicateVisitor
        public void visit(MetricsAndOperator metricsAndOperator) {
            this.xml.m38396a("And");
            for (MetricsFilterPredicate metricsFilterPredicate : metricsAndOperator.getOperands()) {
                metricsFilterPredicate.accept(this);
            }
            this.xml.m38397a();
        }

        @Override // com.amazonaws.services.p101s3.model.metrics.MetricsPredicateVisitor
        public void visit(MetricsPrefixPredicate metricsPrefixPredicate) {
            BucketConfigurationXmlFactory.this.writePrefix(this.xml, metricsPrefixPredicate.getPrefix());
        }

        @Override // com.amazonaws.services.p101s3.model.metrics.MetricsPredicateVisitor
        public void visit(MetricsTagPredicate metricsTagPredicate) {
            BucketConfigurationXmlFactory.this.writeTag(this.xml, metricsTagPredicate.getTag());
        }
    }

    private void addEventsAndFilterCriteria(XmlWriter xmlWriter, NotificationConfiguration notificationConfiguration) {
        for (String str : notificationConfiguration.getEvents()) {
            xmlWriter.m38396a("Event").m38390b(str).m38397a();
        }
        Filter filter = notificationConfiguration.getFilter();
        if (filter != null) {
            validateFilter(filter);
            xmlWriter.m38396a("Filter");
            if (filter.getS3KeyFilter() != null) {
                validateS3KeyFilter(filter.getS3KeyFilter());
                xmlWriter.m38396a("S3Key");
                for (FilterRule filterRule : filter.getS3KeyFilter().getFilterRules()) {
                    xmlWriter.m38396a("FilterRule");
                    xmlWriter.m38396a("Name").m38390b(filterRule.getName()).m38397a();
                    xmlWriter.m38396a("Value").m38390b(filterRule.getValue()).m38397a();
                    xmlWriter.m38397a();
                }
                xmlWriter.m38397a();
            }
            xmlWriter.m38397a();
        }
    }

    private void addInventoryOptionalFields(XmlWriter xmlWriter, List<String> list) {
        if (isNullOrEmpty(list)) {
            return;
        }
        xmlWriter.m38396a("OptionalFields");
        for (String str : list) {
            xmlWriter.m38396a("Field").m38390b(str).m38397a();
        }
        xmlWriter.m38397a();
    }

    private void addInventorySchedule(XmlWriter xmlWriter, InventorySchedule inventorySchedule) {
        if (inventorySchedule == null) {
            return;
        }
        xmlWriter.m38396a("Schedule");
        addParameterIfNotNull(xmlWriter, "Frequency", inventorySchedule.getFrequency());
        xmlWriter.m38397a();
    }

    private void addNoncurrentTransitions(XmlWriter xmlWriter, List<BucketLifecycleConfiguration.NoncurrentVersionTransition> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (BucketLifecycleConfiguration.NoncurrentVersionTransition noncurrentVersionTransition : list) {
            if (noncurrentVersionTransition != null) {
                xmlWriter.m38396a("NoncurrentVersionTransition");
                if (noncurrentVersionTransition.getDays() != -1) {
                    xmlWriter.m38396a("NoncurrentDays");
                    xmlWriter.m38390b(Integer.toString(noncurrentVersionTransition.getDays()));
                    xmlWriter.m38397a();
                }
                xmlWriter.m38396a("StorageClass");
                xmlWriter.m38390b(noncurrentVersionTransition.getStorageClass().toString());
                xmlWriter.m38397a();
                xmlWriter.m38397a();
            }
        }
    }

    private void addParameterIfNotNull(XmlWriter xmlWriter, String str, String str2) {
        if (str2 != null) {
            xmlWriter.m38396a(str).m38390b(str2).m38397a();
        }
    }

    private void addTransitions(XmlWriter xmlWriter, List<BucketLifecycleConfiguration.Transition> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (BucketLifecycleConfiguration.Transition transition : list) {
            if (transition != null) {
                xmlWriter.m38396a("Transition");
                if (transition.getDate() != null) {
                    xmlWriter.m38396a("Date");
                    xmlWriter.m38390b(ServiceUtils.m38404a(transition.getDate()));
                    xmlWriter.m38397a();
                }
                if (transition.getDays() != -1) {
                    xmlWriter.m38396a("Days");
                    xmlWriter.m38390b(Integer.toString(transition.getDays()));
                    xmlWriter.m38397a();
                }
                xmlWriter.m38396a("StorageClass");
                xmlWriter.m38390b(transition.getStorageClass().toString());
                xmlWriter.m38397a();
                xmlWriter.m38397a();
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
        if (filter.getS3KeyFilter() != null) {
            return;
        }
        throw new AmazonClientException("Cannot have a Filter without any criteria");
    }

    private void validateS3KeyFilter(S3KeyFilter s3KeyFilter) {
        if (!isNullOrEmpty(s3KeyFilter.getFilterRules())) {
            return;
        }
        throw new AmazonClientException("Cannot have an S3KeyFilter without any filter rules");
    }

    private void writeAnalyticsExportDestination(XmlWriter xmlWriter, AnalyticsExportDestination analyticsExportDestination) {
        if (analyticsExportDestination == null) {
            return;
        }
        xmlWriter.m38396a("Destination");
        if (analyticsExportDestination.getS3BucketDestination() != null) {
            xmlWriter.m38396a("S3BucketDestination");
            AnalyticsS3BucketDestination s3BucketDestination = analyticsExportDestination.getS3BucketDestination();
            addParameterIfNotNull(xmlWriter, "Format", s3BucketDestination.getFormat());
            addParameterIfNotNull(xmlWriter, "BucketAccountId", s3BucketDestination.getBucketAccountId());
            addParameterIfNotNull(xmlWriter, "Bucket", s3BucketDestination.getBucketArn());
            addParameterIfNotNull(xmlWriter, "Prefix", s3BucketDestination.getPrefix());
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
    }

    private void writeAnalyticsFilter(XmlWriter xmlWriter, AnalyticsFilter analyticsFilter) {
        if (analyticsFilter == null) {
            return;
        }
        xmlWriter.m38396a("Filter");
        writeAnalyticsFilterPredicate(xmlWriter, analyticsFilter.getPredicate());
        xmlWriter.m38397a();
    }

    private void writeAnalyticsFilterPredicate(XmlWriter xmlWriter, AnalyticsFilterPredicate analyticsFilterPredicate) {
        if (analyticsFilterPredicate == null) {
            return;
        }
        analyticsFilterPredicate.accept(new AnalyticsPredicateVisitorImpl(xmlWriter));
    }

    private void writeInventoryDestination(XmlWriter xmlWriter, InventoryDestination inventoryDestination) {
        if (inventoryDestination == null) {
            return;
        }
        xmlWriter.m38396a("Destination");
        InventoryS3BucketDestination s3BucketDestination = inventoryDestination.getS3BucketDestination();
        if (s3BucketDestination != null) {
            xmlWriter.m38396a("S3BucketDestination");
            addParameterIfNotNull(xmlWriter, "AccountId", s3BucketDestination.getAccountId());
            addParameterIfNotNull(xmlWriter, "Bucket", s3BucketDestination.getBucketArn());
            addParameterIfNotNull(xmlWriter, "Prefix", s3BucketDestination.getPrefix());
            addParameterIfNotNull(xmlWriter, "Format", s3BucketDestination.getFormat());
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
    }

    private void writeInventoryFilter(XmlWriter xmlWriter, InventoryFilter inventoryFilter) {
        if (inventoryFilter == null) {
            return;
        }
        xmlWriter.m38396a("Filter");
        writeInventoryFilterPredicate(xmlWriter, inventoryFilter.getPredicate());
        xmlWriter.m38397a();
    }

    private void writeInventoryFilterPredicate(XmlWriter xmlWriter, InventoryFilterPredicate inventoryFilterPredicate) {
        if (inventoryFilterPredicate != null && (inventoryFilterPredicate instanceof InventoryPrefixPredicate)) {
            writePrefix(xmlWriter, ((InventoryPrefixPredicate) inventoryFilterPredicate).getPrefix());
        }
    }

    private void writeLifecycleFilter(XmlWriter xmlWriter, LifecycleFilter lifecycleFilter) {
        if (lifecycleFilter == null) {
            return;
        }
        xmlWriter.m38396a("Filter");
        writeLifecycleFilterPredicate(xmlWriter, lifecycleFilter.getPredicate());
        xmlWriter.m38397a();
    }

    private void writeLifecycleFilterPredicate(XmlWriter xmlWriter, LifecycleFilterPredicate lifecycleFilterPredicate) {
        if (lifecycleFilterPredicate == null) {
            return;
        }
        lifecycleFilterPredicate.accept(new LifecyclePredicateVisitorImpl(xmlWriter));
    }

    private void writeMetricsFilter(XmlWriter xmlWriter, MetricsFilter metricsFilter) {
        if (metricsFilter == null) {
            return;
        }
        xmlWriter.m38396a("Filter");
        writeMetricsFilterPredicate(xmlWriter, metricsFilter.getPredicate());
        xmlWriter.m38397a();
    }

    private void writeMetricsFilterPredicate(XmlWriter xmlWriter, MetricsFilterPredicate metricsFilterPredicate) {
        if (metricsFilterPredicate == null) {
            return;
        }
        metricsFilterPredicate.accept(new MetricsPredicateVisitorImpl(xmlWriter));
    }

    private void writePrefix(XmlWriter xmlWriter, BucketLifecycleConfiguration.Rule rule) {
        if (rule.getFilter() == null) {
            xmlWriter.m38396a("Prefix").m38390b(rule.getPrefix() == null ? "" : rule.getPrefix()).m38397a();
        } else if (rule.getPrefix() != null) {
            throw new IllegalArgumentException("Prefix cannot be used with Filter. Use LifecyclePrefixPredicate to create a LifecycleFilter");
        }
    }

    public void writePrefix(XmlWriter xmlWriter, String str) {
        addParameterIfNotNull(xmlWriter, "Prefix", str);
    }

    private void writeRule(XmlWriter xmlWriter, BucketLifecycleConfiguration.Rule rule) {
        xmlWriter.m38396a("Rule");
        if (rule.getId() != null) {
            xmlWriter.m38396a("ID").m38390b(rule.getId()).m38397a();
        }
        writePrefix(xmlWriter, rule);
        xmlWriter.m38396a("Status").m38390b(rule.getStatus()).m38397a();
        writeLifecycleFilter(xmlWriter, rule.getFilter());
        addTransitions(xmlWriter, rule.getTransitions());
        addNoncurrentTransitions(xmlWriter, rule.getNoncurrentVersionTransitions());
        if (hasCurrentExpirationPolicy(rule)) {
            xmlWriter.m38396a("Expiration");
            if (rule.getExpirationInDays() != -1) {
                XmlWriter m38396a = xmlWriter.m38396a("Days");
                StringBuilder sb = new StringBuilder();
                sb.append(rule.getExpirationInDays());
                m38396a.m38390b(sb.toString()).m38397a();
            }
            if (rule.getExpirationDate() != null) {
                xmlWriter.m38396a("Date").m38390b(ServiceUtils.m38404a(rule.getExpirationDate())).m38397a();
            }
            if (rule.isExpiredObjectDeleteMarker()) {
                xmlWriter.m38396a("ExpiredObjectDeleteMarker").m38390b("true").m38397a();
            }
            xmlWriter.m38397a();
        }
        if (rule.getNoncurrentVersionExpirationInDays() != -1) {
            xmlWriter.m38396a("NoncurrentVersionExpiration");
            xmlWriter.m38396a("NoncurrentDays").m38390b(Integer.toString(rule.getNoncurrentVersionExpirationInDays())).m38397a();
            xmlWriter.m38397a();
        }
        if (rule.getAbortIncompleteMultipartUpload() != null) {
            xmlWriter.m38396a("AbortIncompleteMultipartUpload");
            xmlWriter.m38396a("DaysAfterInitiation").m38390b(Integer.toString(rule.getAbortIncompleteMultipartUpload().getDaysAfterInitiation())).m38397a();
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
    }

    private void writeRule(XmlWriter xmlWriter, CORSRule cORSRule) {
        xmlWriter.m38396a("CORSRule");
        if (cORSRule.getId() != null) {
            xmlWriter.m38396a("ID").m38390b(cORSRule.getId()).m38397a();
        }
        if (cORSRule.getAllowedOrigins() != null) {
            for (String str : cORSRule.getAllowedOrigins()) {
                xmlWriter.m38396a("AllowedOrigin").m38390b(str).m38397a();
            }
        }
        if (cORSRule.getAllowedMethods() != null) {
            for (CORSRule.AllowedMethods allowedMethods : cORSRule.getAllowedMethods()) {
                xmlWriter.m38396a("AllowedMethod").m38390b(allowedMethods.toString()).m38397a();
            }
        }
        if (cORSRule.getMaxAgeSeconds() != 0) {
            xmlWriter.m38396a("MaxAgeSeconds").m38390b(Integer.toString(cORSRule.getMaxAgeSeconds())).m38397a();
        }
        if (cORSRule.getExposedHeaders() != null) {
            for (String str2 : cORSRule.getExposedHeaders()) {
                xmlWriter.m38396a("ExposeHeader").m38390b(str2).m38397a();
            }
        }
        if (cORSRule.getAllowedHeaders() != null) {
            for (String str3 : cORSRule.getAllowedHeaders()) {
                xmlWriter.m38396a("AllowedHeader").m38390b(str3).m38397a();
            }
        }
        xmlWriter.m38397a();
    }

    private void writeRule(XmlWriter xmlWriter, RoutingRule routingRule) {
        xmlWriter.m38396a("RoutingRule");
        RoutingRuleCondition condition = routingRule.getCondition();
        if (condition != null) {
            xmlWriter.m38396a(JsonDocumentFields.CONDITION);
            xmlWriter.m38396a("KeyPrefixEquals");
            if (condition.getKeyPrefixEquals() != null) {
                xmlWriter.m38390b(condition.getKeyPrefixEquals());
            }
            xmlWriter.m38397a();
            if (condition.getHttpErrorCodeReturnedEquals() != null) {
                xmlWriter.m38396a("HttpErrorCodeReturnedEquals ").m38390b(condition.getHttpErrorCodeReturnedEquals()).m38397a();
            }
            xmlWriter.m38397a();
        }
        xmlWriter.m38396a("Redirect");
        RedirectRule redirect = routingRule.getRedirect();
        if (redirect != null) {
            if (redirect.getprotocol() != null) {
                xmlWriter.m38396a("Protocol").m38390b(redirect.getprotocol()).m38397a();
            }
            if (redirect.getHostName() != null) {
                xmlWriter.m38396a("HostName").m38390b(redirect.getHostName()).m38397a();
            }
            if (redirect.getReplaceKeyPrefixWith() != null) {
                xmlWriter.m38396a("ReplaceKeyPrefixWith").m38390b(redirect.getReplaceKeyPrefixWith()).m38397a();
            }
            if (redirect.getReplaceKeyWith() != null) {
                xmlWriter.m38396a("ReplaceKeyWith").m38390b(redirect.getReplaceKeyWith()).m38397a();
            }
            if (redirect.getHttpRedirectCode() != null) {
                xmlWriter.m38396a("HttpRedirectCode").m38390b(redirect.getHttpRedirectCode()).m38397a();
            }
        }
        xmlWriter.m38397a();
        xmlWriter.m38397a();
    }

    private void writeRule(XmlWriter xmlWriter, TagSet tagSet) {
        xmlWriter.m38396a("TagSet");
        for (String str : tagSet.getAllTags().keySet()) {
            xmlWriter.m38396a("Tag");
            xmlWriter.m38396a("Key").m38390b(str).m38397a();
            xmlWriter.m38396a("Value").m38390b(tagSet.getTag(str)).m38397a();
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
    }

    private void writeStorageClassAnalysis(XmlWriter xmlWriter, StorageClassAnalysis storageClassAnalysis) {
        if (storageClassAnalysis == null) {
            return;
        }
        xmlWriter.m38396a("StorageClassAnalysis");
        if (storageClassAnalysis.getDataExport() != null) {
            StorageClassAnalysisDataExport dataExport = storageClassAnalysis.getDataExport();
            xmlWriter.m38396a("DataExport");
            addParameterIfNotNull(xmlWriter, "OutputSchemaVersion", dataExport.getOutputSchemaVersion());
            writeAnalyticsExportDestination(xmlWriter, dataExport.getDestination());
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
    }

    public void writeTag(XmlWriter xmlWriter, Tag tag) {
        if (tag == null) {
            return;
        }
        xmlWriter.m38396a("Tag");
        xmlWriter.m38396a("Key").m38390b(tag.getKey()).m38397a();
        xmlWriter.m38396a("Value").m38390b(tag.getValue()).m38397a();
        xmlWriter.m38397a();
    }

    public byte[] convertToXmlByteArray(BucketAccelerateConfiguration bucketAccelerateConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("AccelerateConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        xmlWriter.m38396a("Status").m38390b(bucketAccelerateConfiguration.getStatus()).m38397a();
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketCrossOriginConfiguration bucketCrossOriginConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("CORSConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        for (CORSRule cORSRule : bucketCrossOriginConfiguration.getRules()) {
            writeRule(xmlWriter, cORSRule);
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketLifecycleConfiguration bucketLifecycleConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("LifecycleConfiguration");
        for (BucketLifecycleConfiguration.Rule rule : bucketLifecycleConfiguration.getRules()) {
            writeRule(xmlWriter, rule);
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketLoggingConfiguration bucketLoggingConfiguration) {
        bucketLoggingConfiguration.getLogFilePrefix();
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("BucketLoggingStatus", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        if (bucketLoggingConfiguration.isLoggingEnabled()) {
            xmlWriter.m38396a("LoggingEnabled");
            xmlWriter.m38396a("TargetBucket").m38390b(bucketLoggingConfiguration.getDestinationBucketName()).m38397a();
            xmlWriter.m38396a("TargetPrefix").m38390b(bucketLoggingConfiguration.getLogFilePrefix()).m38397a();
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketNotificationConfiguration bucketNotificationConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("NotificationConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        for (Map.Entry<String, NotificationConfiguration> entry : bucketNotificationConfiguration.getConfigurations().entrySet()) {
            String key = entry.getKey();
            NotificationConfiguration value = entry.getValue();
            if (value instanceof BucketNotificationConfiguration.TopicConfiguration) {
                xmlWriter.m38396a("TopicConfiguration");
                xmlWriter.m38396a(JsonDocumentFields.POLICY_ID).m38390b(key).m38397a();
                xmlWriter.m38396a("Topic").m38390b(((BucketNotificationConfiguration.TopicConfiguration) value).getTopicARN()).m38397a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.m38397a();
            } else if (value instanceof QueueConfiguration) {
                xmlWriter.m38396a("QueueConfiguration");
                xmlWriter.m38396a(JsonDocumentFields.POLICY_ID).m38390b(key).m38397a();
                xmlWriter.m38396a("Queue").m38390b(((QueueConfiguration) value).getQueueARN()).m38397a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.m38397a();
            } else if (value instanceof CloudFunctionConfiguration) {
                xmlWriter.m38396a("CloudFunctionConfiguration");
                xmlWriter.m38396a(JsonDocumentFields.POLICY_ID).m38390b(key).m38397a();
                XmlWriter m38396a = xmlWriter.m38396a("InvocationRole");
                CloudFunctionConfiguration cloudFunctionConfiguration = (CloudFunctionConfiguration) value;
                m38396a.m38390b(cloudFunctionConfiguration.getInvocationRoleARN()).m38397a();
                xmlWriter.m38396a("CloudFunction").m38390b(cloudFunctionConfiguration.getCloudFunctionARN()).m38397a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.m38397a();
            } else if (value instanceof LambdaConfiguration) {
                xmlWriter.m38396a("CloudFunctionConfiguration");
                xmlWriter.m38396a(JsonDocumentFields.POLICY_ID).m38390b(key).m38397a();
                xmlWriter.m38396a("CloudFunction").m38390b(((LambdaConfiguration) value).getFunctionARN()).m38397a();
                addEventsAndFilterCriteria(xmlWriter, value);
                xmlWriter.m38397a();
            }
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketReplicationConfiguration bucketReplicationConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("ReplicationConfiguration");
        Map<String, ReplicationRule> rules = bucketReplicationConfiguration.getRules();
        xmlWriter.m38396a("Role").m38390b(bucketReplicationConfiguration.getRoleARN()).m38397a();
        for (Map.Entry<String, ReplicationRule> entry : rules.entrySet()) {
            String key = entry.getKey();
            ReplicationRule value = entry.getValue();
            xmlWriter.m38396a("Rule");
            xmlWriter.m38396a("ID").m38390b(key).m38397a();
            xmlWriter.m38396a("Prefix").m38390b(value.getPrefix()).m38397a();
            xmlWriter.m38396a("Status").m38390b(value.getStatus()).m38397a();
            ReplicationDestinationConfig destinationConfig = value.getDestinationConfig();
            xmlWriter.m38396a("Destination");
            xmlWriter.m38396a("Bucket").m38390b(destinationConfig.getBucketARN()).m38397a();
            if (destinationConfig.getStorageClass() != null) {
                xmlWriter.m38396a("StorageClass").m38390b(destinationConfig.getStorageClass()).m38397a();
            }
            xmlWriter.m38397a();
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketTaggingConfiguration bucketTaggingConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("Tagging");
        for (TagSet tagSet : bucketTaggingConfiguration.getAllTagSets()) {
            writeRule(xmlWriter, tagSet);
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketVersioningConfiguration bucketVersioningConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("VersioningConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        xmlWriter.m38396a("Status").m38390b(bucketVersioningConfiguration.getStatus()).m38397a();
        Boolean isMfaDeleteEnabled = bucketVersioningConfiguration.isMfaDeleteEnabled();
        if (isMfaDeleteEnabled != null) {
            if (isMfaDeleteEnabled.booleanValue()) {
                xmlWriter.m38396a("MfaDelete").m38390b("Enabled").m38397a();
            } else {
                xmlWriter.m38396a("MfaDelete").m38390b(BucketLifecycleConfiguration.DISABLED).m38397a();
            }
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(BucketWebsiteConfiguration bucketWebsiteConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("WebsiteConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        if (bucketWebsiteConfiguration.getIndexDocumentSuffix() != null) {
            XmlWriter m38396a = xmlWriter.m38396a("IndexDocument");
            m38396a.m38396a("Suffix").m38390b(bucketWebsiteConfiguration.getIndexDocumentSuffix()).m38397a();
            m38396a.m38397a();
        }
        if (bucketWebsiteConfiguration.getErrorDocument() != null) {
            XmlWriter m38396a2 = xmlWriter.m38396a("ErrorDocument");
            m38396a2.m38396a("Key").m38390b(bucketWebsiteConfiguration.getErrorDocument()).m38397a();
            m38396a2.m38397a();
        }
        RedirectRule redirectAllRequestsTo = bucketWebsiteConfiguration.getRedirectAllRequestsTo();
        if (redirectAllRequestsTo != null) {
            XmlWriter m38396a3 = xmlWriter.m38396a("RedirectAllRequestsTo");
            if (redirectAllRequestsTo.getprotocol() != null) {
                xmlWriter.m38396a("Protocol").m38390b(redirectAllRequestsTo.getprotocol()).m38397a();
            }
            if (redirectAllRequestsTo.getHostName() != null) {
                xmlWriter.m38396a("HostName").m38390b(redirectAllRequestsTo.getHostName()).m38397a();
            }
            if (redirectAllRequestsTo.getReplaceKeyPrefixWith() != null) {
                xmlWriter.m38396a("ReplaceKeyPrefixWith").m38390b(redirectAllRequestsTo.getReplaceKeyPrefixWith()).m38397a();
            }
            if (redirectAllRequestsTo.getReplaceKeyWith() != null) {
                xmlWriter.m38396a("ReplaceKeyWith").m38390b(redirectAllRequestsTo.getReplaceKeyWith()).m38397a();
            }
            m38396a3.m38397a();
        }
        if (bucketWebsiteConfiguration.getRoutingRules() != null && bucketWebsiteConfiguration.getRoutingRules().size() > 0) {
            XmlWriter m38396a4 = xmlWriter.m38396a("RoutingRules");
            for (RoutingRule routingRule : bucketWebsiteConfiguration.getRoutingRules()) {
                writeRule(m38396a4, routingRule);
            }
            m38396a4.m38397a();
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(AnalyticsConfiguration analyticsConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("AnalyticsConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        addParameterIfNotNull(xmlWriter, JsonDocumentFields.POLICY_ID, analyticsConfiguration.getId());
        writeAnalyticsFilter(xmlWriter, analyticsConfiguration.getFilter());
        writeStorageClassAnalysis(xmlWriter, analyticsConfiguration.getStorageClassAnalysis());
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(InventoryConfiguration inventoryConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("InventoryConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        xmlWriter.m38396a(JsonDocumentFields.POLICY_ID).m38390b(inventoryConfiguration.getId()).m38397a();
        xmlWriter.m38396a("IsEnabled").m38390b(String.valueOf(inventoryConfiguration.isEnabled())).m38397a();
        xmlWriter.m38396a("IncludedObjectVersions").m38390b(inventoryConfiguration.getIncludedObjectVersions()).m38397a();
        writeInventoryDestination(xmlWriter, inventoryConfiguration.getDestination());
        writeInventoryFilter(xmlWriter, inventoryConfiguration.getInventoryFilter());
        addInventorySchedule(xmlWriter, inventoryConfiguration.getSchedule());
        addInventoryOptionalFields(xmlWriter, inventoryConfiguration.getOptionalFields());
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public byte[] convertToXmlByteArray(MetricsConfiguration metricsConfiguration) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("MetricsConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        addParameterIfNotNull(xmlWriter, JsonDocumentFields.POLICY_ID, metricsConfiguration.getId());
        writeMetricsFilter(xmlWriter, metricsConfiguration.getFilter());
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }
}
