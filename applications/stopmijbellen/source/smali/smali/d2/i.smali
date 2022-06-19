.class public Ld2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/j;


# direct methods
.method public constructor <init>(Ld2/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/i;->a:Ld2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 2
    instance-of v1, v0, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAdViewActivity;->f()V

    .line 4
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ld2/i;->a:Ld2/j;

    .line 7
    iget-object v1, v1, Ld2/j;->d:Ljava/lang/String;

    .line 8
    iget-object v2, v0, Ld2/k0;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_0
    iget-object v3, v0, Ld2/k0;->f:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, p0, Ld2/i;->a:Ld2/j;

    .line 11
    iget-object v1, v1, Ld2/j;->a:Ld2/j0;

    .line 12
    invoke-virtual {v0, v1}, Ld2/k0;->d(Ld2/j0;)V

    .line 13
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 14
    iget-object v1, p0, Ld2/i;->a:Ld2/j;

    .line 15
    iget-object v1, v1, Ld2/j;->d:Ljava/lang/String;

    const-string v2, "id"

    .line 16
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    new-instance v1, Ld2/t0;

    const-string v2, "AdSession.on_ad_view_destroyed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    .line 18
    iget-object v0, p0, Ld2/i;->a:Ld2/j;

    .line 19
    iget-object v0, v0, Ld2/j;->u:Ld2/j$b;

    if-eqz v0, :cond_1

    .line 20
    check-cast v0, Ld2/l1;

    .line 21
    iget-object v0, v0, Ld2/l1;->a:Ld2/f1;

    .line 22
    iget v1, v0, Ld2/f1;->W:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld2/f1;->W:I

    if-nez v1, :cond_1

    .line 23
    invoke-virtual {v0}, Ld2/f1;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
