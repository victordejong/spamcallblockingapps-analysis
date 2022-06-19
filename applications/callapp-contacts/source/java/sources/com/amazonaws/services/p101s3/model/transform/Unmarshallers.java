package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.internal.DeleteObjectsResponse;
import com.amazonaws.services.p101s3.model.AccessControlList;
import com.amazonaws.services.p101s3.model.Bucket;
import com.amazonaws.services.p101s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.p101s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.p101s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.p101s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.p101s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.p101s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.p101s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.p101s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.p101s3.model.DeleteBucketAnalyticsConfigurationResult;
import com.amazonaws.services.p101s3.model.DeleteBucketInventoryConfigurationResult;
import com.amazonaws.services.p101s3.model.DeleteBucketMetricsConfigurationResult;
import com.amazonaws.services.p101s3.model.DeleteObjectTaggingResult;
import com.amazonaws.services.p101s3.model.GetBucketAnalyticsConfigurationResult;
import com.amazonaws.services.p101s3.model.GetBucketInventoryConfigurationResult;
import com.amazonaws.services.p101s3.model.GetBucketMetricsConfigurationResult;
import com.amazonaws.services.p101s3.model.GetObjectTaggingResult;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.ListBucketAnalyticsConfigurationsResult;
import com.amazonaws.services.p101s3.model.ListBucketInventoryConfigurationsResult;
import com.amazonaws.services.p101s3.model.ListBucketMetricsConfigurationsResult;
import com.amazonaws.services.p101s3.model.ListObjectsV2Result;
import com.amazonaws.services.p101s3.model.MultipartUploadListing;
import com.amazonaws.services.p101s3.model.ObjectListing;
import com.amazonaws.services.p101s3.model.Owner;
import com.amazonaws.services.p101s3.model.PartListing;
import com.amazonaws.services.p101s3.model.RequestPaymentConfiguration;
import com.amazonaws.services.p101s3.model.SetBucketAnalyticsConfigurationResult;
import com.amazonaws.services.p101s3.model.SetBucketInventoryConfigurationResult;
import com.amazonaws.services.p101s3.model.SetBucketMetricsConfigurationResult;
import com.amazonaws.services.p101s3.model.SetObjectTaggingResult;
import com.amazonaws.services.p101s3.model.VersionListing;
import com.amazonaws.services.p101s3.model.transform.XmlResponsesSaxParser;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers.class */
public class Unmarshallers {

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$AccessControlListUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller.class */
    public static final class AccessControlListUnmarshaller implements Unmarshaller<AccessControlList, InputStream> {
        public final AccessControlList unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseAccessControlListResponse(inputStream).getAccessControlList();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketAccelerateConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller.class */
    public static final class BucketAccelerateConfigurationUnmarshaller implements Unmarshaller<BucketAccelerateConfiguration, InputStream> {
        public final BucketAccelerateConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseAccelerateConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketCrossOriginConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller.class */
    public static final class BucketCrossOriginConfigurationUnmarshaller implements Unmarshaller<BucketCrossOriginConfiguration, InputStream> {
        public final BucketCrossOriginConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseBucketCrossOriginConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketLifecycleConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller.class */
    public static final class BucketLifecycleConfigurationUnmarshaller implements Unmarshaller<BucketLifecycleConfiguration, InputStream> {
        public final BucketLifecycleConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseBucketLifecycleConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketLocationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller.class */
    public static final class BucketLocationUnmarshaller implements Unmarshaller<String, InputStream> {
        public final String unmarshall(InputStream inputStream) throws Exception {
            String parseBucketLocationResponse = new XmlResponsesSaxParser().parseBucketLocationResponse(inputStream);
            String str = parseBucketLocationResponse;
            if (parseBucketLocationResponse == null) {
                str = "US";
            }
            return str;
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketLoggingConfigurationnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller.class */
    public static final class BucketLoggingConfigurationnmarshaller implements Unmarshaller<BucketLoggingConfiguration, InputStream> {
        public final BucketLoggingConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseLoggingStatusResponse(inputStream).getBucketLoggingConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketReplicationConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller.class */
    public static final class BucketReplicationConfigurationUnmarshaller implements Unmarshaller<BucketReplicationConfiguration, InputStream> {
        public final BucketReplicationConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseReplicationConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketTaggingConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller.class */
    public static final class BucketTaggingConfigurationUnmarshaller implements Unmarshaller<BucketTaggingConfiguration, InputStream> {
        public final BucketTaggingConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseTaggingConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketVersioningConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller.class */
    public static final class BucketVersioningConfigurationUnmarshaller implements Unmarshaller<BucketVersioningConfiguration, InputStream> {
        public final BucketVersioningConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseVersioningConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$BucketWebsiteConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller.class */
    public static final class BucketWebsiteConfigurationUnmarshaller implements Unmarshaller<BucketWebsiteConfiguration, InputStream> {
        public final BucketWebsiteConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseWebsiteConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$CompleteMultipartUploadResultUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller.class */
    public static final class CompleteMultipartUploadResultUnmarshaller implements Unmarshaller<XmlResponsesSaxParser.CompleteMultipartUploadHandler, InputStream> {
        public final XmlResponsesSaxParser.CompleteMultipartUploadHandler unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseCompleteMultipartUploadResponse(inputStream);
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$CopyObjectUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller.class */
    public static final class CopyObjectUnmarshaller implements Unmarshaller<XmlResponsesSaxParser.CopyObjectResultHandler, InputStream> {
        public final XmlResponsesSaxParser.CopyObjectResultHandler unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseCopyObjectResponse(inputStream);
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$DeleteBucketAnalyticsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketAnalyticsConfigurationUnmarshaller.class */
    public static final class DeleteBucketAnalyticsConfigurationUnmarshaller implements Unmarshaller<DeleteBucketAnalyticsConfigurationResult, InputStream> {
        public final DeleteBucketAnalyticsConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new DeleteBucketAnalyticsConfigurationResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$DeleteBucketInventoryConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketInventoryConfigurationUnmarshaller.class */
    public static final class DeleteBucketInventoryConfigurationUnmarshaller implements Unmarshaller<DeleteBucketInventoryConfigurationResult, InputStream> {
        public final DeleteBucketInventoryConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new DeleteBucketInventoryConfigurationResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$DeleteBucketMetricsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$DeleteBucketMetricsConfigurationUnmarshaller.class */
    public static final class DeleteBucketMetricsConfigurationUnmarshaller implements Unmarshaller<DeleteBucketMetricsConfigurationResult, InputStream> {
        public final DeleteBucketMetricsConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new DeleteBucketMetricsConfigurationResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$DeleteObjectTaggingResponseUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectTaggingResponseUnmarshaller.class */
    public static final class DeleteObjectTaggingResponseUnmarshaller implements Unmarshaller<DeleteObjectTaggingResult, InputStream> {
        public final DeleteObjectTaggingResult unmarshall(InputStream inputStream) throws Exception {
            return new DeleteObjectTaggingResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$DeleteObjectsResultUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller.class */
    public static final class DeleteObjectsResultUnmarshaller implements Unmarshaller<DeleteObjectsResponse, InputStream> {
        public final DeleteObjectsResponse unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseDeletedObjectsResult(inputStream).getDeleteObjectResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$GetBucketAnalyticsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketAnalyticsConfigurationUnmarshaller.class */
    public static final class GetBucketAnalyticsConfigurationUnmarshaller implements Unmarshaller<GetBucketAnalyticsConfigurationResult, InputStream> {
        public final GetBucketAnalyticsConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseGetBucketAnalyticsConfigurationResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$GetBucketInventoryConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketInventoryConfigurationUnmarshaller.class */
    public static final class GetBucketInventoryConfigurationUnmarshaller implements Unmarshaller<GetBucketInventoryConfigurationResult, InputStream> {
        public final GetBucketInventoryConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseGetBucketInventoryConfigurationResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$GetBucketMetricsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller.class */
    public static final class GetBucketMetricsConfigurationUnmarshaller implements Unmarshaller<GetBucketMetricsConfigurationResult, InputStream> {
        public final GetBucketMetricsConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseGetBucketMetricsConfigurationResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$GetObjectTaggingResponseUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$GetObjectTaggingResponseUnmarshaller.class */
    public static final class GetObjectTaggingResponseUnmarshaller implements Unmarshaller<GetObjectTaggingResult, InputStream> {
        public final GetObjectTaggingResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseObjectTaggingResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$InitiateMultipartUploadResultUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller.class */
    public static final class InitiateMultipartUploadResultUnmarshaller implements Unmarshaller<InitiateMultipartUploadResult, InputStream> {
        public final InitiateMultipartUploadResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseInitiateMultipartUploadResponse(inputStream).getInitiateMultipartUploadResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$InputStreamUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$InputStreamUnmarshaller.class */
    public static final class InputStreamUnmarshaller implements Unmarshaller<InputStream, InputStream> {
        public final InputStream unmarshall(InputStream inputStream) throws Exception {
            return inputStream;
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListBucketAnalyticsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketAnalyticsConfigurationUnmarshaller.class */
    public static final class ListBucketAnalyticsConfigurationUnmarshaller implements Unmarshaller<ListBucketAnalyticsConfigurationsResult, InputStream> {
        public final ListBucketAnalyticsConfigurationsResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListBucketAnalyticsConfigurationResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListBucketInventoryConfigurationsUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketInventoryConfigurationsUnmarshaller.class */
    public static final class ListBucketInventoryConfigurationsUnmarshaller implements Unmarshaller<ListBucketInventoryConfigurationsResult, InputStream> {
        public final ListBucketInventoryConfigurationsResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseBucketListInventoryConfigurationsResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListBucketMetricsConfigurationsUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketMetricsConfigurationsUnmarshaller.class */
    public static final class ListBucketMetricsConfigurationsUnmarshaller implements Unmarshaller<ListBucketMetricsConfigurationsResult, InputStream> {
        public final ListBucketMetricsConfigurationsResult unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListBucketMetricsConfigurationsResponse(inputStream).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListBucketsOwnerUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller.class */
    public static final class ListBucketsOwnerUnmarshaller implements Unmarshaller<Owner, InputStream> {
        public final Owner unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListMyBucketsResponse(inputStream).getOwner();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListBucketsUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller.class */
    public static final class ListBucketsUnmarshaller implements Unmarshaller<List<Bucket>, InputStream> {
        public final List<Bucket> unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListMyBucketsResponse(inputStream).getBuckets();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListMultipartUploadsResultUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller.class */
    public static final class ListMultipartUploadsResultUnmarshaller implements Unmarshaller<MultipartUploadListing, InputStream> {
        public final MultipartUploadListing unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListMultipartUploadsResponse(inputStream).getListMultipartUploadsResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListObjectsUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller.class */
    public static final class ListObjectsUnmarshaller implements Unmarshaller<ObjectListing, InputStream> {
        private final boolean shouldSDKDecodeResponse;

        public ListObjectsUnmarshaller(boolean z) {
            this.shouldSDKDecodeResponse = z;
        }

        public final ObjectListing unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListBucketObjectsResponse(inputStream, this.shouldSDKDecodeResponse).getObjectListing();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListObjectsV2Unmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller.class */
    public static final class ListObjectsV2Unmarshaller implements Unmarshaller<ListObjectsV2Result, InputStream> {
        private final boolean shouldSDKDecodeResponse;

        public ListObjectsV2Unmarshaller(boolean z) {
            this.shouldSDKDecodeResponse = z;
        }

        public final ListObjectsV2Result unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListObjectsV2Response(inputStream, this.shouldSDKDecodeResponse).getResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$ListPartsResultUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller.class */
    public static final class ListPartsResultUnmarshaller implements Unmarshaller<PartListing, InputStream> {
        public final PartListing unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListPartsResponse(inputStream).getListPartsResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$RequestPaymentConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller.class */
    public static final class RequestPaymentConfigurationUnmarshaller implements Unmarshaller<RequestPaymentConfiguration, InputStream> {
        public final RequestPaymentConfiguration unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseRequestPaymentConfigurationResponse(inputStream).getConfiguration();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$SetBucketAnalyticsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketAnalyticsConfigurationUnmarshaller.class */
    public static final class SetBucketAnalyticsConfigurationUnmarshaller implements Unmarshaller<SetBucketAnalyticsConfigurationResult, InputStream> {
        public final SetBucketAnalyticsConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new SetBucketAnalyticsConfigurationResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$SetBucketInventoryConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketInventoryConfigurationUnmarshaller.class */
    public static final class SetBucketInventoryConfigurationUnmarshaller implements Unmarshaller<SetBucketInventoryConfigurationResult, InputStream> {
        public final SetBucketInventoryConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new SetBucketInventoryConfigurationResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$SetBucketMetricsConfigurationUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$SetBucketMetricsConfigurationUnmarshaller.class */
    public static final class SetBucketMetricsConfigurationUnmarshaller implements Unmarshaller<SetBucketMetricsConfigurationResult, InputStream> {
        public final SetBucketMetricsConfigurationResult unmarshall(InputStream inputStream) throws Exception {
            return new SetBucketMetricsConfigurationResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$SetObjectTaggingResponseUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$SetObjectTaggingResponseUnmarshaller.class */
    public static final class SetObjectTaggingResponseUnmarshaller implements Unmarshaller<SetObjectTaggingResult, InputStream> {
        public final SetObjectTaggingResult unmarshall(InputStream inputStream) throws Exception {
            return new SetObjectTaggingResult();
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.Unmarshallers$VersionListUnmarshaller */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller.class */
    public static final class VersionListUnmarshaller implements Unmarshaller<VersionListing, InputStream> {
        private final boolean shouldSDKDecodeResponse;

        public VersionListUnmarshaller(boolean z) {
            this.shouldSDKDecodeResponse = z;
        }

        public final VersionListing unmarshall(InputStream inputStream) throws Exception {
            return new XmlResponsesSaxParser().parseListVersionsResponse(inputStream, this.shouldSDKDecodeResponse).getListing();
        }
    }
}
