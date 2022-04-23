package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.DeleteObjectsResponse;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.s3.model.CORSRule;
import com.amazonaws.services.s3.model.CanonicalGrantee;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CopyObjectResult;
import com.amazonaws.services.s3.model.DeleteObjectsResult;
import com.amazonaws.services.s3.model.EmailAddressGrantee;
import com.amazonaws.services.s3.model.GetBucketAnalyticsConfigurationResult;
import com.amazonaws.services.s3.model.GetBucketInventoryConfigurationResult;
import com.amazonaws.services.s3.model.GetBucketMetricsConfigurationResult;
import com.amazonaws.services.s3.model.GetObjectTaggingResult;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.GroupGrantee;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketInventoryConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult;
import com.amazonaws.services.s3.model.ListObjectsV2Result;
import com.amazonaws.services.s3.model.MultiObjectDeleteException;
import com.amazonaws.services.s3.model.MultipartUpload;
import com.amazonaws.services.s3.model.MultipartUploadListing;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.Owner;
import com.amazonaws.services.s3.model.PartListing;
import com.amazonaws.services.s3.model.PartSummary;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.RedirectRule;
import com.amazonaws.services.s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.s3.model.ReplicationRule;
import com.amazonaws.services.s3.model.RequestPaymentConfiguration;
import com.amazonaws.services.s3.model.RoutingRule;
import com.amazonaws.services.s3.model.RoutingRuleCondition;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.amazonaws.services.s3.model.S3VersionSummary;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.TagSet;
import com.amazonaws.services.s3.model.VersionListing;
import com.amazonaws.services.s3.model.analytics.AnalyticsAndOperator;
import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilter;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilterPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsTagPredicate;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysis;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport;
import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import com.amazonaws.services.s3.model.inventory.InventoryDestination;
import com.amazonaws.services.s3.model.inventory.InventoryFilter;
import com.amazonaws.services.s3.model.inventory.InventoryPrefixPredicate;
import com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination;
import com.amazonaws.services.s3.model.inventory.InventorySchedule;
import com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilter;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilterPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsAndOperator;
import com.amazonaws.services.s3.model.metrics.MetricsConfiguration;
import com.amazonaws.services.s3.model.metrics.MetricsFilter;
import com.amazonaws.services.s3.model.metrics.MetricsFilterPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsTagPredicate;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.StringUtils;
import io.objectbox.model.PropertyFlags;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser.class */
public class XmlResponsesSaxParser {
    private static final Log log = LogFactory.a(XmlResponsesSaxParser.class);
    private final boolean sanitizeXmlDocument = true;
    private XMLReader xr;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler.class */
    public static class AccessControlListHandler extends AbstractHandler {
        private final AccessControlList accessControlList = new AccessControlList();
        private Grantee currentGrantee = null;
        private Permission currentPermission = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("AccessControlPolicy", "Owner")) {
                if (str2.equals("ID")) {
                    this.accessControlList.getOwner().setId(getText());
                } else if (str2.equals("DisplayName")) {
                    this.accessControlList.getOwner().setDisplayName(getText());
                }
            } else if (in("AccessControlPolicy", "AccessControlList")) {
                if (str2.equals("Grant")) {
                    this.accessControlList.grantPermission(this.currentGrantee, this.currentPermission);
                    this.currentGrantee = null;
                    this.currentPermission = null;
                }
            } else if (in("AccessControlPolicy", "AccessControlList", "Grant")) {
                if (str2.equals("Permission")) {
                    this.currentPermission = Permission.parsePermission(getText());
                }
            } else if (!in("AccessControlPolicy", "AccessControlList", "Grant", "Grantee")) {
            } else {
                if (str2.equals("ID")) {
                    this.currentGrantee.setIdentifier(getText());
                } else if (str2.equals("EmailAddress")) {
                    this.currentGrantee.setIdentifier(getText());
                } else if (str2.equals("URI")) {
                    this.currentGrantee = GroupGrantee.parseGroupGrantee(getText());
                } else if (str2.equals("DisplayName")) {
                    ((CanonicalGrantee) this.currentGrantee).setDisplayName(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("AccessControlPolicy")) {
                if (str2.equals("Owner")) {
                    this.accessControlList.setOwner(new Owner());
                }
            } else if (in("AccessControlPolicy", "AccessControlList", "Grant") && str2.equals("Grantee")) {
                String findAttributeValue = XmlResponsesSaxParser.findAttributeValue("xsi:type", attributes);
                if ("AmazonCustomerByEmail".equals(findAttributeValue)) {
                    this.currentGrantee = new EmailAddressGrantee(null);
                } else if ("CanonicalUser".equals(findAttributeValue)) {
                    this.currentGrantee = new CanonicalGrantee(null);
                } else {
                    "Group".equals(findAttributeValue);
                }
            }
        }

        public AccessControlList getAccessControlList() {
            return this.accessControlList;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketAccelerateConfigurationHandler.class */
    public static class BucketAccelerateConfigurationHandler extends AbstractHandler {
        private final BucketAccelerateConfiguration configuration = new BucketAccelerateConfiguration((String) null);

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("AccelerateConfiguration") && str2.equals("Status")) {
                this.configuration.setStatus(getText());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public BucketAccelerateConfiguration getConfiguration() {
            return this.configuration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketCrossOriginConfigurationHandler.class */
    public static class BucketCrossOriginConfigurationHandler extends AbstractHandler {
        private CORSRule currentRule;
        private final BucketCrossOriginConfiguration configuration = new BucketCrossOriginConfiguration(new ArrayList());
        private List<CORSRule.AllowedMethods> allowedMethods = null;
        private List<String> allowedOrigins = null;
        private List<String> exposedHeaders = null;
        private List<String> allowedHeaders = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.currentRule.setAllowedHeaders(this.allowedHeaders);
                    this.currentRule.setAllowedMethods(this.allowedMethods);
                    this.currentRule.setAllowedOrigins(this.allowedOrigins);
                    this.currentRule.setExposedHeaders(this.exposedHeaders);
                    this.allowedHeaders = null;
                    this.allowedMethods = null;
                    this.allowedOrigins = null;
                    this.exposedHeaders = null;
                    this.configuration.getRules().add(this.currentRule);
                    this.currentRule = null;
                }
            } else if (!in("CORSConfiguration", "CORSRule")) {
            } else {
                if (str2.equals("ID")) {
                    this.currentRule.setId(getText());
                } else if (str2.equals("AllowedOrigin")) {
                    this.allowedOrigins.add(getText());
                } else if (str2.equals("AllowedMethod")) {
                    this.allowedMethods.add(CORSRule.AllowedMethods.fromValue(getText()));
                } else if (str2.equals("MaxAgeSeconds")) {
                    this.currentRule.setMaxAgeSeconds(Integer.parseInt(getText()));
                } else if (str2.equals("ExposeHeader")) {
                    this.exposedHeaders.add(getText());
                } else if (str2.equals("AllowedHeader")) {
                    this.allowedHeaders.add(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.currentRule = new CORSRule();
                }
            } else if (!in("CORSConfiguration", "CORSRule")) {
            } else {
                if (str2.equals("AllowedOrigin")) {
                    if (this.allowedOrigins == null) {
                        this.allowedOrigins = new ArrayList();
                    }
                } else if (str2.equals("AllowedMethod")) {
                    if (this.allowedMethods == null) {
                        this.allowedMethods = new ArrayList();
                    }
                } else if (str2.equals("ExposeHeader")) {
                    if (this.exposedHeaders == null) {
                        this.exposedHeaders = new ArrayList();
                    }
                } else if (str2.equals("AllowedHeader") && this.allowedHeaders == null) {
                    this.allowedHeaders = new LinkedList();
                }
            }
        }

        public BucketCrossOriginConfiguration getConfiguration() {
            return this.configuration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler.class */
    public static class BucketLifecycleConfigurationHandler extends AbstractHandler {
        private AbortIncompleteMultipartUpload abortIncompleteMultipartUpload;
        private List<LifecycleFilterPredicate> andOperandsList;
        private final BucketLifecycleConfiguration configuration = new BucketLifecycleConfiguration(new ArrayList());
        private LifecycleFilter currentFilter;
        private BucketLifecycleConfiguration.NoncurrentVersionTransition currentNcvTransition;
        private BucketLifecycleConfiguration.Rule currentRule;
        private String currentTagKey;
        private String currentTagValue;
        private BucketLifecycleConfiguration.Transition currentTransition;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.configuration.getRules().add(this.currentRule);
                    this.currentRule = null;
                }
            } else if (in("LifecycleConfiguration", "Rule")) {
                if (str2.equals("ID")) {
                    this.currentRule.setId(getText());
                } else if (str2.equals("Prefix")) {
                    this.currentRule.setPrefix(getText());
                } else if (str2.equals("Status")) {
                    this.currentRule.setStatus(getText());
                } else if (str2.equals("Transition")) {
                    this.currentRule.addTransition(this.currentTransition);
                    this.currentTransition = null;
                } else if (str2.equals("NoncurrentVersionTransition")) {
                    this.currentRule.addNoncurrentVersionTransition(this.currentNcvTransition);
                    this.currentNcvTransition = null;
                } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                    this.currentRule.setAbortIncompleteMultipartUpload(this.abortIncompleteMultipartUpload);
                    this.abortIncompleteMultipartUpload = null;
                } else if (str2.equals("Filter")) {
                    this.currentRule.setFilter(this.currentFilter);
                    this.currentFilter = null;
                }
            } else if (in("LifecycleConfiguration", "Rule", "Expiration")) {
                if (str2.equals("Date")) {
                    this.currentRule.setExpirationDate(ServiceUtils.a(getText()));
                } else if (str2.equals("Days")) {
                    this.currentRule.setExpirationInDays(Integer.parseInt(getText()));
                } else if (str2.equals("ExpiredObjectDeleteMarker") && "true".equals(getText())) {
                    this.currentRule.setExpiredObjectDeleteMarker(true);
                }
            } else if (in("LifecycleConfiguration", "Rule", "Transition")) {
                if (str2.equals("StorageClass")) {
                    this.currentTransition.setStorageClass(getText());
                } else if (str2.equals("Date")) {
                    this.currentTransition.setDate(ServiceUtils.a(getText()));
                } else if (str2.equals("Days")) {
                    this.currentTransition.setDays(Integer.parseInt(getText()));
                }
            } else if (in("LifecycleConfiguration", "Rule", "NoncurrentVersionExpiration")) {
                if (str2.equals("NoncurrentDays")) {
                    this.currentRule.setNoncurrentVersionExpirationInDays(Integer.parseInt(getText()));
                }
            } else if (in("LifecycleConfiguration", "Rule", "NoncurrentVersionTransition")) {
                if (str2.equals("StorageClass")) {
                    this.currentNcvTransition.setStorageClass(getText());
                } else if (str2.equals("NoncurrentDays")) {
                    this.currentNcvTransition.setDays(Integer.parseInt(getText()));
                }
            } else if (in("LifecycleConfiguration", "Rule", "AbortIncompleteMultipartUpload")) {
                if (str2.equals("DaysAfterInitiation")) {
                    this.abortIncompleteMultipartUpload.setDaysAfterInitiation(Integer.parseInt(getText()));
                }
            } else if (in("LifecycleConfiguration", "Rule", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.currentFilter.setPredicate(new LifecyclePrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.currentFilter.setPredicate(new LifecycleTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                } else if (str2.equals("And")) {
                    this.currentFilter.setPredicate(new LifecycleAndOperator(this.andOperandsList));
                    this.andOperandsList = null;
                }
            } else if (in("LifecycleConfiguration", "Rule", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("LifecycleConfiguration", "Rule", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.andOperandsList.add(new LifecyclePrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.andOperandsList.add(new LifecycleTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (!in("LifecycleConfiguration", "Rule", "Filter", "And", "Tag")) {
            } else {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.currentRule = new BucketLifecycleConfiguration.Rule();
                }
            } else if (in("LifecycleConfiguration", "Rule")) {
                if (str2.equals("Transition")) {
                    this.currentTransition = new BucketLifecycleConfiguration.Transition();
                } else if (str2.equals("NoncurrentVersionTransition")) {
                    this.currentNcvTransition = new BucketLifecycleConfiguration.NoncurrentVersionTransition();
                } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                    this.abortIncompleteMultipartUpload = new AbortIncompleteMultipartUpload();
                } else if (str2.equals("Filter")) {
                    this.currentFilter = new LifecycleFilter();
                }
            } else if (in("LifecycleConfiguration", "Rule", "Filter") && str2.equals("And")) {
                this.andOperandsList = new ArrayList();
            }
        }

        public BucketLifecycleConfiguration getConfiguration() {
            return this.configuration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLocationHandler.class */
    public static class BucketLocationHandler extends AbstractHandler {
        private String location = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (atTopLevel() && str2.equals("LocationConstraint")) {
                String text = getText();
                if (text.length() == 0) {
                    this.location = null;
                } else {
                    this.location = text;
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public String getLocation() {
            return this.location;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLoggingConfigurationHandler.class */
    public static class BucketLoggingConfigurationHandler extends AbstractHandler {
        private final BucketLoggingConfiguration bucketLoggingConfiguration = new BucketLoggingConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (!in("BucketLoggingStatus", "LoggingEnabled")) {
                return;
            }
            if (str2.equals("TargetBucket")) {
                this.bucketLoggingConfiguration.setDestinationBucketName(getText());
            } else if (str2.equals("TargetPrefix")) {
                this.bucketLoggingConfiguration.setLogFilePrefix(getText());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public BucketLoggingConfiguration getBucketLoggingConfiguration() {
            return this.bucketLoggingConfiguration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler.class */
    public static class BucketReplicationConfigurationHandler extends AbstractHandler {
        private static final String BUCKET = "Bucket";
        private static final String DESTINATION = "Destination";
        private static final String ID = "ID";
        private static final String PREFIX = "Prefix";
        private static final String REPLICATION_CONFIG = "ReplicationConfiguration";
        private static final String ROLE = "Role";
        private static final String RULE = "Rule";
        private static final String STATUS = "Status";
        private static final String STORAGECLASS = "StorageClass";
        private final BucketReplicationConfiguration bucketReplicationConfiguration = new BucketReplicationConfiguration();
        private ReplicationRule currentRule;
        private String currentRuleId;
        private ReplicationDestinationConfig destinationConfig;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in(REPLICATION_CONFIG)) {
                if (str2.equals(RULE)) {
                    this.bucketReplicationConfiguration.addRule(this.currentRuleId, this.currentRule);
                    this.currentRule = null;
                    this.currentRuleId = null;
                    this.destinationConfig = null;
                } else if (str2.equals(ROLE)) {
                    this.bucketReplicationConfiguration.setRoleARN(getText());
                }
            } else if (in(REPLICATION_CONFIG, RULE)) {
                if (str2.equals(ID)) {
                    this.currentRuleId = getText();
                } else if (str2.equals(PREFIX)) {
                    this.currentRule.setPrefix(getText());
                } else if (str2.equals(STATUS)) {
                    this.currentRule.setStatus(getText());
                } else if (str2.equals(DESTINATION)) {
                    this.currentRule.setDestinationConfig(this.destinationConfig);
                }
            } else if (!in(REPLICATION_CONFIG, RULE, DESTINATION)) {
            } else {
                if (str2.equals(BUCKET)) {
                    this.destinationConfig.setBucketARN(getText());
                } else if (str2.equals(STORAGECLASS)) {
                    this.destinationConfig.setStorageClass(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in(REPLICATION_CONFIG)) {
                if (str2.equals(RULE)) {
                    this.currentRule = new ReplicationRule();
                }
            } else if (in(REPLICATION_CONFIG, RULE) && str2.equals(DESTINATION)) {
                this.destinationConfig = new ReplicationDestinationConfig();
            }
        }

        public BucketReplicationConfiguration getConfiguration() {
            return this.bucketReplicationConfiguration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketTaggingConfigurationHandler.class */
    public static class BucketTaggingConfigurationHandler extends AbstractHandler {
        private final BucketTaggingConfiguration configuration = new BucketTaggingConfiguration();
        private String currentTagKey;
        private Map<String, String> currentTagSet;
        private String currentTagValue;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            String str4;
            if (in("Tagging")) {
                if (str2.equals("TagSet")) {
                    this.configuration.getAllTagSets().add(new TagSet(this.currentTagSet));
                    this.currentTagSet = null;
                }
            } else if (in("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    String str5 = this.currentTagKey;
                    if (!(str5 == null || (str4 = this.currentTagValue) == null)) {
                        this.currentTagSet.put(str5, str4);
                    }
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (!in("Tagging", "TagSet", "Tag")) {
            } else {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("Tagging") && str2.equals("TagSet")) {
                this.currentTagSet = new HashMap();
            }
        }

        public BucketTaggingConfiguration getConfiguration() {
            return this.configuration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketVersioningConfigurationHandler.class */
    public static class BucketVersioningConfigurationHandler extends AbstractHandler {
        private final BucketVersioningConfiguration configuration = new BucketVersioningConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (!in("VersioningConfiguration")) {
                return;
            }
            if (str2.equals("Status")) {
                this.configuration.setStatus(getText());
            } else if (str2.equals("MfaDelete")) {
                String text = getText();
                if (text.equals(BucketLifecycleConfiguration.DISABLED)) {
                    this.configuration.setMfaDeleteEnabled(Boolean.FALSE);
                } else if (text.equals("Enabled")) {
                    this.configuration.setMfaDeleteEnabled(Boolean.TRUE);
                } else {
                    this.configuration.setMfaDeleteEnabled(null);
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public BucketVersioningConfiguration getConfiguration() {
            return this.configuration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler.class */
    public static class BucketWebsiteConfigurationHandler extends AbstractHandler {
        private final BucketWebsiteConfiguration configuration = new BucketWebsiteConfiguration(null);
        private RoutingRuleCondition currentCondition = null;
        private RedirectRule currentRedirectRule = null;
        private RoutingRule currentRoutingRule = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.configuration.setRedirectAllRequestsTo(this.currentRedirectRule);
                    this.currentRedirectRule = null;
                }
            } else if (in("WebsiteConfiguration", "IndexDocument")) {
                if (str2.equals("Suffix")) {
                    this.configuration.setIndexDocumentSuffix(getText());
                }
            } else if (in("WebsiteConfiguration", "ErrorDocument")) {
                if (str2.equals("Key")) {
                    this.configuration.setErrorDocument(getText());
                }
            } else if (in("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.configuration.getRoutingRules().add(this.currentRoutingRule);
                    this.currentRoutingRule = null;
                }
            } else if (in("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals(JsonDocumentFields.CONDITION)) {
                    this.currentRoutingRule.setCondition(this.currentCondition);
                    this.currentCondition = null;
                } else if (str2.equals("Redirect")) {
                    this.currentRoutingRule.setRedirect(this.currentRedirectRule);
                    this.currentRedirectRule = null;
                }
            } else if (in("WebsiteConfiguration", "RoutingRules", "RoutingRule", JsonDocumentFields.CONDITION)) {
                if (str2.equals("KeyPrefixEquals")) {
                    this.currentCondition.setKeyPrefixEquals(getText());
                } else if (str2.equals("HttpErrorCodeReturnedEquals")) {
                    this.currentCondition.setHttpErrorCodeReturnedEquals(getText());
                }
            } else if (!in("WebsiteConfiguration", "RedirectAllRequestsTo") && !in("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Redirect")) {
            } else {
                if (str2.equals("Protocol")) {
                    this.currentRedirectRule.setProtocol(getText());
                } else if (str2.equals("HostName")) {
                    this.currentRedirectRule.setHostName(getText());
                } else if (str2.equals("ReplaceKeyPrefixWith")) {
                    this.currentRedirectRule.setReplaceKeyPrefixWith(getText());
                } else if (str2.equals("ReplaceKeyWith")) {
                    this.currentRedirectRule.setReplaceKeyWith(getText());
                } else if (str2.equals("HttpRedirectCode")) {
                    this.currentRedirectRule.setHttpRedirectCode(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.currentRedirectRule = new RedirectRule();
                }
            } else if (in("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.currentRoutingRule = new RoutingRule();
                }
            } else if (!in("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
            } else {
                if (str2.equals(JsonDocumentFields.CONDITION)) {
                    this.currentCondition = new RoutingRuleCondition();
                } else if (str2.equals("Redirect")) {
                    this.currentRedirectRule = new RedirectRule();
                }
            }
        }

        public BucketWebsiteConfiguration getConfiguration() {
            return this.configuration;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler.class */
    public static class CompleteMultipartUploadHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {
        private AmazonS3Exception ase;
        private String errorCode;
        private String hostId;
        private String requestId;
        private CompleteMultipartUploadResult result;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            AmazonS3Exception amazonS3Exception;
            if (atTopLevel()) {
                if (str2.equals("Error") && (amazonS3Exception = this.ase) != null) {
                    amazonS3Exception.setErrorCode(this.errorCode);
                    this.ase.setRequestId(this.requestId);
                    this.ase.setExtendedRequestId(this.hostId);
                }
            } else if (in("CompleteMultipartUploadResult")) {
                if (str2.equals("Location")) {
                    this.result.setLocation(getText());
                } else if (str2.equals("Bucket")) {
                    this.result.setBucketName(getText());
                } else if (str2.equals("Key")) {
                    this.result.setKey(getText());
                } else if (str2.equals("ETag")) {
                    this.result.setETag(ServiceUtils.d(getText()));
                }
            } else if (!in("Error")) {
            } else {
                if (str2.equals("Code")) {
                    this.errorCode = getText();
                } else if (str2.equals("Message")) {
                    this.ase = new AmazonS3Exception(getText());
                } else if (str2.equals("RequestId")) {
                    this.requestId = getText();
                } else if (str2.equals("HostId")) {
                    this.hostId = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (atTopLevel() && str2.equals("CompleteMultipartUploadResult")) {
                this.result = new CompleteMultipartUploadResult();
            }
        }

        public AmazonS3Exception getAmazonS3Exception() {
            return this.ase;
        }

        public CompleteMultipartUploadResult getCompleteMultipartUploadResult() {
            return this.result;
        }

        public Date getExpirationTime() {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult == null) {
                return null;
            }
            return completeMultipartUploadResult.getExpirationTime();
        }

        public String getExpirationTimeRuleId() {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult == null) {
                return null;
            }
            return completeMultipartUploadResult.getExpirationTimeRuleId();
        }

        public String getVersionId() {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult == null) {
                return null;
            }
            return completeMultipartUploadResult.getVersionId();
        }

        public boolean isRequesterCharged() {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult == null) {
                return false;
            }
            return completeMultipartUploadResult.isRequesterCharged();
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTime(Date date) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTime(date);
            }
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTimeRuleId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTimeRuleId(str);
            }
        }

        @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
        public void setRequesterCharged(boolean z) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setRequesterCharged(z);
            }
        }

        @Override // com.amazonaws.services.s3.internal.S3VersionResult
        public void setVersionId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setVersionId(str);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractSSEHandler
        protected ServerSideEncryptionResult sseResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler.class */
    public static class CopyObjectResultHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {
        private final CopyObjectResult result = new CopyObjectResult();
        private String errorCode = null;
        private String errorMessage = null;
        private String errorRequestId = null;
        private String errorHostId = null;
        private boolean receivedErrorResponse = false;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("CopyObjectResult") || in("CopyPartResult")) {
                if (str2.equals("LastModified")) {
                    this.result.setLastModifiedDate(ServiceUtils.a(getText()));
                } else if (str2.equals("ETag")) {
                    this.result.setETag(ServiceUtils.d(getText()));
                }
            } else if (!in("Error")) {
            } else {
                if (str2.equals("Code")) {
                    this.errorCode = getText();
                } else if (str2.equals("Message")) {
                    this.errorMessage = getText();
                } else if (str2.equals("RequestId")) {
                    this.errorRequestId = getText();
                } else if (str2.equals("HostId")) {
                    this.errorHostId = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (!atTopLevel()) {
                return;
            }
            if (str2.equals("CopyObjectResult") || str2.equals("CopyPartResult")) {
                this.receivedErrorResponse = false;
            } else if (str2.equals("Error")) {
                this.receivedErrorResponse = true;
            }
        }

        public String getETag() {
            return this.result.getETag();
        }

        public String getErrorCode() {
            return this.errorCode;
        }

        public String getErrorHostId() {
            return this.errorHostId;
        }

        public String getErrorMessage() {
            return this.errorMessage;
        }

        public String getErrorRequestId() {
            return this.errorRequestId;
        }

        public Date getExpirationTime() {
            return this.result.getExpirationTime();
        }

        public String getExpirationTimeRuleId() {
            return this.result.getExpirationTimeRuleId();
        }

        public Date getLastModified() {
            return this.result.getLastModifiedDate();
        }

        public String getVersionId() {
            return this.result.getVersionId();
        }

        public boolean isErrorResponse() {
            return this.receivedErrorResponse;
        }

        public boolean isRequesterCharged() {
            return this.result.isRequesterCharged();
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTime(Date date) {
            this.result.setExpirationTime(date);
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTimeRuleId(String str) {
            this.result.setExpirationTimeRuleId(str);
        }

        @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
        public void setRequesterCharged(boolean z) {
            this.result.setRequesterCharged(z);
        }

        @Override // com.amazonaws.services.s3.internal.S3VersionResult
        public void setVersionId(String str) {
            this.result.setVersionId(str);
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractSSEHandler
        protected ServerSideEncryptionResult sseResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler.class */
    public static class DeleteObjectsHandler extends AbstractHandler {
        private final DeleteObjectsResponse response = new DeleteObjectsResponse();
        private DeleteObjectsResult.DeletedObject currentDeletedObject = null;
        private MultiObjectDeleteException.DeleteError currentError = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.response.f6790a.add(this.currentDeletedObject);
                    this.currentDeletedObject = null;
                } else if (str2.equals("Error")) {
                    this.response.f6791b.add(this.currentError);
                    this.currentError = null;
                }
            } else if (in("DeleteResult", "Deleted")) {
                if (str2.equals("Key")) {
                    this.currentDeletedObject.setKey(getText());
                } else if (str2.equals("VersionId")) {
                    this.currentDeletedObject.setVersionId(getText());
                } else if (str2.equals("DeleteMarker")) {
                    this.currentDeletedObject.setDeleteMarker(getText().equals("true"));
                } else if (str2.equals("DeleteMarkerVersionId")) {
                    this.currentDeletedObject.setDeleteMarkerVersionId(getText());
                }
            } else if (!in("DeleteResult", "Error")) {
            } else {
                if (str2.equals("Key")) {
                    this.currentError.setKey(getText());
                } else if (str2.equals("VersionId")) {
                    this.currentError.setVersionId(getText());
                } else if (str2.equals("Code")) {
                    this.currentError.setCode(getText());
                } else if (str2.equals("Message")) {
                    this.currentError.setMessage(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (!in("DeleteResult")) {
                return;
            }
            if (str2.equals("Deleted")) {
                this.currentDeletedObject = new DeleteObjectsResult.DeletedObject();
            } else if (str2.equals("Error")) {
                this.currentError = new MultiObjectDeleteException.DeleteError();
            }
        }

        public DeleteObjectsResponse getDeleteObjectResult() {
            return this.response;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketAnalyticsConfigurationHandler.class */
    public static class GetBucketAnalyticsConfigurationHandler extends AbstractHandler {
        private List<AnalyticsFilterPredicate> andOperandsList;
        private final AnalyticsConfiguration configuration = new AnalyticsConfiguration();
        private String currentTagKey;
        private String currentTagValue;
        private StorageClassAnalysisDataExport dataExport;
        private AnalyticsExportDestination destination;
        private AnalyticsFilter filter;
        private AnalyticsS3BucketDestination s3BucketDestination;
        private StorageClassAnalysis storageClassAnalysis;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("AnalyticsConfiguration")) {
                if (str2.equals(JsonDocumentFields.POLICY_ID)) {
                    this.configuration.setId(getText());
                } else if (str2.equals("Filter")) {
                    this.configuration.setFilter(this.filter);
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.configuration.setStorageClassAnalysis(this.storageClassAnalysis);
                }
            } else if (in("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.filter.setPredicate(new AnalyticsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.filter.setPredicate(new AnalyticsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                } else if (str2.equals("And")) {
                    this.filter.setPredicate(new AnalyticsAndOperator(this.andOperandsList));
                    this.andOperandsList = null;
                }
            } else if (in("AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.andOperandsList.add(new AnalyticsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.andOperandsList.add(new AnalyticsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (in("AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.storageClassAnalysis.setDataExport(this.dataExport);
                }
            } else if (in("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.dataExport.setOutputSchemaVersion(getText());
                } else if (str2.equals("Destination")) {
                    this.dataExport.setDestination(this.destination);
                }
            } else if (in("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.destination.setS3BucketDestination(this.s3BucketDestination);
                }
            } else if (!in("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
            } else {
                if (str2.equals("Format")) {
                    this.s3BucketDestination.setFormat(getText());
                } else if (str2.equals("BucketAccountId")) {
                    this.s3BucketDestination.setBucketAccountId(getText());
                } else if (str2.equals("Bucket")) {
                    this.s3BucketDestination.setBucketArn(getText());
                } else if (str2.equals("Prefix")) {
                    this.s3BucketDestination.setPrefix(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.filter = new AnalyticsFilter();
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.storageClassAnalysis = new StorageClassAnalysis();
                }
            } else if (in("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.andOperandsList = new ArrayList();
                }
            } else if (in("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.dataExport = new StorageClassAnalysisDataExport();
                }
            } else if (in("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.destination = new AnalyticsExportDestination();
                }
            } else if (in("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.s3BucketDestination = new AnalyticsS3BucketDestination();
            }
        }

        public GetBucketAnalyticsConfigurationResult getResult() {
            return new GetBucketAnalyticsConfigurationResult().withAnalyticsConfiguration(this.configuration);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler.class */
    public static class GetBucketInventoryConfigurationHandler extends AbstractHandler {
        private InventoryFilter filter;
        private InventoryDestination inventoryDestination;
        private InventorySchedule inventorySchedule;
        private List<String> optionalFields;
        private InventoryS3BucketDestination s3BucketDestination;
        private final GetBucketInventoryConfigurationResult result = new GetBucketInventoryConfigurationResult();
        private final InventoryConfiguration configuration = new InventoryConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("InventoryConfiguration")) {
                if (str2.equals(JsonDocumentFields.POLICY_ID)) {
                    this.configuration.setId(getText());
                } else if (str2.equals("Destination")) {
                    this.configuration.setDestination(this.inventoryDestination);
                    this.inventoryDestination = null;
                } else if (str2.equals("IsEnabled")) {
                    this.configuration.setEnabled(Boolean.valueOf("true".equals(getText())));
                } else if (str2.equals("Filter")) {
                    this.configuration.setInventoryFilter(this.filter);
                    this.filter = null;
                } else if (str2.equals("IncludedObjectVersions")) {
                    this.configuration.setIncludedObjectVersions(getText());
                } else if (str2.equals("Schedule")) {
                    this.configuration.setSchedule(this.inventorySchedule);
                    this.inventorySchedule = null;
                } else if (str2.equals("OptionalFields")) {
                    this.configuration.setOptionalFields(this.optionalFields);
                    this.optionalFields = null;
                }
            } else if (in("InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.inventoryDestination.setS3BucketDestination(this.s3BucketDestination);
                    this.s3BucketDestination = null;
                }
            } else if (in("InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.s3BucketDestination.setAccountId(getText());
                } else if (str2.equals("Bucket")) {
                    this.s3BucketDestination.setBucketArn(getText());
                } else if (str2.equals("Format")) {
                    this.s3BucketDestination.setFormat(getText());
                } else if (str2.equals("Prefix")) {
                    this.s3BucketDestination.setPrefix(getText());
                }
            } else if (in("InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.filter.setPredicate(new InventoryPrefixPredicate(getText()));
                }
            } else if (in("InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.inventorySchedule.setFrequency(getText());
                }
            } else if (in("InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.optionalFields.add(getText());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("InventoryConfiguration")) {
                if (str2.equals("Destination")) {
                    this.inventoryDestination = new InventoryDestination();
                } else if (str2.equals("Filter")) {
                    this.filter = new InventoryFilter();
                } else if (str2.equals("Schedule")) {
                    this.inventorySchedule = new InventorySchedule();
                } else if (str2.equals("OptionalFields")) {
                    this.optionalFields = new ArrayList();
                }
            } else if (in("InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                this.s3BucketDestination = new InventoryS3BucketDestination();
            }
        }

        public GetBucketInventoryConfigurationResult getResult() {
            return this.result.withInventoryConfiguration(this.configuration);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler.class */
    public static class GetBucketMetricsConfigurationHandler extends AbstractHandler {
        private List<MetricsFilterPredicate> andOperandsList;
        private final MetricsConfiguration configuration = new MetricsConfiguration();
        private String currentTagKey;
        private String currentTagValue;
        private MetricsFilter filter;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("MetricsConfiguration")) {
                if (str2.equals(JsonDocumentFields.POLICY_ID)) {
                    this.configuration.setId(getText());
                } else if (str2.equals("Filter")) {
                    this.configuration.setFilter(this.filter);
                    this.filter = null;
                }
            } else if (in("MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.filter.setPredicate(new MetricsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.filter.setPredicate(new MetricsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                } else if (str2.equals("And")) {
                    this.filter.setPredicate(new MetricsAndOperator(this.andOperandsList));
                    this.andOperandsList = null;
                }
            } else if (in("MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.andOperandsList.add(new MetricsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.andOperandsList.add(new MetricsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (!in("MetricsConfiguration", "Filter", "And", "Tag")) {
            } else {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.filter = new MetricsFilter();
                }
            } else if (in("MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.andOperandsList = new ArrayList();
            }
        }

        public GetBucketMetricsConfigurationResult getResult() {
            return new GetBucketMetricsConfigurationResult().withMetricsConfiguration(this.configuration);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler.class */
    public static class GetObjectTaggingHandler extends AbstractHandler {
        private String currentTagKey;
        private String currentTagValue;
        private GetObjectTaggingResult getObjectTaggingResult;
        private List<Tag> tagSet;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("Tagging") && str2.equals("TagSet")) {
                this.getObjectTaggingResult = new GetObjectTaggingResult(this.tagSet);
                this.tagSet = null;
            }
            if (in("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    this.tagSet.add(new Tag(this.currentTagKey, this.currentTagValue));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (!in("Tagging", "TagSet", "Tag")) {
            } else {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("Tagging") && str2.equals("TagSet")) {
                this.tagSet = new ArrayList();
            }
        }

        public GetObjectTaggingResult getResult() {
            return this.getObjectTaggingResult;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler.class */
    public static class InitiateMultipartUploadHandler extends AbstractHandler {
        private final InitiateMultipartUploadResult result = new InitiateMultipartUploadResult();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (!in("InitiateMultipartUploadResult")) {
                return;
            }
            if (str2.equals("Bucket")) {
                this.result.setBucketName(getText());
            } else if (str2.equals("Key")) {
                this.result.setKey(getText());
            } else if (str2.equals("UploadId")) {
                this.result.setUploadId(getText());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public InitiateMultipartUploadResult getInitiateMultipartUploadResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListAllMyBucketsHandler.class */
    public static class ListAllMyBucketsHandler extends AbstractHandler {
        private final List<Bucket> buckets = new ArrayList();
        private Owner bucketsOwner = null;
        private Bucket currentBucket = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListAllMyBucketsResult", "Owner")) {
                if (str2.equals("ID")) {
                    this.bucketsOwner.setId(getText());
                } else if (str2.equals("DisplayName")) {
                    this.bucketsOwner.setDisplayName(getText());
                }
            } else if (in("ListAllMyBucketsResult", "Buckets")) {
                if (str2.equals("Bucket")) {
                    this.buckets.add(this.currentBucket);
                    this.currentBucket = null;
                }
            } else if (!in("ListAllMyBucketsResult", "Buckets", "Bucket")) {
            } else {
                if (str2.equals("Name")) {
                    this.currentBucket.setName(getText());
                } else if (str2.equals("CreationDate")) {
                    this.currentBucket.setCreationDate(DateUtils.a(getText()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListAllMyBucketsResult")) {
                if (str2.equals("Owner")) {
                    this.bucketsOwner = new Owner();
                }
            } else if (in("ListAllMyBucketsResult", "Buckets") && str2.equals("Bucket")) {
                Bucket bucket = new Bucket();
                this.currentBucket = bucket;
                bucket.setOwner(this.bucketsOwner);
            }
        }

        public List<Bucket> getBuckets() {
            return this.buckets;
        }

        public Owner getOwner() {
            return this.bucketsOwner;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler.class */
    public static class ListBucketAnalyticsConfigurationHandler extends AbstractHandler {
        private List<AnalyticsFilterPredicate> andOperandsList;
        private AnalyticsConfiguration currentConfiguration;
        private AnalyticsFilter currentFilter;
        private String currentTagKey;
        private String currentTagValue;
        private StorageClassAnalysisDataExport dataExport;
        private AnalyticsExportDestination destination;
        private final ListBucketAnalyticsConfigurationsResult result = new ListBucketAnalyticsConfigurationsResult();
        private AnalyticsS3BucketDestination s3BucketDestination;
        private StorageClassAnalysis storageClassAnalysis;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    if (this.result.getAnalyticsConfigurationList() == null) {
                        this.result.setAnalyticsConfigurationList(new ArrayList());
                    }
                    this.result.getAnalyticsConfigurationList().add(this.currentConfiguration);
                    this.currentConfiguration = null;
                } else if (str2.equals("IsTruncated")) {
                    this.result.setTruncated("true".equals(getText()));
                } else if (str2.equals("ContinuationToken")) {
                    this.result.setContinuationToken(getText());
                } else if (str2.equals("NextContinuationToken")) {
                    this.result.setNextContinuationToken(getText());
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals(JsonDocumentFields.POLICY_ID)) {
                    this.currentConfiguration.setId(getText());
                } else if (str2.equals("Filter")) {
                    this.currentConfiguration.setFilter(this.currentFilter);
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.currentConfiguration.setStorageClassAnalysis(this.storageClassAnalysis);
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.currentFilter.setPredicate(new AnalyticsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.currentFilter.setPredicate(new AnalyticsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                } else if (str2.equals("And")) {
                    this.currentFilter.setPredicate(new AnalyticsAndOperator(this.andOperandsList));
                    this.andOperandsList = null;
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.andOperandsList.add(new AnalyticsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.andOperandsList.add(new AnalyticsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.storageClassAnalysis.setDataExport(this.dataExport);
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.dataExport.setOutputSchemaVersion(getText());
                } else if (str2.equals("Destination")) {
                    this.dataExport.setDestination(this.destination);
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.destination.setS3BucketDestination(this.s3BucketDestination);
                }
            } else if (!in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
            } else {
                if (str2.equals("Format")) {
                    this.s3BucketDestination.setFormat(getText());
                } else if (str2.equals("BucketAccountId")) {
                    this.s3BucketDestination.setBucketAccountId(getText());
                } else if (str2.equals("Bucket")) {
                    this.s3BucketDestination.setBucketArn(getText());
                } else if (str2.equals("Prefix")) {
                    this.s3BucketDestination.setPrefix(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    this.currentConfiguration = new AnalyticsConfiguration();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.currentFilter = new AnalyticsFilter();
                } else if (str2.equals("StorageClassAnalysis")) {
                    this.storageClassAnalysis = new StorageClassAnalysis();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.andOperandsList = new ArrayList();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.dataExport = new StorageClassAnalysisDataExport();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.destination = new AnalyticsExportDestination();
                }
            } else if (in("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.s3BucketDestination = new AnalyticsS3BucketDestination();
            }
        }

        public ListBucketAnalyticsConfigurationsResult getResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler.class */
    public static class ListBucketHandler extends AbstractHandler {
        private final boolean shouldSDKDecodeResponse;
        private final ObjectListing objectListing = new ObjectListing();
        private S3ObjectSummary currentObject = null;
        private Owner currentOwner = null;
        private String lastKey = null;

        public ListBucketHandler(boolean z) {
            this.shouldSDKDecodeResponse = z;
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            String str4 = null;
            if (atTopLevel()) {
                if (str2.equals("ListBucketResult") && this.objectListing.isTruncated() && this.objectListing.getNextMarker() == null) {
                    if (!this.objectListing.getObjectSummaries().isEmpty()) {
                        str4 = this.objectListing.getObjectSummaries().get(this.objectListing.getObjectSummaries().size() - 1).getKey();
                    } else if (!this.objectListing.getCommonPrefixes().isEmpty()) {
                        str4 = this.objectListing.getCommonPrefixes().get(this.objectListing.getCommonPrefixes().size() - 1);
                    } else {
                        XmlResponsesSaxParser.log.e("S3 response indicates truncated results, but contains no object summaries or common prefixes.");
                    }
                    this.objectListing.setNextMarker(str4);
                }
            } else if (in("ListBucketResult")) {
                if (str2.equals("Name")) {
                    this.objectListing.setBucketName(getText());
                    if (XmlResponsesSaxParser.log.a()) {
                        Log log = XmlResponsesSaxParser.log;
                        log.b("Examining listing for bucket: " + this.objectListing.getBucketName());
                    }
                } else if (str2.equals("Prefix")) {
                    this.objectListing.setPrefix(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("Marker")) {
                    this.objectListing.setMarker(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("NextMarker")) {
                    this.objectListing.setNextMarker(XmlResponsesSaxParser.decodeIfSpecified(getText(), this.shouldSDKDecodeResponse));
                } else if (str2.equals("MaxKeys")) {
                    this.objectListing.setMaxKeys(XmlResponsesSaxParser.parseInt(getText()));
                } else if (str2.equals("Delimiter")) {
                    this.objectListing.setDelimiter(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("EncodingType")) {
                    this.objectListing.setEncodingType(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("IsTruncated")) {
                    String b2 = StringUtils.b(getText());
                    if (b2.startsWith("false")) {
                        this.objectListing.setTruncated(false);
                    } else if (b2.startsWith("true")) {
                        this.objectListing.setTruncated(true);
                    } else {
                        throw new IllegalStateException("Invalid value for IsTruncated field: ".concat(String.valueOf(b2)));
                    }
                } else if (str2.equals("Contents")) {
                    this.objectListing.getObjectSummaries().add(this.currentObject);
                    this.currentObject = null;
                }
            } else if (in("ListBucketResult", "Contents")) {
                if (str2.equals("Key")) {
                    String text = getText();
                    this.lastKey = text;
                    this.currentObject.setKey(XmlResponsesSaxParser.decodeIfSpecified(text, this.shouldSDKDecodeResponse));
                } else if (str2.equals("LastModified")) {
                    this.currentObject.setLastModified(ServiceUtils.a(getText()));
                } else if (str2.equals("ETag")) {
                    this.currentObject.setETag(ServiceUtils.d(getText()));
                } else if (str2.equals("Size")) {
                    this.currentObject.setSize(XmlResponsesSaxParser.parseLong(getText()));
                } else if (str2.equals("StorageClass")) {
                    this.currentObject.setStorageClass(getText());
                } else if (str2.equals("Owner")) {
                    this.currentObject.setOwner(this.currentOwner);
                    this.currentOwner = null;
                }
            } else if (in("ListBucketResult", "Contents", "Owner")) {
                if (str2.equals("ID")) {
                    this.currentOwner.setId(getText());
                } else if (str2.equals("DisplayName")) {
                    this.currentOwner.setDisplayName(getText());
                }
            } else if (in("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                this.objectListing.getCommonPrefixes().add(XmlResponsesSaxParser.decodeIfSpecified(getText(), this.shouldSDKDecodeResponse));
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListBucketResult")) {
                if (str2.equals("Contents")) {
                    S3ObjectSummary s3ObjectSummary = new S3ObjectSummary();
                    this.currentObject = s3ObjectSummary;
                    s3ObjectSummary.setBucketName(this.objectListing.getBucketName());
                }
            } else if (in("ListBucketResult", "Contents") && str2.equals("Owner")) {
                this.currentOwner = new Owner();
            }
        }

        public ObjectListing getObjectListing() {
            return this.objectListing;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler.class */
    public static class ListBucketInventoryConfigurationsHandler extends AbstractHandler {
        private InventoryConfiguration currentConfiguration;
        private InventoryDestination currentDestination;
        private InventoryFilter currentFilter;
        private List<String> currentOptionalFieldsList;
        private InventoryS3BucketDestination currentS3BucketDestination;
        private InventorySchedule currentSchedule;
        private final ListBucketInventoryConfigurationsResult result = new ListBucketInventoryConfigurationsResult();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    if (this.result.getInventoryConfigurationList() == null) {
                        this.result.setInventoryConfigurationList(new ArrayList());
                    }
                    this.result.getInventoryConfigurationList().add(this.currentConfiguration);
                    this.currentConfiguration = null;
                } else if (str2.equals("IsTruncated")) {
                    this.result.setTruncated("true".equals(getText()));
                } else if (str2.equals("ContinuationToken")) {
                    this.result.setContinuationToken(getText());
                } else if (str2.equals("NextContinuationToken")) {
                    this.result.setNextContinuationToken(getText());
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (str2.equals(JsonDocumentFields.POLICY_ID)) {
                    this.currentConfiguration.setId(getText());
                } else if (str2.equals("Destination")) {
                    this.currentConfiguration.setDestination(this.currentDestination);
                    this.currentDestination = null;
                } else if (str2.equals("IsEnabled")) {
                    this.currentConfiguration.setEnabled(Boolean.valueOf("true".equals(getText())));
                } else if (str2.equals("Filter")) {
                    this.currentConfiguration.setInventoryFilter(this.currentFilter);
                    this.currentFilter = null;
                } else if (str2.equals("IncludedObjectVersions")) {
                    this.currentConfiguration.setIncludedObjectVersions(getText());
                } else if (str2.equals("Schedule")) {
                    this.currentConfiguration.setSchedule(this.currentSchedule);
                    this.currentSchedule = null;
                } else if (str2.equals("OptionalFields")) {
                    this.currentConfiguration.setOptionalFields(this.currentOptionalFieldsList);
                    this.currentOptionalFieldsList = null;
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.currentDestination.setS3BucketDestination(this.currentS3BucketDestination);
                    this.currentS3BucketDestination = null;
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.currentS3BucketDestination.setAccountId(getText());
                } else if (str2.equals("Bucket")) {
                    this.currentS3BucketDestination.setBucketArn(getText());
                } else if (str2.equals("Format")) {
                    this.currentS3BucketDestination.setFormat(getText());
                } else if (str2.equals("Prefix")) {
                    this.currentS3BucketDestination.setPrefix(getText());
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.currentFilter.setPredicate(new InventoryPrefixPredicate(getText()));
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.currentSchedule.setFrequency(getText());
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.currentOptionalFieldsList.add(getText());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    this.currentConfiguration = new InventoryConfiguration();
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (str2.equals("Destination")) {
                    this.currentDestination = new InventoryDestination();
                } else if (str2.equals("Filter")) {
                    this.currentFilter = new InventoryFilter();
                } else if (str2.equals("Schedule")) {
                    this.currentSchedule = new InventorySchedule();
                } else if (str2.equals("OptionalFields")) {
                    this.currentOptionalFieldsList = new ArrayList();
                }
            } else if (in("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                this.currentS3BucketDestination = new InventoryS3BucketDestination();
            }
        }

        public ListBucketInventoryConfigurationsResult getResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler.class */
    public static class ListBucketMetricsConfigurationsHandler extends AbstractHandler {
        private List<MetricsFilterPredicate> andOperandsList;
        private MetricsConfiguration currentConfiguration;
        private MetricsFilter currentFilter;
        private String currentTagKey;
        private String currentTagValue;
        private final ListBucketMetricsConfigurationsResult result = new ListBucketMetricsConfigurationsResult();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    if (this.result.getMetricsConfigurationList() == null) {
                        this.result.setMetricsConfigurationList(new ArrayList());
                    }
                    this.result.getMetricsConfigurationList().add(this.currentConfiguration);
                    this.currentConfiguration = null;
                } else if (str2.equals("IsTruncated")) {
                    this.result.setTruncated("true".equals(getText()));
                } else if (str2.equals("ContinuationToken")) {
                    this.result.setContinuationToken(getText());
                } else if (str2.equals("NextContinuationToken")) {
                    this.result.setNextContinuationToken(getText());
                }
            } else if (in("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals(JsonDocumentFields.POLICY_ID)) {
                    this.currentConfiguration.setId(getText());
                } else if (str2.equals("Filter")) {
                    this.currentConfiguration.setFilter(this.currentFilter);
                    this.currentFilter = null;
                }
            } else if (in("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.currentFilter.setPredicate(new MetricsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.currentFilter.setPredicate(new MetricsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                } else if (str2.equals("And")) {
                    this.currentFilter.setPredicate(new MetricsAndOperator(this.andOperandsList));
                    this.andOperandsList = null;
                }
            } else if (in("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            } else if (in("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.andOperandsList.add(new MetricsPrefixPredicate(getText()));
                } else if (str2.equals("Tag")) {
                    this.andOperandsList.add(new MetricsTagPredicate(new Tag(this.currentTagKey, this.currentTagValue)));
                    this.currentTagKey = null;
                    this.currentTagValue = null;
                }
            } else if (!in("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And", "Tag")) {
            } else {
                if (str2.equals("Key")) {
                    this.currentTagKey = getText();
                } else if (str2.equals("Value")) {
                    this.currentTagValue = getText();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    this.currentConfiguration = new MetricsConfiguration();
                }
            } else if (in("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.currentFilter = new MetricsFilter();
                }
            } else if (in("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.andOperandsList = new ArrayList();
            }
        }

        public ListBucketMetricsConfigurationsResult getResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListMultipartUploadsHandler.class */
    public static class ListMultipartUploadsHandler extends AbstractHandler {
        private MultipartUpload currentMultipartUpload;
        private Owner currentOwner;
        private final MultipartUploadListing result = new MultipartUploadListing();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListMultipartUploadsResult")) {
                if (str2.equals("Bucket")) {
                    this.result.setBucketName(getText());
                } else if (str2.equals("KeyMarker")) {
                    this.result.setKeyMarker(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("Delimiter")) {
                    this.result.setDelimiter(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("Prefix")) {
                    this.result.setPrefix(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("UploadIdMarker")) {
                    this.result.setUploadIdMarker(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("NextKeyMarker")) {
                    this.result.setNextKeyMarker(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("NextUploadIdMarker")) {
                    this.result.setNextUploadIdMarker(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("MaxUploads")) {
                    this.result.setMaxUploads(Integer.parseInt(getText()));
                } else if (str2.equals("EncodingType")) {
                    this.result.setEncodingType(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("IsTruncated")) {
                    this.result.setTruncated(Boolean.parseBoolean(getText()));
                } else if (str2.equals("Upload")) {
                    this.result.getMultipartUploads().add(this.currentMultipartUpload);
                    this.currentMultipartUpload = null;
                }
            } else if (in("ListMultipartUploadsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    this.result.getCommonPrefixes().add(getText());
                }
            } else if (in("ListMultipartUploadsResult", "Upload")) {
                if (str2.equals("Key")) {
                    this.currentMultipartUpload.setKey(getText());
                } else if (str2.equals("UploadId")) {
                    this.currentMultipartUpload.setUploadId(getText());
                } else if (str2.equals("Owner")) {
                    this.currentMultipartUpload.setOwner(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("Initiator")) {
                    this.currentMultipartUpload.setInitiator(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("StorageClass")) {
                    this.currentMultipartUpload.setStorageClass(getText());
                } else if (str2.equals("Initiated")) {
                    this.currentMultipartUpload.setInitiated(ServiceUtils.a(getText()));
                }
            } else if (!in("ListMultipartUploadsResult", "Upload", "Owner") && !in("ListMultipartUploadsResult", "Upload", "Initiator")) {
            } else {
                if (str2.equals("ID")) {
                    this.currentOwner.setId(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("DisplayName")) {
                    this.currentOwner.setDisplayName(XmlResponsesSaxParser.checkForEmptyString(getText()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListMultipartUploadsResult")) {
                if (str2.equals("Upload")) {
                    this.currentMultipartUpload = new MultipartUpload();
                }
            } else if (!in("ListMultipartUploadsResult", "Upload")) {
            } else {
                if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.currentOwner = new Owner();
                }
            }
        }

        public MultipartUploadListing getListMultipartUploadsResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler.class */
    public static class ListObjectsV2Handler extends AbstractHandler {
        private final boolean shouldSDKDecodeResponse;
        private final ListObjectsV2Result result = new ListObjectsV2Result();
        private S3ObjectSummary currentObject = null;
        private Owner currentOwner = null;
        private String lastKey = null;

        public ListObjectsV2Handler(boolean z) {
            this.shouldSDKDecodeResponse = z;
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            String str4 = null;
            if (atTopLevel()) {
                if (str2.equals("ListBucketResult") && this.result.isTruncated() && this.result.getNextContinuationToken() == null) {
                    if (!this.result.getObjectSummaries().isEmpty()) {
                        str4 = this.result.getObjectSummaries().get(this.result.getObjectSummaries().size() - 1).getKey();
                    } else {
                        XmlResponsesSaxParser.log.e("S3 response indicates truncated results, but contains no object summaries.");
                    }
                    this.result.setNextContinuationToken(str4);
                }
            } else if (in("ListBucketResult")) {
                if (str2.equals("Name")) {
                    this.result.setBucketName(getText());
                    if (XmlResponsesSaxParser.log.a()) {
                        Log log = XmlResponsesSaxParser.log;
                        log.b("Examining listing for bucket: " + this.result.getBucketName());
                    }
                } else if (str2.equals("Prefix")) {
                    this.result.setPrefix(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("MaxKeys")) {
                    this.result.setMaxKeys(XmlResponsesSaxParser.parseInt(getText()));
                } else if (str2.equals("NextContinuationToken")) {
                    this.result.setNextContinuationToken(getText());
                } else if (str2.equals("ContinuationToken")) {
                    this.result.setContinuationToken(getText());
                } else if (str2.equals("StartAfter")) {
                    this.result.setStartAfter(XmlResponsesSaxParser.decodeIfSpecified(getText(), this.shouldSDKDecodeResponse));
                } else if (str2.equals("KeyCount")) {
                    this.result.setKeyCount(XmlResponsesSaxParser.parseInt(getText()));
                } else if (str2.equals("Delimiter")) {
                    this.result.setDelimiter(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("EncodingType")) {
                    this.result.setEncodingType(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("IsTruncated")) {
                    String b2 = StringUtils.b(getText());
                    if (b2.startsWith("false")) {
                        this.result.setTruncated(false);
                    } else if (b2.startsWith("true")) {
                        this.result.setTruncated(true);
                    } else {
                        throw new IllegalStateException("Invalid value for IsTruncated field: ".concat(String.valueOf(b2)));
                    }
                } else if (str2.equals("Contents")) {
                    this.result.getObjectSummaries().add(this.currentObject);
                    this.currentObject = null;
                }
            } else if (in("ListBucketResult", "Contents")) {
                if (str2.equals("Key")) {
                    String text = getText();
                    this.lastKey = text;
                    this.currentObject.setKey(XmlResponsesSaxParser.decodeIfSpecified(text, this.shouldSDKDecodeResponse));
                } else if (str2.equals("LastModified")) {
                    this.currentObject.setLastModified(ServiceUtils.a(getText()));
                } else if (str2.equals("ETag")) {
                    this.currentObject.setETag(ServiceUtils.d(getText()));
                } else if (str2.equals("Size")) {
                    this.currentObject.setSize(XmlResponsesSaxParser.parseLong(getText()));
                } else if (str2.equals("StorageClass")) {
                    this.currentObject.setStorageClass(getText());
                } else if (str2.equals("Owner")) {
                    this.currentObject.setOwner(this.currentOwner);
                    this.currentOwner = null;
                }
            } else if (in("ListBucketResult", "Contents", "Owner")) {
                if (str2.equals("ID")) {
                    this.currentOwner.setId(getText());
                } else if (str2.equals("DisplayName")) {
                    this.currentOwner.setDisplayName(getText());
                }
            } else if (in("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                this.result.getCommonPrefixes().add(XmlResponsesSaxParser.decodeIfSpecified(getText(), this.shouldSDKDecodeResponse));
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListBucketResult")) {
                if (str2.equals("Contents")) {
                    S3ObjectSummary s3ObjectSummary = new S3ObjectSummary();
                    this.currentObject = s3ObjectSummary;
                    s3ObjectSummary.setBucketName(this.result.getBucketName());
                }
            } else if (in("ListBucketResult", "Contents") && str2.equals("Owner")) {
                this.currentOwner = new Owner();
            }
        }

        public ListObjectsV2Result getResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler.class */
    public static class ListPartsHandler extends AbstractHandler {
        private Owner currentOwner;
        private PartSummary currentPart;
        private final PartListing result = new PartListing();

        private Integer parseInteger(String str) {
            String checkForEmptyString = XmlResponsesSaxParser.checkForEmptyString(getText());
            if (checkForEmptyString == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(checkForEmptyString));
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListPartsResult")) {
                if (str2.equals("Bucket")) {
                    this.result.setBucketName(getText());
                } else if (str2.equals("Key")) {
                    this.result.setKey(getText());
                } else if (str2.equals("UploadId")) {
                    this.result.setUploadId(getText());
                } else if (str2.equals("Owner")) {
                    this.result.setOwner(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("Initiator")) {
                    this.result.setInitiator(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("StorageClass")) {
                    this.result.setStorageClass(getText());
                } else if (str2.equals("PartNumberMarker")) {
                    this.result.setPartNumberMarker(parseInteger(getText()).intValue());
                } else if (str2.equals("NextPartNumberMarker")) {
                    this.result.setNextPartNumberMarker(parseInteger(getText()).intValue());
                } else if (str2.equals("MaxParts")) {
                    this.result.setMaxParts(parseInteger(getText()).intValue());
                } else if (str2.equals("EncodingType")) {
                    this.result.setEncodingType(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("IsTruncated")) {
                    this.result.setTruncated(Boolean.parseBoolean(getText()));
                } else if (str2.equals("Part")) {
                    this.result.getParts().add(this.currentPart);
                    this.currentPart = null;
                }
            } else if (in("ListPartsResult", "Part")) {
                if (str2.equals("PartNumber")) {
                    this.currentPart.setPartNumber(Integer.parseInt(getText()));
                } else if (str2.equals("LastModified")) {
                    this.currentPart.setLastModified(ServiceUtils.a(getText()));
                } else if (str2.equals("ETag")) {
                    this.currentPart.setETag(ServiceUtils.d(getText()));
                } else if (str2.equals("Size")) {
                    this.currentPart.setSize(Long.parseLong(getText()));
                }
            } else if (!in("ListPartsResult", "Owner") && !in("ListPartsResult", "Initiator")) {
            } else {
                if (str2.equals("ID")) {
                    this.currentOwner.setId(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("DisplayName")) {
                    this.currentOwner.setDisplayName(XmlResponsesSaxParser.checkForEmptyString(getText()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (!in("ListPartsResult")) {
                return;
            }
            if (str2.equals("Part")) {
                this.currentPart = new PartSummary();
            } else if (str2.equals("Owner") || str2.equals("Initiator")) {
                this.currentOwner = new Owner();
            }
        }

        public PartListing getListPartsResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler.class */
    public static class ListVersionsHandler extends AbstractHandler {
        private Owner currentOwner;
        private S3VersionSummary currentVersionSummary;
        private final boolean shouldSDKDecodeResponse;
        private final VersionListing versionListing = new VersionListing();

        public ListVersionsHandler(boolean z) {
            this.shouldSDKDecodeResponse = z;
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("ListVersionsResult")) {
                if (str2.equals("Name")) {
                    this.versionListing.setBucketName(getText());
                } else if (str2.equals("Prefix")) {
                    this.versionListing.setPrefix(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("KeyMarker")) {
                    this.versionListing.setKeyMarker(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("VersionIdMarker")) {
                    this.versionListing.setVersionIdMarker(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("MaxKeys")) {
                    this.versionListing.setMaxKeys(Integer.parseInt(getText()));
                } else if (str2.equals("Delimiter")) {
                    this.versionListing.setDelimiter(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("EncodingType")) {
                    this.versionListing.setEncodingType(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("NextKeyMarker")) {
                    this.versionListing.setNextKeyMarker(XmlResponsesSaxParser.decodeIfSpecified(XmlResponsesSaxParser.checkForEmptyString(getText()), this.shouldSDKDecodeResponse));
                } else if (str2.equals("NextVersionIdMarker")) {
                    this.versionListing.setNextVersionIdMarker(getText());
                } else if (str2.equals("IsTruncated")) {
                    this.versionListing.setTruncated("true".equals(getText()));
                } else if (str2.equals(JsonDocumentFields.VERSION) || str2.equals("DeleteMarker")) {
                    this.versionListing.getVersionSummaries().add(this.currentVersionSummary);
                    this.currentVersionSummary = null;
                }
            } else if (in("ListVersionsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    String checkForEmptyString = XmlResponsesSaxParser.checkForEmptyString(getText());
                    List<String> commonPrefixes = this.versionListing.getCommonPrefixes();
                    String str4 = checkForEmptyString;
                    if (this.shouldSDKDecodeResponse) {
                        str4 = S3HttpUtils.b(checkForEmptyString);
                    }
                    commonPrefixes.add(str4);
                }
            } else if (in("ListVersionsResult", JsonDocumentFields.VERSION) || in("ListVersionsResult", "DeleteMarker")) {
                if (str2.equals("Key")) {
                    this.currentVersionSummary.setKey(XmlResponsesSaxParser.decodeIfSpecified(getText(), this.shouldSDKDecodeResponse));
                } else if (str2.equals("VersionId")) {
                    this.currentVersionSummary.setVersionId(getText());
                } else if (str2.equals("IsLatest")) {
                    this.currentVersionSummary.setIsLatest("true".equals(getText()));
                } else if (str2.equals("LastModified")) {
                    this.currentVersionSummary.setLastModified(ServiceUtils.a(getText()));
                } else if (str2.equals("ETag")) {
                    this.currentVersionSummary.setETag(ServiceUtils.d(getText()));
                } else if (str2.equals("Size")) {
                    this.currentVersionSummary.setSize(Long.parseLong(getText()));
                } else if (str2.equals("Owner")) {
                    this.currentVersionSummary.setOwner(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("StorageClass")) {
                    this.currentVersionSummary.setStorageClass(getText());
                }
            } else if (!in("ListVersionsResult", JsonDocumentFields.VERSION, "Owner") && !in("ListVersionsResult", "DeleteMarker", "Owner")) {
            } else {
                if (str2.equals("ID")) {
                    this.currentOwner.setId(getText());
                } else if (str2.equals("DisplayName")) {
                    this.currentOwner.setDisplayName(getText());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (in("ListVersionsResult")) {
                if (str2.equals(JsonDocumentFields.VERSION)) {
                    S3VersionSummary s3VersionSummary = new S3VersionSummary();
                    this.currentVersionSummary = s3VersionSummary;
                    s3VersionSummary.setBucketName(this.versionListing.getBucketName());
                } else if (str2.equals("DeleteMarker")) {
                    S3VersionSummary s3VersionSummary2 = new S3VersionSummary();
                    this.currentVersionSummary = s3VersionSummary2;
                    s3VersionSummary2.setBucketName(this.versionListing.getBucketName());
                    this.currentVersionSummary.setIsDeleteMarker(true);
                }
            } else if ((in("ListVersionsResult", JsonDocumentFields.VERSION) || in("ListVersionsResult", "DeleteMarker")) && str2.equals("Owner")) {
                this.currentOwner = new Owner();
            }
        }

        public VersionListing getListing() {
            return this.versionListing;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$RequestPaymentConfigurationHandler.class */
    public static class RequestPaymentConfigurationHandler extends AbstractHandler {
        private String payer = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doEndElement(String str, String str2, String str3) {
            if (in("RequestPaymentConfiguration") && str2.equals("Payer")) {
                this.payer = getText();
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public RequestPaymentConfiguration getConfiguration() {
            return new RequestPaymentConfiguration(RequestPaymentConfiguration.Payer.valueOf(this.payer));
        }
    }

    public XmlResponsesSaxParser() throws AmazonClientException {
        this.xr = null;
        try {
            this.xr = XMLReaderFactory.createXMLReader();
        } catch (SAXException e) {
            System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
            try {
                this.xr = XMLReaderFactory.createXMLReader();
            } catch (SAXException e2) {
                throw new AmazonClientException("Couldn't initialize a sax driver for the XMLReader", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String checkForEmptyString(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String decodeIfSpecified(String str, boolean z) {
        String str2 = str;
        if (z) {
            str2 = S3HttpUtils.b(str);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String findAttributeValue(String str, Attributes attributes) {
        if (StringUtils.a((CharSequence) str) || attributes == null) {
            return null;
        }
        for (int i = 0; i < attributes.getLength(); i++) {
            if (attributes.getQName(i).trim().equalsIgnoreCase(str.trim())) {
                return attributes.getValue(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int parseInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            Log log2 = log;
            log2.c("Unable to parse integer value '" + str + "'", e);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long parseLong(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            Log log2 = log;
            log2.c("Unable to parse long value '" + str + "'", e);
            return -1L;
        }
    }

    public BucketAccelerateConfigurationHandler parseAccelerateConfigurationResponse(InputStream inputStream) throws IOException {
        BucketAccelerateConfigurationHandler bucketAccelerateConfigurationHandler = new BucketAccelerateConfigurationHandler();
        parseXmlInputStream(bucketAccelerateConfigurationHandler, inputStream);
        return bucketAccelerateConfigurationHandler;
    }

    public AccessControlListHandler parseAccessControlListResponse(InputStream inputStream) throws IOException {
        AccessControlListHandler accessControlListHandler = new AccessControlListHandler();
        parseXmlInputStream(accessControlListHandler, inputStream);
        return accessControlListHandler;
    }

    public BucketCrossOriginConfigurationHandler parseBucketCrossOriginConfigurationResponse(InputStream inputStream) throws IOException {
        BucketCrossOriginConfigurationHandler bucketCrossOriginConfigurationHandler = new BucketCrossOriginConfigurationHandler();
        parseXmlInputStream(bucketCrossOriginConfigurationHandler, inputStream);
        return bucketCrossOriginConfigurationHandler;
    }

    public BucketLifecycleConfigurationHandler parseBucketLifecycleConfigurationResponse(InputStream inputStream) throws IOException {
        BucketLifecycleConfigurationHandler bucketLifecycleConfigurationHandler = new BucketLifecycleConfigurationHandler();
        parseXmlInputStream(bucketLifecycleConfigurationHandler, inputStream);
        return bucketLifecycleConfigurationHandler;
    }

    public ListBucketInventoryConfigurationsHandler parseBucketListInventoryConfigurationsResponse(InputStream inputStream) throws IOException {
        ListBucketInventoryConfigurationsHandler listBucketInventoryConfigurationsHandler = new ListBucketInventoryConfigurationsHandler();
        parseXmlInputStream(listBucketInventoryConfigurationsHandler, inputStream);
        return listBucketInventoryConfigurationsHandler;
    }

    public String parseBucketLocationResponse(InputStream inputStream) throws IOException {
        BucketLocationHandler bucketLocationHandler = new BucketLocationHandler();
        parseXmlInputStream(bucketLocationHandler, inputStream);
        return bucketLocationHandler.getLocation();
    }

    public CompleteMultipartUploadHandler parseCompleteMultipartUploadResponse(InputStream inputStream) throws IOException {
        CompleteMultipartUploadHandler completeMultipartUploadHandler = new CompleteMultipartUploadHandler();
        parseXmlInputStream(completeMultipartUploadHandler, inputStream);
        return completeMultipartUploadHandler;
    }

    public CopyObjectResultHandler parseCopyObjectResponse(InputStream inputStream) throws IOException {
        CopyObjectResultHandler copyObjectResultHandler = new CopyObjectResultHandler();
        parseXmlInputStream(copyObjectResultHandler, inputStream);
        return copyObjectResultHandler;
    }

    public DeleteObjectsHandler parseDeletedObjectsResult(InputStream inputStream) throws IOException {
        DeleteObjectsHandler deleteObjectsHandler = new DeleteObjectsHandler();
        parseXmlInputStream(deleteObjectsHandler, inputStream);
        return deleteObjectsHandler;
    }

    public GetBucketAnalyticsConfigurationHandler parseGetBucketAnalyticsConfigurationResponse(InputStream inputStream) throws IOException {
        GetBucketAnalyticsConfigurationHandler getBucketAnalyticsConfigurationHandler = new GetBucketAnalyticsConfigurationHandler();
        parseXmlInputStream(getBucketAnalyticsConfigurationHandler, inputStream);
        return getBucketAnalyticsConfigurationHandler;
    }

    public GetBucketInventoryConfigurationHandler parseGetBucketInventoryConfigurationResponse(InputStream inputStream) throws IOException {
        GetBucketInventoryConfigurationHandler getBucketInventoryConfigurationHandler = new GetBucketInventoryConfigurationHandler();
        parseXmlInputStream(getBucketInventoryConfigurationHandler, inputStream);
        return getBucketInventoryConfigurationHandler;
    }

    public GetBucketMetricsConfigurationHandler parseGetBucketMetricsConfigurationResponse(InputStream inputStream) throws IOException {
        GetBucketMetricsConfigurationHandler getBucketMetricsConfigurationHandler = new GetBucketMetricsConfigurationHandler();
        parseXmlInputStream(getBucketMetricsConfigurationHandler, inputStream);
        return getBucketMetricsConfigurationHandler;
    }

    public InitiateMultipartUploadHandler parseInitiateMultipartUploadResponse(InputStream inputStream) throws IOException {
        InitiateMultipartUploadHandler initiateMultipartUploadHandler = new InitiateMultipartUploadHandler();
        parseXmlInputStream(initiateMultipartUploadHandler, inputStream);
        return initiateMultipartUploadHandler;
    }

    public ListBucketAnalyticsConfigurationHandler parseListBucketAnalyticsConfigurationResponse(InputStream inputStream) throws IOException {
        ListBucketAnalyticsConfigurationHandler listBucketAnalyticsConfigurationHandler = new ListBucketAnalyticsConfigurationHandler();
        parseXmlInputStream(listBucketAnalyticsConfigurationHandler, inputStream);
        return listBucketAnalyticsConfigurationHandler;
    }

    public ListBucketMetricsConfigurationsHandler parseListBucketMetricsConfigurationsResponse(InputStream inputStream) throws IOException {
        ListBucketMetricsConfigurationsHandler listBucketMetricsConfigurationsHandler = new ListBucketMetricsConfigurationsHandler();
        parseXmlInputStream(listBucketMetricsConfigurationsHandler, inputStream);
        return listBucketMetricsConfigurationsHandler;
    }

    public ListBucketHandler parseListBucketObjectsResponse(InputStream inputStream, boolean z) throws IOException {
        ListBucketHandler listBucketHandler = new ListBucketHandler(z);
        parseXmlInputStream(listBucketHandler, sanitizeXmlDocument(listBucketHandler, inputStream));
        return listBucketHandler;
    }

    public ListMultipartUploadsHandler parseListMultipartUploadsResponse(InputStream inputStream) throws IOException {
        ListMultipartUploadsHandler listMultipartUploadsHandler = new ListMultipartUploadsHandler();
        parseXmlInputStream(listMultipartUploadsHandler, inputStream);
        return listMultipartUploadsHandler;
    }

    public ListAllMyBucketsHandler parseListMyBucketsResponse(InputStream inputStream) throws IOException {
        ListAllMyBucketsHandler listAllMyBucketsHandler = new ListAllMyBucketsHandler();
        parseXmlInputStream(listAllMyBucketsHandler, sanitizeXmlDocument(listAllMyBucketsHandler, inputStream));
        return listAllMyBucketsHandler;
    }

    public ListObjectsV2Handler parseListObjectsV2Response(InputStream inputStream, boolean z) throws IOException {
        ListObjectsV2Handler listObjectsV2Handler = new ListObjectsV2Handler(z);
        parseXmlInputStream(listObjectsV2Handler, sanitizeXmlDocument(listObjectsV2Handler, inputStream));
        return listObjectsV2Handler;
    }

    public ListPartsHandler parseListPartsResponse(InputStream inputStream) throws IOException {
        ListPartsHandler listPartsHandler = new ListPartsHandler();
        parseXmlInputStream(listPartsHandler, inputStream);
        return listPartsHandler;
    }

    public ListVersionsHandler parseListVersionsResponse(InputStream inputStream, boolean z) throws IOException {
        ListVersionsHandler listVersionsHandler = new ListVersionsHandler(z);
        parseXmlInputStream(listVersionsHandler, sanitizeXmlDocument(listVersionsHandler, inputStream));
        return listVersionsHandler;
    }

    public BucketLoggingConfigurationHandler parseLoggingStatusResponse(InputStream inputStream) throws IOException {
        BucketLoggingConfigurationHandler bucketLoggingConfigurationHandler = new BucketLoggingConfigurationHandler();
        parseXmlInputStream(bucketLoggingConfigurationHandler, inputStream);
        return bucketLoggingConfigurationHandler;
    }

    public GetObjectTaggingHandler parseObjectTaggingResponse(InputStream inputStream) throws IOException {
        GetObjectTaggingHandler getObjectTaggingHandler = new GetObjectTaggingHandler();
        parseXmlInputStream(getObjectTaggingHandler, inputStream);
        return getObjectTaggingHandler;
    }

    public BucketReplicationConfigurationHandler parseReplicationConfigurationResponse(InputStream inputStream) throws IOException {
        BucketReplicationConfigurationHandler bucketReplicationConfigurationHandler = new BucketReplicationConfigurationHandler();
        parseXmlInputStream(bucketReplicationConfigurationHandler, inputStream);
        return bucketReplicationConfigurationHandler;
    }

    public RequestPaymentConfigurationHandler parseRequestPaymentConfigurationResponse(InputStream inputStream) throws IOException {
        RequestPaymentConfigurationHandler requestPaymentConfigurationHandler = new RequestPaymentConfigurationHandler();
        parseXmlInputStream(requestPaymentConfigurationHandler, inputStream);
        return requestPaymentConfigurationHandler;
    }

    public BucketTaggingConfigurationHandler parseTaggingConfigurationResponse(InputStream inputStream) throws IOException {
        BucketTaggingConfigurationHandler bucketTaggingConfigurationHandler = new BucketTaggingConfigurationHandler();
        parseXmlInputStream(bucketTaggingConfigurationHandler, inputStream);
        return bucketTaggingConfigurationHandler;
    }

    public BucketVersioningConfigurationHandler parseVersioningConfigurationResponse(InputStream inputStream) throws IOException {
        BucketVersioningConfigurationHandler bucketVersioningConfigurationHandler = new BucketVersioningConfigurationHandler();
        parseXmlInputStream(bucketVersioningConfigurationHandler, inputStream);
        return bucketVersioningConfigurationHandler;
    }

    public BucketWebsiteConfigurationHandler parseWebsiteConfigurationResponse(InputStream inputStream) throws IOException {
        BucketWebsiteConfigurationHandler bucketWebsiteConfigurationHandler = new BucketWebsiteConfigurationHandler();
        parseXmlInputStream(bucketWebsiteConfigurationHandler, inputStream);
        return bucketWebsiteConfigurationHandler;
    }

    protected void parseXmlInputStream(DefaultHandler defaultHandler, InputStream inputStream) throws IOException {
        try {
            Log log2 = log;
            if (log2.a()) {
                log2.b("Parsing XML response document with handler: " + defaultHandler.getClass());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            this.xr.setContentHandler(defaultHandler);
            this.xr.setErrorHandler(defaultHandler);
            this.xr.parse(new InputSource(bufferedReader));
        } catch (IOException e) {
            throw e;
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                if (log.b()) {
                    log.c("Unable to close response InputStream up after XML parse failure", e2);
                }
            }
            throw new AmazonClientException("Failed to parse XML document with handler " + defaultHandler.getClass(), th);
        }
    }

    protected InputStream sanitizeXmlDocument(DefaultHandler defaultHandler, InputStream inputStream) throws IOException {
        Log log2 = log;
        if (log2.a()) {
            log2.b("Sanitizing XML document destined for handler " + defaultHandler.getClass());
        }
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            char[] cArr = new char[PropertyFlags.UNSIGNED];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read != -1) {
                    sb.append(cArr, 0, read);
                } else {
                    bufferedReader.close();
                    return new ByteArrayInputStream(sb.toString().replaceAll(org.apache.commons.lang3.StringUtils.CR, "&#013;").getBytes(StringUtils.f6920a));
                }
            }
        } catch (IOException e) {
            throw e;
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                if (log.b()) {
                    log.c("Unable to close response InputStream after failure sanitizing XML document", e2);
                }
            }
            throw new AmazonClientException("Failed to sanitize XML document destined for handler " + defaultHandler.getClass(), th);
        }
    }
}
