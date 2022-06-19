.class public abstract enum Lcom/mopub/common/UrlAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/UrlAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/UrlAction;

.field public static final enum FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

.field public static final enum FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

.field public static final enum HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

.field public static final enum HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

.field public static final enum HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

.field public static final enum IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

.field public static final enum NOOP:Lcom/mopub/common/UrlAction;

.field public static final enum OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

.field public static final enum OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

.field public static final enum OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;


# instance fields
.field private final mRequiresUserInteraction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 42
    new-instance v0, Lcom/mopub/common/UrlAction$1;

    const-string v1, "HANDLE_MOPUB_SCHEME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mopub/common/UrlAction$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    .line 72
    new-instance v1, Lcom/mopub/common/UrlAction$3;

    const-string v3, "IGNORE_ABOUT_SCHEME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/mopub/common/UrlAction$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    .line 88
    new-instance v3, Lcom/mopub/common/UrlAction$4;

    const-string v5, "HANDLE_PHONE_SCHEME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/mopub/common/UrlAction$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    .line 110
    new-instance v5, Lcom/mopub/common/UrlAction$5;

    const-string v7, "OPEN_NATIVE_BROWSER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/mopub/common/UrlAction$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    .line 138
    new-instance v7, Lcom/mopub/common/UrlAction$6;

    const-string v9, "OPEN_APP_MARKET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/mopub/common/UrlAction$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    .line 171
    new-instance v9, Lcom/mopub/common/UrlAction$7;

    const-string v11, "OPEN_IN_APP_BROWSER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lcom/mopub/common/UrlAction$7;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    .line 194
    new-instance v11, Lcom/mopub/common/UrlAction$8;

    const-string v13, "HANDLE_SHARE_TWEET"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lcom/mopub/common/UrlAction$8;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    .line 223
    new-instance v13, Lcom/mopub/common/UrlAction$9;

    const-string v15, "FOLLOW_DEEP_LINK_WITH_FALLBACK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Lcom/mopub/common/UrlAction$9;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    .line 295
    new-instance v15, Lcom/mopub/common/UrlAction$10;

    const-string v14, "FOLLOW_DEEP_LINK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Lcom/mopub/common/UrlAction$10;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    .line 323
    new-instance v14, Lcom/mopub/common/UrlAction$2;

    const-string v12, "NOOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Lcom/mopub/common/UrlAction$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/mopub/common/UrlAction;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 33
    sput-object v12, Lcom/mopub/common/UrlAction;->$VALUES:[Lcom/mopub/common/UrlAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput-boolean p3, p0, Lcom/mopub/common/UrlAction;->mRequiresUserInteraction:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/UrlAction;
    .locals 1

    .line 33
    const-class v0, Lcom/mopub/common/UrlAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/UrlAction;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/UrlAction;
    .locals 1

    .line 33
    sget-object v0, Lcom/mopub/common/UrlAction;->$VALUES:[Lcom/mopub/common/UrlAction;

    invoke-virtual {v0}, [Lcom/mopub/common/UrlAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/UrlAction;

    return-object v0
.end method


# virtual methods
.method public handleUrl(Lcom/mopub/common/UrlHandler;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad event URL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 345
    iget-boolean v0, p0, Lcom/mopub/common/UrlAction;->mRequiresUserInteraction:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance p1, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string p2, "Attempted to handle action without user interaction."

    invoke-direct {p1, p2}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/mopub/common/UrlAction;->performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation
.end method

.method public abstract shouldTryHandlingUrl(Landroid/net/Uri;)Z
.end method
