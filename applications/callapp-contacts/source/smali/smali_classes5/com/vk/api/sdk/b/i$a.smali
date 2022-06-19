.class final Lcom/vk/api/sdk/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0008J\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall$Backoff;",
        "",
        "()V",
        "TIMEOUT",
        "",
        "bf",
        "Lcom/vk/api/sdk/utils/ExponentialBackoff;",
        "backoff",
        "",
        "delayTime",
        "reset",
        "shouldWait",
        "",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/b/i$a;

.field private static final b:Lcom/vk/api/sdk/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 55
    new-instance v0, Lcom/vk/api/sdk/b/i$a;

    invoke-direct {v0}, Lcom/vk/api/sdk/b/i$a;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/b/i$a;->a:Lcom/vk/api/sdk/b/i$a;

    .line 57
    new-instance v0, Lcom/vk/api/sdk/e/b;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f40

    const v6, 0x3f99999a    # 1.2f

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/vk/api/sdk/e/b;-><init>(JJFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/b/i$a;->b:Lcom/vk/api/sdk/e/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    sget-object v0, Lcom/vk/api/sdk/b/i$a;->b:Lcom/vk/api/sdk/e/b;

    invoke-virtual {v0}, Lcom/vk/api/sdk/e/b;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    sget-object v0, Lcom/vk/api/sdk/b/i$a;->b:Lcom/vk/api/sdk/e/b;

    .line 1063
    invoke-virtual {v0}, Lcom/vk/api/sdk/e/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 66
    :try_start_0
    sget-object v0, Lcom/vk/api/sdk/b/i$a;->b:Lcom/vk/api/sdk/e/b;

    .line 2059
    iget-wide v1, v0, Lcom/vk/api/sdk/e/b;->c:J

    iput-wide v1, v0, Lcom/vk/api/sdk/e/b;->a:J

    const/4 v1, 0x0

    .line 2060
    iput v1, v0, Lcom/vk/api/sdk/e/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()J
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    sget-object v0, Lcom/vk/api/sdk/b/i$a;->b:Lcom/vk/api/sdk/e/b;

    .line 3042
    iget-wide v0, v0, Lcom/vk/api/sdk/e/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
