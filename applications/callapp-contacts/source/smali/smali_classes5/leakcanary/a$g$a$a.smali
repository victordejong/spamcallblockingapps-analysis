.class final Lleakcanary/a$g$a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/HandlerThread;

.field final synthetic b:Lkotlin/jvm/internal/ab$a;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;Lkotlin/jvm/internal/ab$a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/a$g$a$a;->a:Landroid/os/HandlerThread;

    iput-object p2, p0, Lleakcanary/a$g$a$a;->b:Lkotlin/jvm/internal/ab$a;

    iput-object p3, p0, Lleakcanary/a$g$a$a;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    const-string v0, "Failed to post to "

    .line 1175
    iget-object v1, p0, Lleakcanary/a$g$a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lleakcanary/a$g$a$a;->b:Lkotlin/jvm/internal/ab$a;

    iget-boolean v1, v1, Lkotlin/jvm/internal/ab$a;->a:Z

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lleakcanary/a$g$a$a;->b:Lkotlin/jvm/internal/ab$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 1180
    :try_start_0
    iget-object v1, p0, Lleakcanary/a$g$a$a;->c:Landroid/os/Handler;

    new-instance v2, Lleakcanary/a$g$a$a$a;

    invoke-direct {v2, p0}, Lleakcanary/a$g$a$a$a;-><init>(Lleakcanary/a$g$a$a;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    sget-object v1, Ld/a;->a:Ld/a;

    .line 1787
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lleakcanary/a$g$a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1192
    sget-object v1, Ld/a;->a:Ld/a;

    .line 1790
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lleakcanary/a$g$a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
