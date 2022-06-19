.class public Lf8/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li4/b;

.field public b:Lf8/i;

.field public final c:Landroid/app/Activity;

.field public d:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/j;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf8/j;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    const-class v1, Li4/d;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Li4/d;->a:Li4/e;

    if-nez v2, :cond_1

    new-instance v2, Li4/j;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, v3

    .line 5
    :cond_0
    invoke-direct {v2, v0}, Li4/j;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v0, Li4/e;

    .line 7
    invoke-direct {v0, v2}, Li4/e;-><init>(Li4/j;)V

    .line 8
    sput-object v0, Li4/d;->a:Li4/e;

    :cond_1
    sget-object v0, Li4/d;->a:Li4/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 9
    iget-object v0, v0, Li4/e;->f:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li4/b;

    .line 10
    iput-object v0, p0, Lf8/j;->a:Li4/b;

    .line 11
    invoke-interface {v0}, Li4/b;->d()Lr4/o;

    move-result-object v0

    .line 12
    new-instance v1, Lf8/i;

    invoke-direct {v1, p0}, Lf8/i;-><init>(Lf8/j;)V

    iput-object v1, p0, Lf8/j;->b:Lf8/i;

    .line 13
    new-instance v1, Ly2/l;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, Lr4/c;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lr4/o;->a(Ljava/util/concurrent/Executor;Lr4/b;)Lr4/o;

    return-void

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf8/j;->a:Li4/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf8/j;->b:Lf8/i;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, v1}, Li4/b;->a(Lf8/i;)V

    :cond_0
    return-void
.end method
