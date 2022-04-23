package proguard.optimize.gson;

import com.amazonaws.logging.AndroidLog;
import com.amazonaws.logging.ConsoleLog;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.logging.OptimizedAndroidLogTypeAdapter;
import com.amazonaws.logging.OptimizedConsoleLogTypeAdapter;
import com.amazonaws.logging.OptimizedLogFactory$LevelTypeAdapter;
import com.amazonaws.mobileconnectors.s3.transferutility.OptimizedTransferNetworkConnectionTypeTypeAdapter;
import com.amazonaws.mobileconnectors.s3.transferutility.OptimizedTransferUtilityOptionsTypeAdapter;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferUtilityOptions;
import com.amazonaws.services.s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.s3.model.CloudFunctionConfiguration;
import com.amazonaws.services.s3.model.Filter;
import com.amazonaws.services.s3.model.FilterRule;
import com.amazonaws.services.s3.model.LambdaConfiguration;
import com.amazonaws.services.s3.model.NotificationConfiguration;
import com.amazonaws.services.s3.model.OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedCloudFunctionConfigurationTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedFilterRuleTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedFilterTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedLambdaConfigurationTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedNotificationConfigurationTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedQueueConfigurationTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedS3KeyFilterTypeAdapter;
import com.amazonaws.services.s3.model.OptimizedTopicConfigurationTypeAdapter;
import com.amazonaws.services.s3.model.QueueConfiguration;
import com.amazonaws.services.s3.model.S3KeyFilter;
import com.amazonaws.services.s3.model.TopicConfiguration;
import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.k;
import com.mopub.common.OptimizedViewabilityVendorTypeAdapter;
import com.mopub.common.ViewabilityVendor;
import com.mopub.mobileads.OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastAbsoluteProgressTrackerTypeAdapter;
import com.mopub.mobileads.OptimizedVastCompanionAdConfig$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastCompanionAdConfigTypeAdapter;
import com.mopub.mobileads.OptimizedVastFractionalProgressTracker$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastFractionalProgressTrackerTypeAdapter;
import com.mopub.mobileads.OptimizedVastIconConfig$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastIconConfigTypeAdapter;
import com.mopub.mobileads.OptimizedVastResource$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastResource$CreativeTypeTypeAdapter;
import com.mopub.mobileads.OptimizedVastResource$TypeTypeAdapter;
import com.mopub.mobileads.OptimizedVastResourceTypeAdapter;
import com.mopub.mobileads.OptimizedVastTracker$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastTracker$MessageTypeTypeAdapter;
import com.mopub.mobileads.OptimizedVastTrackerTypeAdapter;
import com.mopub.mobileads.OptimizedVastVideoConfig$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVastVideoConfigTypeAdapter;
import com.mopub.mobileads.OptimizedVideoViewabilityTracker$CompanionTypeAdapter;
import com.mopub.mobileads.OptimizedVideoViewabilityTrackerTypeAdapter;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastCompanionAdConfig;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastIconConfig;
import com.mopub.mobileads.VastResource;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.mobileads.VideoViewabilityTracker;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.g;
import com.twitter.sdk.android.core.h;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import com.twitter.sdk.android.core.internal.oauth.e;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.OptimizedApiErrorTypeAdapter;
import com.twitter.sdk.android.core.models.OptimizedApiErrorsTypeAdapter;
/* loaded from: classes5-dex2jar.jar:proguard/optimize/gson/c.class */
public final class c implements k {

    /* renamed from: a  reason: collision with root package name */
    private static final _OptimizedJsonReaderImpl f39399a = new _OptimizedJsonReaderImpl();

    /* renamed from: b  reason: collision with root package name */
    private static final _OptimizedJsonWriterImpl f39400b = new _OptimizedJsonWriterImpl();

    @Override // com.google.gson.k
    public final <T> j<T> create(f fVar, a<T> aVar) {
        if (aVar.getRawType() == VastAbsoluteProgressTracker.Companion.class) {
            return new OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastIconConfig.class) {
            return new OptimizedVastIconConfigTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastResource.class) {
            return new OptimizedVastResourceTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == TransferNetworkConnectionType.class) {
            return new OptimizedTransferNetworkConnectionTypeTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastCompanionAdConfig.class) {
            return new OptimizedVastCompanionAdConfigTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == OAuth2Token.class) {
            return new e(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == S3KeyFilter.class) {
            return new OptimizedS3KeyFilterTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VideoViewabilityTracker.Companion.class) {
            return new OptimizedVideoViewabilityTracker$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == ApiError.class) {
            return new OptimizedApiErrorTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == CloudFunctionConfiguration.class) {
            return new OptimizedCloudFunctionConfigurationTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == NotificationConfiguration.class) {
            return new OptimizedNotificationConfigurationTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == ViewabilityVendor.class) {
            return new OptimizedViewabilityVendorTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VideoViewabilityTracker.class) {
            return new OptimizedVideoViewabilityTrackerTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == Filter.class) {
            return new OptimizedFilterTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastFractionalProgressTracker.Companion.class) {
            return new OptimizedVastFractionalProgressTracker$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastFractionalProgressTracker.class) {
            return new OptimizedVastFractionalProgressTrackerTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastVideoConfig.Companion.class) {
            return new OptimizedVastVideoConfig$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastCompanionAdConfig.Companion.class) {
            return new OptimizedVastCompanionAdConfig$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastIconConfig.Companion.class) {
            return new OptimizedVastIconConfig$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastResource.Companion.class) {
            return new OptimizedVastResource$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == QueueConfiguration.class) {
            return new OptimizedQueueConfigurationTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == AndroidLog.class) {
            return new OptimizedAndroidLogTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastTracker.MessageType.class) {
            return new OptimizedVastTracker$MessageTypeTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == TwitterAuthToken.class) {
            return new h(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == TopicConfiguration.class) {
            return new OptimizedTopicConfigurationTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == LogFactory.Level.class) {
            return new OptimizedLogFactory$LevelTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastTracker.Companion.class) {
            return new OptimizedVastTracker$CompanionTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == BucketNotificationConfiguration.TopicConfiguration.class) {
            return new OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastVideoConfig.class) {
            return new OptimizedVastVideoConfigTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastTracker.class) {
            return new OptimizedVastTrackerTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == TransferUtilityOptions.class) {
            return new OptimizedTransferUtilityOptionsTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastAbsoluteProgressTracker.class) {
            return new OptimizedVastAbsoluteProgressTrackerTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == FilterRule.class) {
            return new OptimizedFilterRuleTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastResource.Type.class) {
            return new OptimizedVastResource$TypeTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == com.twitter.sdk.android.core.a.class) {
            return new g(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == ConsoleLog.class) {
            return new OptimizedConsoleLogTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == ApiErrors.class) {
            return new OptimizedApiErrorsTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == LambdaConfiguration.class) {
            return new OptimizedLambdaConfigurationTypeAdapter(fVar, f39399a, f39400b);
        }
        if (aVar.getRawType() == VastResource.CreativeType.class) {
            return new OptimizedVastResource$CreativeTypeTypeAdapter(fVar, f39399a, f39400b);
        }
        return null;
    }
}
