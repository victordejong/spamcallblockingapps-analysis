.class public Le/e/a/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/q$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Le/e/a/v;

.field private b:Le/e/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/e/a/q;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/e/a/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Le/e/a/q;
    .locals 1

    invoke-static {}, Le/e/a/q$a;->a()Le/e/a/q;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Le/e/a/h0/c;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Le/e/a/e;)V
    .locals 2

    invoke-static {}, Le/e/a/f;->e()Le/e/a/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/event/a;->a(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/c;)Z

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Le/e/a/q;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v0

    invoke-static {}, Le/e/a/h0/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/e/a/m;->y0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Le/e/a/a;
    .locals 1

    new-instance v0, Le/e/a/c;

    invoke-direct {v0, p1}, Le/e/a/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method e()Le/e/a/u;
    .locals 2

    iget-object v0, p0, Le/e/a/q;->b:Le/e/a/u;

    if-nez v0, :cond_1

    sget-object v0, Le/e/a/q;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/e/a/q;->b:Le/e/a/u;

    if-nez v1, :cond_0

    new-instance v1, Le/e/a/y;

    invoke-direct {v1}, Le/e/a/y;-><init>()V

    iput-object v1, p0, Le/e/a/q;->b:Le/e/a/u;

    check-cast v1, Le/e/a/e;

    invoke-virtual {p0, v1}, Le/e/a/q;->a(Le/e/a/e;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Le/e/a/q;->b:Le/e/a/u;

    return-object v0
.end method

.method f()Le/e/a/v;
    .locals 2

    iget-object v0, p0, Le/e/a/q;->a:Le/e/a/v;

    if-nez v0, :cond_1

    sget-object v0, Le/e/a/q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/e/a/q;->a:Le/e/a/v;

    if-nez v1, :cond_0

    new-instance v1, Le/e/a/b0;

    invoke-direct {v1}, Le/e/a/b0;-><init>()V

    iput-object v1, p0, Le/e/a/q;->a:Le/e/a/v;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Le/e/a/q;->a:Le/e/a/v;

    return-object v0
.end method

.method public g()Z
    .locals 1

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v0

    invoke-virtual {v0}, Le/e/a/m;->w0()Z

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 1

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/e/a/m;->n0(Z)V

    return-void
.end method
