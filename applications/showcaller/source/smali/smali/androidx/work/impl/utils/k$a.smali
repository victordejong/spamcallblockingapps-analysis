.class Landroidx/work/impl/utils/k$a;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/work/impl/utils/futures/a;

.field final synthetic e:Landroidx/work/impl/utils/k;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/k;Landroidx/work/impl/utils/futures/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/k$a;->e:Landroidx/work/impl/utils/k;

    iput-object p2, p0, Landroidx/work/impl/utils/k$a;->d:Landroidx/work/impl/utils/futures/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/k$a;->d:Landroidx/work/impl/utils/futures/a;

    iget-object v1, p0, Landroidx/work/impl/utils/k$a;->e:Landroidx/work/impl/utils/k;

    iget-object v1, v1, Landroidx/work/impl/utils/k;->h:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/a;->s(Lcom/google/common/util/concurrent/a;)Z

    return-void
.end method
