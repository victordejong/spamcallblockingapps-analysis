.class public final Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestItem"
.end annotation


# instance fields
.field private mLatency:J

.field private mPostParams:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide v5, p4

    .line 38
    invoke-direct/range {v0 .. v6}, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;-><init>(Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 41
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->this$0:Lnet/pubnative/lite/sdk/utils/AdRequestRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mPostParams:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mResponse:Ljava/lang/String;

    .line 45
    iput-wide p5, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mLatency:J

    return-void
.end method


# virtual methods
.method public final getLatency()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mLatency:J

    return-wide v0
.end method

.method public final getPostParams()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mPostParams:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/AdRequestRegistry$RequestItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method
