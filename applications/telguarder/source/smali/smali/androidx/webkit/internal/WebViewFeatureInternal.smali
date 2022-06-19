.class public final enum Landroidx/webkit/internal/WebViewFeatureInternal;
.super Ljava/lang/Enum;
.source "WebViewFeatureInternal.java"

# interfaces
.implements Landroidx/webkit/internal/ConditionallySupportedFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/webkit/internal/WebViewFeatureInternal;",
        ">;",
        "Landroidx/webkit/internal/ConditionallySupportedFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum MULTI_PROCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field private static final NOT_SUPPORTED_BY_FRAMEWORK:I = -0x1

.field public static final enum OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;


# instance fields
.field private final mInternalFeatureValue:Ljava/lang/String;

.field private final mOsVersion:I

.field private final mPublicFeatureValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 66
    new-instance v6, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v1, "VISUAL_STATE_CALLBACK"

    const/4 v2, 0x0

    const-string v3, "VISUAL_STATE_CALLBACK"

    const-string v4, "VISUAL_STATE_CALLBACK"

    const/16 v5, 0x17

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 74
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "OFF_SCREEN_PRERASTER"

    const/4 v9, 0x1

    const-string v10, "OFF_SCREEN_PRERASTER"

    const-string v11, "OFF_SCREEN_PRERASTER"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 82
    new-instance v1, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "SAFE_BROWSING_ENABLE"

    const/4 v15, 0x2

    const-string v16, "SAFE_BROWSING_ENABLE"

    const-string v17, "SAFE_BROWSING_ENABLE"

    const/16 v18, 0x1a

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 90
    new-instance v2, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v9, 0x3

    const-string v10, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const-string v11, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/16 v12, 0x18

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 97
    new-instance v3, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "START_SAFE_BROWSING"

    const/4 v15, 0x4

    const-string v16, "START_SAFE_BROWSING"

    const-string v17, "START_SAFE_BROWSING"

    const/16 v18, 0x1b

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 111
    new-instance v4, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED"

    const/4 v9, 0x5

    const-string v10, "SAFE_BROWSING_WHITELIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    const/16 v12, 0x1b

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 126
    new-instance v5, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED"

    const/4 v15, 0x6

    const-string v16, "SAFE_BROWSING_WHITELIST"

    const-string v17, "SAFE_BROWSING_ALLOWLIST"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 134
    new-instance v13, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED"

    const/4 v9, 0x7

    const-string v10, "SAFE_BROWSING_ALLOWLIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 141
    new-instance v7, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED"

    const/16 v16, 0x8

    const-string v17, "SAFE_BROWSING_ALLOWLIST"

    const-string v18, "SAFE_BROWSING_ALLOWLIST"

    const/16 v19, 0x1b

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 148
    new-instance v8, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v21, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/16 v22, 0x9

    const-string v23, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const-string v24, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/16 v25, 0x1b

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 155
    new-instance v9, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v16, 0xa

    const-string v17, "SERVICE_WORKER_BASIC_USAGE"

    const-string v18, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v19, 0x18

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 163
    new-instance v10, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v21, "SERVICE_WORKER_CACHE_MODE"

    const/16 v22, 0xb

    const-string v23, "SERVICE_WORKER_CACHE_MODE"

    const-string v24, "SERVICE_WORKER_CACHE_MODE"

    const/16 v25, 0x18

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 171
    new-instance v11, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SERVICE_WORKER_CONTENT_ACCESS"

    const/16 v16, 0xc

    const-string v17, "SERVICE_WORKER_CONTENT_ACCESS"

    const-string v18, "SERVICE_WORKER_CONTENT_ACCESS"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v11, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 179
    new-instance v12, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v21, "SERVICE_WORKER_FILE_ACCESS"

    const/16 v22, 0xd

    const-string v23, "SERVICE_WORKER_FILE_ACCESS"

    const-string v24, "SERVICE_WORKER_FILE_ACCESS"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 187
    new-instance v20, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const/16 v16, 0xe

    const-string v17, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const-string v18, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v20, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 194
    new-instance v14, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/16 v23, 0xf

    const-string v24, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const-string v25, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/16 v26, 0x18

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 202
    new-instance v15, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v28, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v29, 0x10

    const-string v30, "RECEIVE_WEB_RESOURCE_ERROR"

    const-string v31, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v32, 0x17

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v15, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 210
    new-instance v16, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "RECEIVE_HTTP_ERROR"

    const/16 v23, 0x11

    const-string v24, "RECEIVE_HTTP_ERROR"

    const-string v25, "RECEIVE_HTTP_ERROR"

    const/16 v26, 0x17

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v16, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 218
    new-instance v17, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v28, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v29, 0x12

    const-string v30, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const-string v31, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v32, 0x18

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v17, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 226
    new-instance v18, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "SAFE_BROWSING_HIT"

    const/16 v23, 0x13

    const-string v24, "SAFE_BROWSING_HIT"

    const-string v25, "SAFE_BROWSING_HIT"

    const/16 v26, 0x1b

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v18, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 233
    new-instance v19, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v28, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/16 v29, 0x14

    const-string v30, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const-string v31, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v19, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 240
    new-instance v27, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v23, 0x15

    const-string v24, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const-string v25, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v26, 0x17

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v27, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 247
    new-instance v21, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v30, 0x16

    const-string v31, "WEB_RESOURCE_ERROR_GET_CODE"

    const-string v32, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v33, 0x17

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v21, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 254
    new-instance v22, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v35, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v36, 0x17

    const-string v37, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const-string v38, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v39, 0x1b

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v22, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 261
    new-instance v23, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v30, 0x18

    const-string v31, "SAFE_BROWSING_RESPONSE_PROCEED"

    const-string v32, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v33, 0x1b

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v23, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 268
    new-instance v24, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v35, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/16 v36, 0x19

    const-string v37, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const-string v38, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v24, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 276
    new-instance v25, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v30, 0x1a

    const-string v31, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const-string v32, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v33, 0x17

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v25, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 283
    new-instance v26, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v35, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v36, 0x1b

    const-string v37, "WEB_MESSAGE_PORT_CLOSE"

    const-string v38, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v39, 0x17

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v26, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 293
    new-instance v34, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/16 v30, 0x1c

    const-string v31, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const-string v32, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v34, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 300
    new-instance v28, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "CREATE_WEB_MESSAGE_CHANNEL"

    const/16 v37, 0x1d

    const-string v38, "CREATE_WEB_MESSAGE_CHANNEL"

    const-string v39, "CREATE_WEB_MESSAGE_CHANNEL"

    const/16 v40, 0x17

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v28, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 307
    new-instance v29, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v42, "POST_WEB_MESSAGE"

    const/16 v43, 0x1e

    const-string v44, "POST_WEB_MESSAGE"

    const-string v45, "POST_WEB_MESSAGE"

    const/16 v46, 0x17

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v29, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 314
    new-instance v30, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const/16 v37, 0x1f

    const-string v38, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const-string v39, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v30, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 320
    new-instance v31, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v42, "GET_WEB_VIEW_CLIENT"

    const/16 v43, 0x20

    const-string v44, "GET_WEB_VIEW_CLIENT"

    const-string v45, "GET_WEB_VIEW_CLIENT"

    const/16 v46, 0x1a

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v31, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 326
    new-instance v32, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "GET_WEB_CHROME_CLIENT"

    const/16 v37, 0x21

    const-string v38, "GET_WEB_CHROME_CLIENT"

    const-string v39, "GET_WEB_CHROME_CLIENT"

    const/16 v40, 0x1a

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v32, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 329
    new-instance v33, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v42, "GET_WEB_VIEW_RENDERER"

    const/16 v43, 0x22

    const-string v44, "GET_WEB_VIEW_RENDERER"

    const-string v45, "GET_WEB_VIEW_RENDERER"

    const/16 v46, 0x1d

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v33, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 331
    new-instance v41, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v37, 0x23

    const-string v38, "WEB_VIEW_RENDERER_TERMINATE"

    const-string v39, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v40, 0x1d

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v41, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 341
    new-instance v35, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v43, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v44, 0x24

    const-string v45, "TRACING_CONTROLLER_BASIC_USAGE"

    const-string v46, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v47, 0x1c

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v35, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 351
    new-instance v36, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v49, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/16 v50, 0x25

    const-string v51, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const-string v52, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/16 v53, 0x1d

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v36, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    move-object/from16 v37, v15

    .line 361
    new-instance v15, Landroidx/webkit/internal/WebViewFeatureInternal;

    move-object/from16 v38, v14

    const-string v14, "PROXY_OVERRIDE"

    move-object/from16 v39, v12

    const/16 v12, 0x26

    move-object/from16 v40, v11

    const-string v11, "PROXY_OVERRIDE:3"

    invoke-direct {v15, v14, v12, v14, v11}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 368
    new-instance v11, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "SUPPRESS_ERROR_PAGE"

    const/16 v12, 0x27

    invoke-direct {v11, v14, v12, v14, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Landroidx/webkit/internal/WebViewFeatureInternal;->SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 373
    new-instance v14, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v12, "MULTI_PROCESS"

    move-object/from16 v44, v11

    const/16 v11, 0x28

    move-object/from16 v45, v15

    const-string v15, "MULTI_PROCESS_QUERY"

    invoke-direct {v14, v12, v11, v12, v15}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 380
    new-instance v12, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "FORCE_DARK"

    const/16 v11, 0x29

    invoke-direct {v12, v15, v11, v15, v15}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 387
    new-instance v15, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v11, "FORCE_DARK_STRATEGY"

    move-object/from16 v48, v12

    const/16 v12, 0x2a

    move-object/from16 v49, v14

    const-string v14, "FORCE_DARK_BEHAVIOR"

    invoke-direct {v15, v11, v12, v11, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 395
    new-instance v11, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "WEB_MESSAGE_LISTENER"

    const/16 v12, 0x2b

    invoke-direct {v11, v14, v12, v14, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 403
    new-instance v14, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v12, "DOCUMENT_START_SCRIPT"

    move-object/from16 v52, v11

    const/16 v11, 0x2c

    move-object/from16 v53, v15

    const-string v15, "DOCUMENT_START_SCRIPT:1"

    invoke-direct {v14, v12, v11, v12, v15}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Landroidx/webkit/internal/WebViewFeatureInternal;->DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v12, 0x2d

    new-array v12, v12, [Landroidx/webkit/internal/WebViewFeatureInternal;

    const/4 v15, 0x0

    aput-object v6, v12, v15

    const/4 v6, 0x1

    aput-object v0, v12, v6

    const/4 v0, 0x2

    aput-object v1, v12, v0

    const/4 v0, 0x3

    aput-object v2, v12, v0

    const/4 v0, 0x4

    aput-object v3, v12, v0

    const/4 v0, 0x5

    aput-object v4, v12, v0

    const/4 v0, 0x6

    aput-object v5, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v7, v12, v0

    const/16 v0, 0x9

    aput-object v8, v12, v0

    const/16 v0, 0xa

    aput-object v9, v12, v0

    const/16 v0, 0xb

    aput-object v10, v12, v0

    const/16 v0, 0xc

    aput-object v40, v12, v0

    const/16 v0, 0xd

    aput-object v39, v12, v0

    const/16 v0, 0xe

    aput-object v20, v12, v0

    const/16 v0, 0xf

    aput-object v38, v12, v0

    const/16 v0, 0x10

    aput-object v37, v12, v0

    const/16 v0, 0x11

    aput-object v16, v12, v0

    const/16 v0, 0x12

    aput-object v17, v12, v0

    const/16 v0, 0x13

    aput-object v18, v12, v0

    const/16 v0, 0x14

    aput-object v19, v12, v0

    const/16 v0, 0x15

    aput-object v27, v12, v0

    const/16 v0, 0x16

    aput-object v21, v12, v0

    const/16 v0, 0x17

    aput-object v22, v12, v0

    const/16 v0, 0x18

    aput-object v23, v12, v0

    const/16 v0, 0x19

    aput-object v24, v12, v0

    const/16 v0, 0x1a

    aput-object v25, v12, v0

    const/16 v0, 0x1b

    aput-object v26, v12, v0

    const/16 v0, 0x1c

    aput-object v34, v12, v0

    const/16 v0, 0x1d

    aput-object v28, v12, v0

    const/16 v0, 0x1e

    aput-object v29, v12, v0

    const/16 v0, 0x1f

    aput-object v30, v12, v0

    const/16 v0, 0x20

    aput-object v31, v12, v0

    const/16 v0, 0x21

    aput-object v32, v12, v0

    const/16 v0, 0x22

    aput-object v33, v12, v0

    const/16 v0, 0x23

    aput-object v41, v12, v0

    const/16 v0, 0x24

    aput-object v35, v12, v0

    const/16 v0, 0x25

    aput-object v36, v12, v0

    const/16 v0, 0x26

    aput-object v45, v12, v0

    const/16 v0, 0x27

    aput-object v44, v12, v0

    const/16 v0, 0x28

    aput-object v49, v12, v0

    const/16 v0, 0x29

    aput-object v48, v12, v0

    const/16 v0, 0x2a

    aput-object v53, v12, v0

    const/16 v0, 0x2b

    aput-object v52, v12, v0

    aput-object v14, v12, v11

    .line 59
    sput-object v12, Landroidx/webkit/internal/WebViewFeatureInternal;->$VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 423
    invoke-direct/range {v0 .. v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 436
    iput-object p3, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mPublicFeatureValue:Ljava/lang/String;

    .line 437
    iput-object p4, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mInternalFeatureValue:Ljava/lang/String;

    .line 438
    iput p5, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    return-void
.end method

.method public static getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWebViewApkFeaturesForTesting()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 517
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    return-object v0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 5

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 447
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->values()[Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 448
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {p0, v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupported(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/webkit/internal/ConditionallySupportedFeature;",
            ">;)Z"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 465
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 466
    invoke-interface {v1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 473
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 474
    invoke-interface {p1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 471
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 1

    .line 59
    const-class v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/webkit/internal/WebViewFeatureInternal;

    return-object p0
.end method

.method public static values()[Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 1

    .line 59
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->$VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

    invoke-virtual {v0}, [Landroidx/webkit/internal/WebViewFeatureInternal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/webkit/internal/WebViewFeatureInternal;

    return-object v0
.end method


# virtual methods
.method public getPublicFeatureName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mPublicFeatureValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 506
    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportedByFramework()Z
    .locals 3

    .line 484
    iget v0, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 487
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v2, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSupportedByWebView()Z
    .locals 2

    .line 494
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mInternalFeatureValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->containsFeature(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
