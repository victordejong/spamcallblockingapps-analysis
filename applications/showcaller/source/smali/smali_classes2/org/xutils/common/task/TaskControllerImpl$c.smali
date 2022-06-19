.class Lorg/xutils/common/task/TaskControllerImpl$c;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lorg/xutils/common/task/AbsTask;

.field final synthetic b:Lorg/xutils/common/task/TaskControllerImpl;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$c;->b:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$c;->a:[Lorg/xutils/common/task/AbsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$c;->a:[Lorg/xutils/common/task/AbsTask;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$c;->a:[Lorg/xutils/common/task/AbsTask;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
