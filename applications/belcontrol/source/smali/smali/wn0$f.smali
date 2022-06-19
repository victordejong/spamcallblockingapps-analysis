.class public Lwn0$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static a:Lvn0;


# direct methods
.method public static synthetic a(Landroid/content/Context;)Lvn0;
    .locals 0

    invoke-static {p0}, Lwn0$f;->b(Landroid/content/Context;)Lvn0;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lvn0;
    .locals 3

    const-class v0, Lwn0$f;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    sget-object v1, Lwn0$f;->a:Lvn0;

    if-nez v1, :cond_2

    new-instance v1, Lvn0;

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lvn0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lwn0$f;->a:Lvn0;

    :cond_2
    sget-object p0, Lwn0$f;->a:Lvn0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
