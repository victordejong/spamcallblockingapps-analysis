.class Lorg/xutils/common/task/a;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field d:J

.field public final e:Lorg/xutils/common/task/Priority;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    :cond_0
    iput-object p1, p0, Lorg/xutils/common/task/a;->e:Lorg/xutils/common/task/Priority;

    .line 3
    iput-object p2, p0, Lorg/xutils/common/task/a;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
