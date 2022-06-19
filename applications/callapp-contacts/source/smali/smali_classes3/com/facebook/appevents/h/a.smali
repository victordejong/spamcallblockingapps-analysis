.class public Lcom/facebook/appevents/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "fb_mobile_purchase"

    const-string v2, "StartTrial"

    const-string v3, "Subscribe"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/appevents/h/a;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/appevents/c;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/h/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/appevents/h/a;->a(Lcom/facebook/appevents/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/appevents/h/a$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/appevents/h/a$2;-><init>(Ljava/lang/String;Lcom/facebook/appevents/c;)V

    .line 87
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 95
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/h/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 58
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/appevents/h/a$1;

    invoke-direct {v3, v1, p1, p0}, Lcom/facebook/appevents/h/a$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 82
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/h/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 47
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/facebook/g;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/facebook/internal/ae;->h()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 51
    invoke-static {}, Lcom/facebook/appevents/h/c;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static a(Lcom/facebook/appevents/c;)Z
    .locals 5

    const-class v0, Lcom/facebook/appevents/h/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1097
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/appevents/c;->b:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/facebook/appevents/h/a;->a:Ljava/util/Set;

    .line 2084
    iget-object v4, p0, Lcom/facebook/appevents/c;->c:Ljava/lang/String;

    .line 99
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2097
    :goto_0
    iget-boolean p0, p0, Lcom/facebook/appevents/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p0, v3

    if-nez p0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v3

    :catchall_0
    move-exception p0

    .line 102
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
