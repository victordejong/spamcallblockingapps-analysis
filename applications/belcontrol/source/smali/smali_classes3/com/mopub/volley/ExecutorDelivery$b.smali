.class public Lcom/mopub/volley/ExecutorDelivery$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/mopub/volley/Request;

.field public final b:Lcom/mopub/volley/Response;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    iput-object p2, p0, Lcom/mopub/volley/ExecutorDelivery$b;->b:Lcom/mopub/volley/Response;

    iput-object p3, p0, Lcom/mopub/volley/ExecutorDelivery$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->b:Lcom/mopub/volley/Response;

    invoke-virtual {v0}, Lcom/mopub/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    iget-object v1, p0, Lcom/mopub/volley/ExecutorDelivery$b;->b:Lcom/mopub/volley/Response;

    iget-object v1, v1, Lcom/mopub/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    iget-object v1, p0, Lcom/mopub/volley/ExecutorDelivery$b;->b:Lcom/mopub/volley/Response;

    iget-object v1, v1, Lcom/mopub/volley/Response;->error:Lcom/mopub/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->deliverError(Lcom/mopub/volley/VolleyError;)V

    :goto_0
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->b:Lcom/mopub/volley/Response;

    iget-boolean v0, v0, Lcom/mopub/volley/Response;->intermediate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->a:Lcom/mopub/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
