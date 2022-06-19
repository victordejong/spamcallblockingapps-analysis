.class final Lcom/facebook/internal/aa$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/aa;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/aa;


# direct methods
.method constructor <init>(Lcom/facebook/internal/aa;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/aa$1;->a:Lcom/facebook/internal/aa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/aa$1;->a:Lcom/facebook/internal/aa;

    .line 1138
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, v0, Lcom/facebook/internal/aa;->d:I

    if-ne v1, v2, :cond_2

    .line 1139
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    .line 1140
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 1142
    invoke-virtual {v0, p1}, Lcom/facebook/internal/aa;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1144
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/internal/aa;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :goto_0
    :try_start_1
    iget-object p1, v0, Lcom/facebook/internal/aa;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 64
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
