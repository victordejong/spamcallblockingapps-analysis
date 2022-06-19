.class public final Lcom/facebook/internal/b/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;",
        "",
        "()V",
        "MAX_CRASH_REPORT_NUM",
        "",
        "TAG",
        "",
        "instance",
        "Lcom/facebook/internal/instrument/crashreport/CrashHandler;",
        "enable",
        "",
        "sendExceptionReports",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/facebook/internal/b/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    invoke-static {}, Lcom/facebook/internal/ae;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1074
    invoke-static {}, Lcom/facebook/internal/b/d;->b()[Ljava/io/File;

    move-result-object v0

    .line 1100
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1101
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 1077
    invoke-static {v5}, Lcom/facebook/internal/b/b$a;->a(Ljava/io/File;)Lcom/facebook/internal/b/b;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1103
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 1100
    check-cast v1, Ljava/lang/Iterable;

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1105
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/facebook/internal/b/b;

    const-string v5, "it"

    .line 1078
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/internal/b/b;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 1104
    check-cast v0, Ljava/lang/Iterable;

    .line 1079
    sget-object v1, Lcom/facebook/internal/b/a/a$a$b;->a:Lcom/facebook/internal/b/a/a$a$b;

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1080
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1083
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Lkotlin/f/d;->b(II)Lkotlin/f/c;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1107
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lkotlin/a/ag;

    invoke-virtual {v3}, Lkotlin/a/ag;->a()I

    move-result v3

    .line 1084
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string v2, "crash_reports"

    .line 1087
    new-instance v3, Lcom/facebook/internal/b/a/a$a$a;

    invoke-direct {v3, v0}, Lcom/facebook/internal/b/a/a$a$a;-><init>(Ljava/util/List;)V

    check-cast v3, Lcom/facebook/GraphRequest$b;

    invoke-static {v2, v1, v3}, Lcom/facebook/internal/b/d;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$b;)V

    .line 56
    :cond_4
    invoke-static {}, Lcom/facebook/internal/b/a/a;->a()Lcom/facebook/internal/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 57
    invoke-static {}, Lcom/facebook/internal/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 60
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/facebook/internal/b/a/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/facebook/internal/b/a/a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/facebook/internal/b/a/a;->a(Lcom/facebook/internal/b/a/a;)V

    .line 62
    invoke-static {}, Lcom/facebook/internal/b/a/a;->a()Lcom/facebook/internal/b/a/a;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
