.class public Le81;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/database/sqlite/SQLiteOpenHelper;

.field public static b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    sput-object p0, Le81;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Le81;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static synthetic c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sput-object p0, Le81;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static d()V
    .locals 6

    const-string v0, "Migration"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Le81$a;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v3

    const-string v4, "c"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v1, v5}, Le81$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Le81;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v2, "Migration started"

    invoke-static {v0, v2}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "Unable to open V1 database"

    invoke-static {v0, v3, v2}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Le81;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    :goto_0
    return-void
.end method

.method public static e()V
    .locals 3

    sget-object v0, Le81;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v1, "Migration"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Unable to finish migration"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v0, "Migration finished"

    invoke-static {v1, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lq71$e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_0

    sget-object v0, Lq71$e;->d:Lq71$e;

    sget-object v2, Lq71$e;->c:Lq71$e;

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    :cond_0
    if-ne p0, v1, :cond_1

    sget-object p0, Lq71$e;->b:Lq71$e;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-class p0, Lq71$e;

    invoke-static {p0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static g()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Le81;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static h()V
    .locals 3

    invoke-static {}, Le81;->d()V

    sget-object v0, Le81;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v1, "Migration"

    if-nez v0, :cond_0

    const-string v0, "Unable to migrate data until migration begin."

    invoke-static {v1, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ls71;->a()V

    invoke-static {}, Li81;->a()V

    invoke-static {}, Lh81;->b()V

    invoke-static {}, Lg81;->a()V

    invoke-static {}, Lc81;->a()V

    invoke-static {}, Lf81;->a()V

    invoke-static {}, Ld81;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Error migrating database"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Le81;->e()V

    sget-object v0, Lr71$a;->H:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static i()V
    .locals 5

    sget-object v0, Lr71$a;->H:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Le81;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Le81;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Le81;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Le81$b;

    invoke-direct {v1}, Le81$b;-><init>()V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Le81;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_2
    :goto_0
    const-string v0, "Migration"

    const-string v1, "No need to start migration as it is in progress"

    invoke-static {v0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static j()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le81$c;

    invoke-direct {v1}, Le81$c;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
