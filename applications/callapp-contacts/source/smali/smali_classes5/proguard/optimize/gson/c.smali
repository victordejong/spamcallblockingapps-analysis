.class public final Lproguard/optimize/gson/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/k;


# static fields
.field private static final a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

.field private static final b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    invoke-direct {v0}, Lproguard/optimize/gson/_OptimizedJsonReaderImpl;-><init>()V

    sput-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    .line 39
    new-instance v0, Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {v0}, Lproguard/optimize/gson/_OptimizedJsonWriterImpl;-><init>()V

    sput-object v0, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/f;Lcom/google/gson/a/a;)Lcom/google/gson/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/a/a<",
            "TT;>;)",
            "Lcom/google/gson/j<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    if-ne v0, v1, :cond_0

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastAbsoluteProgressTracker$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastIconConfig;

    if-ne v0, v1, :cond_1

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastIconConfigTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastIconConfigTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastResource;

    if-ne v0, v1, :cond_2

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastResourceTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastResourceTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    if-ne v0, v1, :cond_3

    new-instance p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferNetworkConnectionTypeTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferNetworkConnectionTypeTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-ne v0, v1, :cond_4

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfigTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfigTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    if-ne v0, v1, :cond_5

    new-instance p2, Lcom/twitter/sdk/android/core/internal/oauth/e;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/e;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/S3KeyFilter;

    if-ne v0, v1, :cond_6

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedS3KeyFilterTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedS3KeyFilterTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_6
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;

    if-ne v0, v1, :cond_7

    new-instance p2, Lcom/mopub/mobileads/OptimizedVideoViewabilityTracker$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVideoViewabilityTracker$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_7
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/models/ApiError;

    if-ne v0, v1, :cond_8

    new-instance p2, Lcom/twitter/sdk/android/core/models/OptimizedApiErrorTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/twitter/sdk/android/core/models/OptimizedApiErrorTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_8
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;

    if-ne v0, v1, :cond_9

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedCloudFunctionConfigurationTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedCloudFunctionConfigurationTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_9
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    if-ne v0, v1, :cond_a

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedNotificationConfigurationTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedNotificationConfigurationTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/common/ViewabilityVendor;

    if-ne v0, v1, :cond_b

    new-instance p2, Lcom/mopub/common/OptimizedViewabilityVendorTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/common/OptimizedViewabilityVendorTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_b
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VideoViewabilityTracker;

    if-ne v0, v1, :cond_c

    new-instance p2, Lcom/mopub/mobileads/OptimizedVideoViewabilityTrackerTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVideoViewabilityTrackerTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_c
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/Filter;

    if-ne v0, v1, :cond_d

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedFilterTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedFilterTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_d
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;

    if-ne v0, v1, :cond_e

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastFractionalProgressTracker$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastFractionalProgressTracker$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_e
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    if-ne v0, v1, :cond_f

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastFractionalProgressTrackerTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastFractionalProgressTrackerTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_f
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastVideoConfig$Companion;

    if-ne v0, v1, :cond_10

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastVideoConfig$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastVideoConfig$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_10
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;

    if-ne v0, v1, :cond_11

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_11
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastIconConfig$Companion;

    if-ne v0, v1, :cond_12

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastIconConfig$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastIconConfig$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_12
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastResource$Companion;

    if-ne v0, v1, :cond_13

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastResource$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastResource$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_13
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    if-ne v0, v1, :cond_14

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedQueueConfigurationTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedQueueConfigurationTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_14
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/logging/AndroidLog;

    if-ne v0, v1, :cond_15

    new-instance p2, Lcom/amazonaws/logging/OptimizedAndroidLogTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/logging/OptimizedAndroidLogTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_15
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastTracker$MessageType;

    if-ne v0, v1, :cond_16

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastTracker$MessageTypeTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastTracker$MessageTypeTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_16
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-ne v0, v1, :cond_17

    new-instance p2, Lcom/twitter/sdk/android/core/h;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/twitter/sdk/android/core/h;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_17
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/TopicConfiguration;

    if-ne v0, v1, :cond_18

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedTopicConfigurationTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedTopicConfigurationTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_18
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/logging/LogFactory$Level;

    if-ne v0, v1, :cond_19

    new-instance p2, Lcom/amazonaws/logging/OptimizedLogFactory$LevelTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/logging/OptimizedLogFactory$LevelTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_19
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastTracker$Companion;

    if-ne v0, v1, :cond_1a

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastTracker$CompanionTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastTracker$CompanionTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1a
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    if-ne v0, v1, :cond_1b

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedBucketNotificationConfiguration$TopicConfigurationTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1b
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastVideoConfig;

    if-ne v0, v1, :cond_1c

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastVideoConfigTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastVideoConfigTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1c
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastTracker;

    if-ne v0, v1, :cond_1d

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastTrackerTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastTrackerTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1d
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    if-ne v0, v1, :cond_1e

    new-instance p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1e
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    if-ne v0, v1, :cond_1f

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastAbsoluteProgressTrackerTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastAbsoluteProgressTrackerTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_1f
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/FilterRule;

    if-ne v0, v1, :cond_20

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedFilterRuleTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedFilterRuleTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_20
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastResource$Type;

    if-ne v0, v1, :cond_21

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_21
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/a;

    if-ne v0, v1, :cond_22

    new-instance p2, Lcom/twitter/sdk/android/core/g;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/twitter/sdk/android/core/g;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_22
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/logging/ConsoleLog;

    if-ne v0, v1, :cond_23

    new-instance p2, Lcom/amazonaws/logging/OptimizedConsoleLogTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/logging/OptimizedConsoleLogTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_23
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/models/ApiErrors;

    if-ne v0, v1, :cond_24

    new-instance p2, Lcom/twitter/sdk/android/core/models/OptimizedApiErrorsTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/twitter/sdk/android/core/models/OptimizedApiErrorsTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_24
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazonaws/services/s3/model/LambdaConfiguration;

    if-ne v0, v1, :cond_25

    new-instance p2, Lcom/amazonaws/services/s3/model/OptimizedLambdaConfigurationTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/amazonaws/services/s3/model/OptimizedLambdaConfigurationTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_25
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/mopub/mobileads/VastResource$CreativeType;

    if-ne p2, v0, :cond_26

    new-instance p2, Lcom/mopub/mobileads/OptimizedVastResource$CreativeTypeTypeAdapter;

    sget-object v0, Lproguard/optimize/gson/c;->a:Lproguard/optimize/gson/_OptimizedJsonReaderImpl;

    sget-object v1, Lproguard/optimize/gson/c;->b:Lproguard/optimize/gson/_OptimizedJsonWriterImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/mopub/mobileads/OptimizedVastResource$CreativeTypeTypeAdapter;-><init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-object p2

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method
