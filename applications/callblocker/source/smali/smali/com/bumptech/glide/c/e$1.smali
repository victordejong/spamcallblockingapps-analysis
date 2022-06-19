.class Lcom/bumptech/glide/c/e$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/c/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c/e;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    iget-boolean v0, v0, Lcom/bumptech/glide/c/e;->b:Z

    .line 30
    iget-object v1, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    iget-object v2, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/c/e;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bumptech/glide/c/e;->b:Z

    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    iget-boolean v1, v1, Lcom/bumptech/glide/c/e;->b:Z

    if-eq v0, v1, :cond_1

    .line 32
    const-string/jumbo v0, "ConnectivityMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "ConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectivity changed, isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    iget-boolean v2, v2, Lcom/bumptech/glide/c/e;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    iget-object v0, v0, Lcom/bumptech/glide/c/e;->a:Lcom/bumptech/glide/c/c$a;

    iget-object v1, p0, Lcom/bumptech/glide/c/e$1;->a:Lcom/bumptech/glide/c/e;

    iget-boolean v1, v1, Lcom/bumptech/glide/c/e;->b:Z

    invoke-interface {v0, v1}, Lcom/bumptech/glide/c/c$a;->a(Z)V

    .line 38
    :cond_1
    return-void
.end method
