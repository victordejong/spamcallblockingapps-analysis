.class public Lyl0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static d:Lyl0;


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroid/content/Intent;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyl0;-><init>(ILjava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyl0;->a:Ljava/util/UUID;

    iput p1, p0, Lyl0;->c:I

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/UUID;I)Lyl0;
    .locals 4

    const-class v0, Lyl0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lyl0;->c()Lyl0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lyl0;->d()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lyl0;->f(Lyl0;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Lyl0;
    .locals 1

    sget-object v0, Lyl0;->d:Lyl0;

    return-object v0
.end method

.method public static declared-synchronized f(Lyl0;)Z
    .locals 2

    const-class v0, Lyl0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lyl0;->c()Lyl0;

    move-result-object v1

    sput-object p0, Lyl0;->d:Lyl0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lyl0;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lyl0;->c:I

    return v0
.end method

.method public e()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lyl0;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public g()Z
    .locals 1

    invoke-static {p0}, Lyl0;->f(Lyl0;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lyl0;->b:Landroid/content/Intent;

    return-void
.end method
