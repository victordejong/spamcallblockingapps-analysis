.class public Lcom/flurry/sdk/jr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jr;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jr;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kg;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kx;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/flurry/sdk/kf;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static c()Lcom/flurry/sdk/kf;
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lu;->a()Lcom/flurry/sdk/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lu;->b()Lcom/flurry/sdk/ls;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-class v1, Lcom/flurry/sdk/kf;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ls;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kf;

    return-object v0
.end method

.method public static d()J
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/flurry/sdk/kf;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static e()J
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/flurry/sdk/kf;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static f()J
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/flurry/sdk/kf;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static g()J
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/kf;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static h()I
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/jz;->a()Lcom/flurry/sdk/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    const-class p1, Lcom/flurry/sdk/kf;

    invoke-static {p1}, Lcom/flurry/sdk/ls;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    invoke-static {}, Lcom/flurry/sdk/jz;->a()Lcom/flurry/sdk/jz;

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    invoke-static {}, Lcom/flurry/sdk/ka;->a()Lcom/flurry/sdk/ka;

    invoke-static {}, Lcom/flurry/sdk/jx;->a()Lcom/flurry/sdk/jx;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    return-void
.end method
