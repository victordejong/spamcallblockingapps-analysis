.class public Lcom/facebook/appevents/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/facebook/appevents/i;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 46
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/i$1;

    invoke-direct {v1}, Lcom/facebook/appevents/i$1;-><init>()V

    invoke-static {v1}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/q$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 109
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
