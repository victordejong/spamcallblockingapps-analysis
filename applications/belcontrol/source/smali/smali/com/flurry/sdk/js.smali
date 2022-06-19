.class public final Lcom/flurry/sdk/js;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/flurry/sdk/js;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/js;
    .locals 2

    const-class v0, Lcom/flurry/sdk/js;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/js;

    invoke-direct {v1}, Lcom/flurry/sdk/js;-><init>()V

    sput-object v1, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
