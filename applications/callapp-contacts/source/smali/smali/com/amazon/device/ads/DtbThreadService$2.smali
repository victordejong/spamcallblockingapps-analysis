.class Lcom/amazon/device/ads/DtbThreadService$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/DtbThreadService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazon/device/ads/DtbThreadService;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DtbThreadService;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/device/ads/DtbThreadService$2;->a:Lcom/amazon/device/ads/DtbThreadService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->b()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbThreadService;->a(Lcom/amazon/device/ads/DtbThreadService;)Z

    .line 38
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/DtbThreadService$2;->a:Lcom/amazon/device/ads/DtbThreadService;

    invoke-static {v0}, Lcom/amazon/device/ads/DtbThreadService;->c(Lcom/amazon/device/ads/DtbThreadService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/DtbThreadService$2;->a:Lcom/amazon/device/ads/DtbThreadService;

    invoke-static {v0}, Lcom/amazon/device/ads/DtbThreadService;->c(Lcom/amazon/device/ads/DtbThreadService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
