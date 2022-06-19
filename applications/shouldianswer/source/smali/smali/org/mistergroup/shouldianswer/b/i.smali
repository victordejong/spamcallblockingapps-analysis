.class public final Lorg/mistergroup/shouldianswer/b/i;
.super Ljava/lang/Object;
.source "RingingNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/b/i$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/b/i$a;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/b/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/b/i$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/b/i;->a:Lorg/mistergroup/shouldianswer/b/i$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 23
    sget v0, Lorg/mistergroup/shouldianswer/b/i;->d:I

    return v0
.end method

.method public static final synthetic a(I)V
    .locals 0

    .line 23
    sput p0, Lorg/mistergroup/shouldianswer/b/i;->d:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 27
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "NOTIFICATION: RingingNotification.show"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 29
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "RingingNotification.show.begin"

    invoke-static {v2, v5, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sget-wide v7, Lorg/mistergroup/shouldianswer/b/i;->c:J

    sub-long/2addr v5, v7

    .line 31
    sget-object v2, Lorg/mistergroup/shouldianswer/b/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    sget-object v7, Lorg/mistergroup/shouldianswer/b/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v7}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2710

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    .line 33
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "RingingNotification.show terminate due lastNumber=number"

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :cond_0
    const/16 v2, 0x3e8

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    .line 38
    :try_start_1
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "RingingNotification.show terminate2 due lastNumber=number"

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 41
    :cond_1
    :try_start_2
    sput-object v1, Lorg/mistergroup/shouldianswer/b/i;->b:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sput-wide v5, Lorg/mistergroup/shouldianswer/b/i;->c:J

    .line 44
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v5, "RingingNotification.Show"

    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 46
    sget-object v2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/c/f;

    const/4 v7, 0x0

    new-instance v2, Lorg/mistergroup/shouldianswer/b/i$b;

    invoke-direct {v2, p1, v0, v1, v4}, Lorg/mistergroup/shouldianswer/b/i$b;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V

    move-object v8, v2

    check-cast v8, Lkotlin/e/a/m;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 105
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "RingingNotification.show.end"

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
