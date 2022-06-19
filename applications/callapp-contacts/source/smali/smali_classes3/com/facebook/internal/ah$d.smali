.class final Lcom/facebook/internal/ah$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ah;->b(Lcom/facebook/internal/ah$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ah;

.field final synthetic b:Lcom/facebook/internal/ah$c;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ah;Lcom/facebook/internal/ah$c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/ah$d;->a:Lcom/facebook/internal/ah;

    iput-object p2, p0, Lcom/facebook/internal/ah$d;->b:Lcom/facebook/internal/ah$c;

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

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    return-void

    .line 111
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/internal/ah$d;->b:Lcom/facebook/internal/ah$c;

    .line 1118
    iget-object v0, v0, Lcom/facebook/internal/ah$c;->b:Ljava/lang/Runnable;

    .line 111
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/facebook/internal/ah$d;->a:Lcom/facebook/internal/ah;

    iget-object v1, p0, Lcom/facebook/internal/ah$d;->b:Lcom/facebook/internal/ah$c;

    invoke-static {v0, v1}, Lcom/facebook/internal/ah;->a(Lcom/facebook/internal/ah;Lcom/facebook/internal/ah$c;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/ah$d;->a:Lcom/facebook/internal/ah;

    iget-object v2, p0, Lcom/facebook/internal/ah$d;->b:Lcom/facebook/internal/ah$c;

    invoke-static {v1, v2}, Lcom/facebook/internal/ah;->a(Lcom/facebook/internal/ah;Lcom/facebook/internal/ah$c;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 115
    :try_start_3
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
