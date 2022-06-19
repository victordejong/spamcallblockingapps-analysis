.class Lcom/verizon/ads/events/EventReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/events/EventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/events/EventMatcher;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/verizon/ads/events/EventReceiver;


# direct methods
.method constructor <init>(Lcom/verizon/ads/events/EventReceiver;Lcom/verizon/ads/events/EventMatcher;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/verizon/ads/events/EventReceiver$1;->d:Lcom/verizon/ads/events/EventReceiver;

    iput-object p2, p0, Lcom/verizon/ads/events/EventReceiver$1;->a:Lcom/verizon/ads/events/EventMatcher;

    iput-object p3, p0, Lcom/verizon/ads/events/EventReceiver$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/verizon/ads/events/EventReceiver$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/verizon/ads/events/EventReceiver$1;->a:Lcom/verizon/ads/events/EventMatcher;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/events/EventReceiver$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/events/EventReceiver$1;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/events/EventMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    .line 104
    invoke-static {}, Lcom/verizon/ads/events/EventReceiver;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Event exception"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 110
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/verizon/ads/events/EventReceiver;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling receiver onEvent topic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/verizon/ads/events/EventReceiver$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/events/EventReceiver$1;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 115
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/events/EventReceiver$1;->d:Lcom/verizon/ads/events/EventReceiver;

    iget-object v1, p0, Lcom/verizon/ads/events/EventReceiver$1;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/verizon/ads/events/EventReceiver;->onEvent$645b3fe5(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 117
    invoke-static {}, Lcom/verizon/ads/events/EventReceiver;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "onEvent error"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
