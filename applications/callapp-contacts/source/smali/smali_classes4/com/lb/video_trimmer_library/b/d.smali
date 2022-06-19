.class public final Lcom/lb/video_trimmer_library/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/video_trimmer_library/b/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00007\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0008J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J\u001e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor;",
        "",
        "()V",
        "HANDLER",
        "com/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1",
        "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$HANDLER$1;",
        "TOKENS",
        "Ljava/util/HashMap;",
        "",
        "Lcom/lb/video_trimmer_library/utils/UiThreadExecutor$Token;",
        "cancelAll",
        "",
        "id",
        "decrementToken",
        "token",
        "nextToken",
        "runTask",
        "task",
        "Ljava/lang/Runnable;",
        "delay",
        "",
        "Token",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final a:Lcom/lb/video_trimmer_library/b/d$a;

.field public static final b:Lcom/lb/video_trimmer_library/b/d;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lb/video_trimmer_library/b/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/lb/video_trimmer_library/b/d;

    invoke-direct {v0}, Lcom/lb/video_trimmer_library/b/d;-><init>()V

    sput-object v0, Lcom/lb/video_trimmer_library/b/d;->b:Lcom/lb/video_trimmer_library/b/d;

    .line 32
    new-instance v0, Lcom/lb/video_trimmer_library/b/d$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lb/video_trimmer_library/b/d$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lb/video_trimmer_library/b/d;->a:Lcom/lb/video_trimmer_library/b/d$a;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lb/video_trimmer_library/b/d;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/lb/video_trimmer_library/b/d$b;
    .locals 3

    .line 64
    sget-object v0, Lcom/lb/video_trimmer_library/b/d;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lb/video_trimmer_library/b/d$b;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/lb/video_trimmer_library/b/d$b;

    invoke-direct {v1, p0}, Lcom/lb/video_trimmer_library/b/d$b;-><init>(Ljava/lang/String;)V

    .line 68
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    :cond_0
    iget p0, v1, Lcom/lb/video_trimmer_library/b/d$b;->a:I

    add-int/lit8 p0, p0, 0x1

    .line 2108
    iput p0, v1, Lcom/lb/video_trimmer_library/b/d$b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0

    throw p0
.end method

.method public static final synthetic a(Lcom/lb/video_trimmer_library/b/d$b;)V
    .locals 3

    .line 4076
    sget-object v0, Lcom/lb/video_trimmer_library/b/d;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 4108
    :try_start_0
    iget v1, p0, Lcom/lb/video_trimmer_library/b/d$b;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 5108
    iput v1, p0, Lcom/lb/video_trimmer_library/b/d$b;->a:I

    .line 6108
    iget v1, p0, Lcom/lb/video_trimmer_library/b/d$b;->a:I

    if-nez v1, :cond_0

    .line 7107
    iget-object v1, p0, Lcom/lb/video_trimmer_library/b/d$b;->b:Ljava/lang/String;

    .line 4079
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lb/video_trimmer_library/b/d$b;

    .line 4080
    invoke-static {v2, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    .line 4083
    move-object p0, v0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4086
    :cond_0
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4076
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/lb/video_trimmer_library/b/d;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lb/video_trimmer_library/b/d$b;

    .line 98
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v0

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/lb/video_trimmer_library/b/d;->a:Lcom/lb/video_trimmer_library/b/d$a;

    invoke-virtual {v0, p0}, Lcom/lb/video_trimmer_library/b/d$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0

    throw p0
.end method
