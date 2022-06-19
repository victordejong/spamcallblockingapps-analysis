.class public Lproguard/optimize/gson/_OptimizedJsonWriterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lproguard/optimize/gson/_OptimizedJsonWriter;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lproguard/optimize/gson/_OptimizedJsonWriterImpl;->a()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lproguard/optimize/gson/_OptimizedJsonWriterImpl;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()[Ljava/lang/String;
    .locals 97

    const-string v0, "network_media_file_url"

    const-string v1, "transferServiceCheckTimeInterval"

    const-string v2, "companion_ads"

    const-string v3, "type"

    const-string v4, "IMAGE"

    const-string v5, "dsp_creative_id"

    const-string v6, "CREATOR"

    const-string v7, "verificationNotExecuted"

    const-string v8, "ERROR"

    const-string v9, "queueARN"

    const-string v10, "BLURRED_LAST_FRAME"

    const-string v11, "NONE"

    const-string v12, "percent_viewable"

    const-string v13, "events"

    const-string v14, "height"

    const-string v15, "STATIC_RESOURCE"

    const-string v16, "QUARTILE_EVENT"

    const-string v17, "absolute_trackers"

    const-string v18, "VALID_APPLICATION_TYPES"

    const-string v19, "is_repeatable"

    const-string v20, "message_type"

    const-string v21, "TRACKING_URL"

    const-string v22, "access_token"

    const-string v23, "click_trackers"

    const-string v24, "VALID_IMAGE_TYPES"

    const-string v25, "WIFI"

    const-string v26, "cloudFunctionARN"

    const-string v27, "clickthrough_url"

    const-string v28, "JAVASCRIPT"

    const-string v29, "transferNetworkConnectionType"

    const-string v30, "close_trackers"

    const-string v31, "created_at"

    const-string v32, "secret"

    const-string v33, "OFF"

    const-string v34, "invocationRoleARN"

    const-string v35, "HTML_RESOURCE"

    const-string v36, "topicARN"

    const-string v37, "transferThreadPoolSize"

    const-string v38, "error_trackers"

    const-string v39, "filterRules"

    const-string v40, "fractional_trackers"

    const-string v41, "privacy_icon_image_url"

    const-string v42, "is_rewarded"

    const-string v43, "token"

    const-string v44, "filter"

    const-string v45, "isTracked"

    const-string v46, "javascriptResourceUrl"

    const-string v47, "width"

    const-string v48, "privacy_icon_click_url"

    const-string v49, "enable_click_exp"

    const-string v50, "MOBILE"

    const-string v51, "ALL"

    const-string v52, "viewability-verification-resources"

    const-string v53, "INFO"

    const-string v54, "objectPrefixes"

    const-string v55, "tracking_fraction"

    const-string v56, "icon_config"

    const-string v57, "tag"

    const-string v58, "functionARN"

    const-string v59, "verificationParameters"

    const-string v60, "skip_offset_ms"

    const-string v61, "level"

    const-string v62, "resource"

    const-string v63, "video_viewability_tracker"

    const-string v64, "custom_skip_text"

    const-string v65, "WARN"

    const-string v66, "duration_ms"

    const-string v67, "playtime_ms"

    const-string v68, "vendorKey"

    const-string v69, "impression_trackers"

    const-string v70, "resume_trackers"

    const-string v71, "custom_close_icon_url"

    const-string v72, "name"

    const-string v73, "countdown_timer_duration"

    const-string v74, "errors"

    const-string v75, "code"

    const-string v76, "ANY"

    const-string v77, "token_type"

    const-string v78, "custom_cta_text"

    const-string v79, "content"

    const-string v80, "Companion"

    const-string v81, "skip_trackers"

    const-string v82, "percentagePattern"

    const-string v83, "tracking_ms"

    const-string v84, "creative_type"

    const-string v85, "pause_trackers"

    const-string v86, "disk_media_file_url"

    const-string v87, "IFRAME_RESOURCE"

    const-string v88, "value"

    const-string v89, "TRACE"

    const-string v90, "TOKEN_TYPE_BEARER"

    const-string v91, "message"

    const-string v92, "DEBUG"

    const-string v93, "s3KeyFilter"

    const-string v94, "skip_offset"

    const-string v95, "absolutePattern"

    const-string v96, "complete_trackers"

    .line 64
    filled-new-array/range {v0 .. v96}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/gson/stream/JsonWriter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    sget-object v0, Lproguard/optimize/gson/_OptimizedJsonWriterImpl;->a:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public c(Lcom/google/gson/stream/JsonWriter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    sget-object v0, Lproguard/optimize/gson/_OptimizedJsonWriterImpl;->a:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
