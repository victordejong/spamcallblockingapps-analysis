.class final Lcom/verizon/ads/events/Events$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/events/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/verizon/ads/events/Events$4;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/verizon/ads/events/Events$4;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/verizon/ads/events/Events$4;->a:Ljava/util/Map;

    invoke-static {}, Lcom/verizon/ads/events/Events;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 291
    iget-object v0, p0, Lcom/verizon/ads/events/Events$4;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
