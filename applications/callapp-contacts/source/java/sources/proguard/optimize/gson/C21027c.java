package proguard.optimize.gson;

import com.amazonaws.logging.AndroidLog;
import com.amazonaws.logging.ConsoleLog;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.logging.OptimizedAndroidLogTypeAdapter;
import com.amazonaws.logging.OptimizedConsoleLogTypeAdapter;
import com.amazonaws.logging.OptimizedLogFactory$LevelTypeAdapter;
import com.amazonaws.mobileconnectors.p100s3.transferutility.OptimizedTransferNetworkConnectionTypeTypeAdapter;
import com.amazonaws.mobileconnectors.p100s3.transferutility.OptimizedTransferUtilityOptionsTypeAdapter;
import com.amazonaws.mobileconnectors.p100s3.transferutility.TransferNetworkConnectionType;
import com.amazonaws.mobileconnectors.p100s3.transferutility.TransferUtilityOptions;
import com.amazonaws.services.p101s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.p101s3.model.C3309xed8199e4;
import com.amazonaws.services.p101s3.model.CloudFunctionConfiguration;
import com.amazonaws.services.p101s3.model.Filter;
import com.amazonaws.services.p101s3.model.FilterRule;
import com.amazonaws.services.p101s3.model.LambdaConfiguration;
import com.amazonaws.services.p101s3.model.NotificationConfiguration;
import com.amazonaws.services.p101s3.model.OptimizedCloudFunctionConfigurationTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedFilterRuleTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedFilterTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedLambdaConfigurationTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedNotificationConfigurationTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedQueueConfigurationTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedS3KeyFilterTypeAdapter;
import com.amazonaws.services.p101s3.model.OptimizedTopicConfigurationTypeAdapter;
import com.amazonaws.services.p101s3.model.QueueConfiguration;
import com.amazonaws.services.p101s3.model.S3KeyFilter;
import com.amazonaws.services.p101s3.model.TopicConfiguration;
import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
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
import com.twitter.sdk.android.core.AbstractC17205a;
import com.twitter.sdk.android.core.C17213g;
import com.twitter.sdk.android.core.C17214h;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.C17269e;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.OptimizedApiErrorTypeAdapter;
import com.twitter.sdk.android.core.models.OptimizedApiErrorsTypeAdapter;
/* renamed from: proguard.optimize.gson.c */
/* loaded from: classes5-dex2jar.jar:proguard/optimize/gson/c.class */
public final class C21027c implements AbstractC16090k {

    /* renamed from: a */
    private static final _OptimizedJsonReaderImpl f67633a = new _OptimizedJsonReaderImpl();

    /* renamed from: b */
    private static final _OptimizedJsonWriterImpl f67634b = new _OptimizedJsonWriterImpl();

    @Override // com.google.gson.AbstractC16090k
    public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
        if (c15950a.getRawType() == VastAbsoluteProgressTracker.Companion.class) {
            return new OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastIconConfig.class) {
            return new OptimizedVastIconConfigTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastResource.class) {
            return new OptimizedVastResourceTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == TransferNetworkConnectionType.class) {
            return new OptimizedTransferNetworkConnectionTypeTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastCompanionAdConfig.class) {
            return new OptimizedVastCompanionAdConfigTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == OAuth2Token.class) {
            return new C17269e(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == S3KeyFilter.class) {
            return new OptimizedS3KeyFilterTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VideoViewabilityTracker.Companion.class) {
            return new OptimizedVideoViewabilityTracker$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == ApiError.class) {
            return new OptimizedApiErrorTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == CloudFunctionConfiguration.class) {
            return new OptimizedCloudFunctionConfigurationTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == NotificationConfiguration.class) {
            return new OptimizedNotificationConfigurationTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == ViewabilityVendor.class) {
            return new OptimizedViewabilityVendorTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VideoViewabilityTracker.class) {
            return new OptimizedVideoViewabilityTrackerTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == Filter.class) {
            return new OptimizedFilterTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastFractionalProgressTracker.Companion.class) {
            return new OptimizedVastFractionalProgressTracker$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastFractionalProgressTracker.class) {
            return new OptimizedVastFractionalProgressTrackerTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastVideoConfig.Companion.class) {
            return new OptimizedVastVideoConfig$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastCompanionAdConfig.Companion.class) {
            return new OptimizedVastCompanionAdConfig$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastIconConfig.Companion.class) {
            return new OptimizedVastIconConfig$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastResource.Companion.class) {
            return new OptimizedVastResource$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == QueueConfiguration.class) {
            return new OptimizedQueueConfigurationTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == AndroidLog.class) {
            return new OptimizedAndroidLogTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastTracker.MessageType.class) {
            return new OptimizedVastTracker$MessageTypeTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == TwitterAuthToken.class) {
            return new C17214h(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == TopicConfiguration.class) {
            return new OptimizedTopicConfigurationTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == LogFactory.Level.class) {
            return new OptimizedLogFactory$LevelTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastTracker.Companion.class) {
            return new OptimizedVastTracker$CompanionTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == BucketNotificationConfiguration.TopicConfiguration.class) {
            return new C3309xed8199e4(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastVideoConfig.class) {
            return new OptimizedVastVideoConfigTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastTracker.class) {
            return new OptimizedVastTrackerTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == TransferUtilityOptions.class) {
            return new OptimizedTransferUtilityOptionsTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastAbsoluteProgressTracker.class) {
            return new OptimizedVastAbsoluteProgressTrackerTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == FilterRule.class) {
            return new OptimizedFilterRuleTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == VastResource.Type.class) {
            return new OptimizedVastResource$TypeTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == AbstractC17205a.class) {
            return new C17213g(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == ConsoleLog.class) {
            return new OptimizedConsoleLogTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == ApiErrors.class) {
            return new OptimizedApiErrorsTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() == LambdaConfiguration.class) {
            return new OptimizedLambdaConfigurationTypeAdapter(c15965f, f67633a, f67634b);
        }
        if (c15950a.getRawType() != VastResource.CreativeType.class) {
            return null;
        }
        return new OptimizedVastResource$CreativeTypeTypeAdapter(c15965f, f67633a, f67634b);
    }
}
