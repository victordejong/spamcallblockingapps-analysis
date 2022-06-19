.class final Landroidx/media2/widget/VideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/a;

.field final synthetic b:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/a;)V
    .locals 0

    .line 669
    iput-object p1, p0, Landroidx/media2/widget/VideoView$3;->b:Landroidx/media2/widget/VideoView;

    iput-object p2, p0, Landroidx/media2/widget/VideoView$3;->a:Lcom/google/common/util/concurrent/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "VideoView"

    .line 673
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/VideoView$3;->a:Lcom/google/common/util/concurrent/a;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/a;

    invoke-interface {v1}, Landroidx/media2/common/a;->a()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "calling setSurface(null) was not successful. ResultCode: "

    .line 675
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "calling setSurface(null) was not successful."

    .line 679
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
