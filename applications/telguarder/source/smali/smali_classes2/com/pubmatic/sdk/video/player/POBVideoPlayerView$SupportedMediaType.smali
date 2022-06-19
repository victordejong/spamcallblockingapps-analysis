.class public final enum Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MEDIA_3GPP:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

.field public static final enum MEDIA_MP4:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

.field public static final enum MEDIA_WEBM:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

.field private static final synthetic b:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    const-string v1, "MEDIA_3GPP"

    const/4 v2, 0x0

    const-string v3, "video/3gpp"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->MEDIA_3GPP:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    const-string v3, "MEDIA_MP4"

    const/4 v4, 0x1

    const-string v5, "video/mp4"

    invoke-direct {v1, v3, v4, v5}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->MEDIA_MP4:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    new-instance v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    const-string v5, "MEDIA_WEBM"

    const/4 v6, 0x2

    const-string v7, "video/webm"

    invoke-direct {v3, v5, v6, v7}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->MEDIA_WEBM:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->b:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->a:Ljava/lang/String;

    return-void
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->values()[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->b:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->a:Ljava/lang/String;

    return-object v0
.end method
