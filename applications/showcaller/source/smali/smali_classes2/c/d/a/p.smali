.class Lc/d/a/p;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/p$c;,
        Lc/d/a/p$b;,
        Lc/d/a/p$a;
    }
.end annotation


# instance fields
.field private final a:Lc/d/a/p$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/d/a/p$b;

    invoke-direct {v0}, Lc/d/a/p$b;-><init>()V

    iput-object v0, p0, Lc/d/a/p;->a:Lc/d/a/p$b;

    return-void
.end method

.method public static a()Lc/d/a/p;
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/p$a;->a()Lc/d/a/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized b(Lc/d/a/x$b;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/p;->a:Lc/d/a/p$b;

    invoke-virtual {v0, p1}, Lc/d/a/p$b;->a(Lc/d/a/x$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
