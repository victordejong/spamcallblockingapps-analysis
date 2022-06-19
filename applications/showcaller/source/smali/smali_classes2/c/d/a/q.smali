.class public Lc/d/a/q;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lc/d/a/w;

.field private d:Lc/d/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/d/a/q;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/d/a/q;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lc/d/a/q;
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/q$a;->a()Lc/d/a/q;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lc/d/a/i0/c;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/e;)V
    .locals 2

    .line 1
    invoke-static {}, Lc/d/a/f;->e()Lc/d/a/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/event/a;->a(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/c;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/q;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v0

    .line 3
    invoke-static {}, Lc/d/a/i0/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/m;->B0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lc/d/a/a;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/c;

    invoke-direct {v0, p1}, Lc/d/a/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method e()Lc/d/a/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/q;->d:Lc/d/a/v;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/d/a/q;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/q;->d:Lc/d/a/v;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc/d/a/z;

    invoke-direct {v1}, Lc/d/a/z;-><init>()V

    iput-object v1, p0, Lc/d/a/q;->d:Lc/d/a/v;

    .line 5
    check-cast v1, Lc/d/a/e;

    invoke-virtual {p0, v1}, Lc/d/a/q;->a(Lc/d/a/e;)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/q;->d:Lc/d/a/v;

    return-object v0
.end method

.method f()Lc/d/a/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/q;->c:Lc/d/a/w;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/d/a/q;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/q;->c:Lc/d/a/w;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc/d/a/c0;

    invoke-direct {v1}, Lc/d/a/c0;-><init>()V

    iput-object v1, p0, Lc/d/a/q;->c:Lc/d/a/w;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/q;->c:Lc/d/a/w;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/m;->b()Z

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/m;->A0(Z)V

    return-void
.end method
