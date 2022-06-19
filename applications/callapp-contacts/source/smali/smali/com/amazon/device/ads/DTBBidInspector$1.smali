.class Lcom/amazon/device/ads/DTBBidInspector$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/DTBBidInspector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazon/device/ads/DTBBidInspector;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBBidInspector;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector$1;->a:Lcom/amazon/device/ads/DTBBidInspector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/device/ads/DTBBidInspector$1;->a:Lcom/amazon/device/ads/DTBBidInspector;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBBidInspector;->a(Lcom/amazon/device/ads/DTBBidInspector;)V

    return-void
.end method

.method public static synthetic lambda$_h6kZTFcmj9Yyos-HYJw-RYYl_s(Lcom/amazon/device/ads/DTBBidInspector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBBidInspector$1;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->a()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBBidInspector$1$_h6kZTFcmj9Yyos-HYJw-RYYl_s;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBBidInspector$1$_h6kZTFcmj9Yyos-HYJw-RYYl_s;-><init>(Lcom/amazon/device/ads/DTBBidInspector$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->a(Ljava/lang/Runnable;)V

    return-void
.end method
