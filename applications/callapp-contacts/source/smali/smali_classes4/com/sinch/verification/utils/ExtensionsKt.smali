.class public final Lcom/sinch/verification/utils/ExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u001a\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0010\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "MAX_TIMEOUT",
        "",
        "Lkotlin/Long$Companion;",
        "getMAX_TIMEOUT",
        "(Lkotlin/jvm/internal/LongCompanionObject;)J",
        "changeProcessNetworkTo",
        "",
        "Landroid/net/ConnectivityManager;",
        "network",
        "Landroid/net/Network;",
        "prefixed",
        "",
        "prefix",
        "toMillisOrNull",
        "Ljava/util/concurrent/TimeUnit;",
        "duration",
        "(Ljava/util/concurrent/TimeUnit;Ljava/lang/Long;)Ljava/lang/Long;",
        "utils_productionRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final changeProcessNetworkTo(Landroid/net/ConnectivityManager;Landroid/net/Network;)V
    .locals 1

    const-string v0, "$this$changeProcessNetworkTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v0}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi23OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    return-void

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    return-void
.end method

.method public static final getMAX_TIMEOUT(Lkotlin/jvm/internal/LongCompanionObject;)J
    .locals 2

    const-string v0, "$this$MAX_TIMEOUT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    return-wide v0
.end method

.method public static final prefixed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$prefixed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toMillisOrNull(Ljava/util/concurrent/TimeUnit;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    const-string v0, "$this$toMillisOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
