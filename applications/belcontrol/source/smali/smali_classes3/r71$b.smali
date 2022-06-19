.class public Lr71$b;
.super Lea1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static e:Lr71$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lea1;-><init>()V

    invoke-virtual {p0}, Lr71$b;->g()V

    return-void
.end method

.method public static declared-synchronized f()Lr71$b;
    .locals 2

    const-class v0, Lr71$b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr71$b;->e:Lr71$b;

    if-nez v1, :cond_0

    new-instance v1, Lr71$b;

    invoke-direct {v1}, Lr71$b;-><init>()V

    sput-object v1, Lr71$b;->e:Lr71$b;

    :cond_0
    sget-object v1, Lr71$b;->e:Lr71$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr71$a;->G:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lea1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lea1;->b:Li91;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lea1;->a:Z

    :cond_0
    invoke-virtual {p0}, Lea1;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lr71$a;->G:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lr71$a;->o(Ljava/lang/String;)V

    invoke-static {}, Lo71;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
