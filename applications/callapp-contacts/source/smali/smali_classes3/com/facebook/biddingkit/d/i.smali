.class public final Lcom/facebook/biddingkit/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/biddingkit/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/facebook/biddingkit/d/j;

    invoke-direct {p1, p3}, Lcom/facebook/biddingkit/d/j;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/biddingkit/d/g;->a(Lcom/facebook/biddingkit/d/j;)V

    .line 39
    invoke-static {p0}, Lcom/facebook/biddingkit/d/f;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/facebook/biddingkit/d/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Logging"

    const-string p2, "Failed to initialize"

    .line 42
    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    const-class v0, Lcom/facebook/biddingkit/d/i;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-boolean v1, Lcom/facebook/biddingkit/d/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
