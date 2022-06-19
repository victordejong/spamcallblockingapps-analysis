.class public Lv2;
.super Lx2;
.source ""


# static fields
.field public static volatile c:Lv2;

.field public static final d:Ljava/util/concurrent/Executor;


# instance fields
.field public a:Lx2;

.field public b:Lx2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv2$a;

    invoke-direct {v0}, Lv2$a;-><init>()V

    sput-object v0, Lv2;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lx2;-><init>()V

    new-instance v0, Lw2;

    invoke-direct {v0}, Lw2;-><init>()V

    iput-object v0, p0, Lv2;->b:Lx2;

    iput-object v0, p0, Lv2;->a:Lx2;

    return-void
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lv2;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static e()Lv2;
    .locals 2

    sget-object v0, Lv2;->c:Lv2;

    if-eqz v0, :cond_0

    sget-object v0, Lv2;->c:Lv2;

    return-object v0

    :cond_0
    const-class v0, Lv2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv2;->c:Lv2;

    if-nez v1, :cond_1

    new-instance v1, Lv2;

    invoke-direct {v1}, Lv2;-><init>()V

    sput-object v1, Lv2;->c:Lv2;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lv2;->c:Lv2;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lv2;->a:Lx2;

    invoke-virtual {v0, p1}, Lx2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lv2;->a:Lx2;

    invoke-virtual {v0}, Lx2;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lv2;->a:Lx2;

    invoke-virtual {v0, p1}, Lx2;->c(Ljava/lang/Runnable;)V

    return-void
.end method
