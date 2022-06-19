.class final Lcom/facebook/login/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/login/f;


# direct methods
.method constructor <init>(Lcom/facebook/login/f;Landroid/os/Bundle;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/facebook/login/f$1;->b:Lcom/facebook/login/f;

    iput-object p2, p0, Lcom/facebook/login/f$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/f$1;->b:Lcom/facebook/login/f;

    invoke-static {v0}, Lcom/facebook/login/f;->a(Lcom/facebook/login/f;)Lcom/facebook/appevents/m;

    move-result-object v0

    const-string v1, "fb_mobile_login_heartbeat"

    iget-object v2, p0, Lcom/facebook/login/f$1;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/m;->c(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 188
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
