.class public final Lcom/criteo/publisher/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/criteo/publisher/f/f;

    invoke-direct {v0}, Lcom/criteo/publisher/f/f;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Exception;)Lcom/criteo/publisher/logging/e;
    .locals 4

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x5

    const-string v2, "Error while reading queue file. Recovering by recreating it or using in-memory queue"

    const-string v3, "onRecoveringFromStaleQueueFile"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Exception;)Lcom/criteo/publisher/logging/e;
    .locals 4

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x5

    const-string v2, "Error when polling element from queue file"

    const-string v3, "onErrorWhenPollingQueueFile"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method
