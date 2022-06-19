.class final Lcom/verizon/ads/events/Events$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/verizon/ads/events/Events$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/verizon/ads/events/Events$3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/verizon/ads/events/Events;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/events/Events$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/verizon/ads/events/Events$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/events/Events$3;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/events/Events;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/verizon/ads/events/Events;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/verizon/ads/events/Events$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/events/Events$3;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/events/Events;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
