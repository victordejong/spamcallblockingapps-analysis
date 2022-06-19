.class public final Lcom/sinch/logging/LogKt;
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "logger",
        "Lcom/sinch/logging/Logger;",
        "",
        "tag",
        "",
        "logging_productionRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;
    .locals 2

    const-string v0, "$this$logger"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 55
    invoke-static {p0, v0, v1, v0}, Lcom/sinch/logging/Log;->create$default(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static final logger(Ljava/lang/Object;Ljava/lang/String;)Lcom/sinch/logging/Logger;
    .locals 1

    const-string v0, "$this$logger"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p0, p1}, Lcom/sinch/logging/Log;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/sinch/logging/Logger;

    move-result-object p0

    return-object p0
.end method
