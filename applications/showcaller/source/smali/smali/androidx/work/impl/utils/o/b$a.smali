.class Landroidx/work/impl/utils/o/b$a;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/work/impl/utils/o/b;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/o/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/o/b$a;->d:Landroidx/work/impl/utils/o/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/o/b$a;->d:Landroidx/work/impl/utils/o/b;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/o/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
