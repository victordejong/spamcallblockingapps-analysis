.class public Lm/a;
.super Landroid/support/v4/media/a;
.source "SourceFile"


# static fields
.field public static volatile b:Lm/a;

.field public static final c:Ljava/util/concurrent/Executor;


# instance fields
.field public a:Landroid/support/v4/media/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/a$a;

    invoke-direct {v0}, Lm/a$a;-><init>()V

    sput-object v0, Lm/a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    .line 2
    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    .line 3
    iput-object v0, p0, Lm/a;->a:Landroid/support/v4/media/a;

    return-void
.end method

.method public static M()Lm/a;
    .locals 2

    .line 1
    sget-object v0, Lm/a;->b:Lm/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lm/a;->b:Lm/a;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lm/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lm/a;->b:Lm/a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lm/a;

    invoke-direct {v1}, Lm/a;-><init>()V

    sput-object v1, Lm/a;->b:Lm/a;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lm/a;->b:Lm/a;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public I(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/support/v4/media/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/support/v4/media/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/support/v4/media/a;

    invoke-virtual {v0}, Landroid/support/v4/media/a;->v()Z

    move-result v0

    return v0
.end method
