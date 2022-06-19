.class public Lcom/amazon/device/ads/DTBTimeTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;
    }
.end annotation


# static fields
.field private static c:Lcom/amazon/device/ads/DTBTimeTrace;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private d:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBTimeTrace;->b:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBTimeTrace;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/amazon/device/ads/DTBTimeTrace;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/device/ads/DTBTimeTrace;->c:Lcom/amazon/device/ads/DTBTimeTrace;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/device/ads/DTBTimeTrace;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBTimeTrace;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBTimeTrace;->c:Lcom/amazon/device/ads/DTBTimeTrace;

    .line 42
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DTBTimeTrace;->c:Lcom/amazon/device/ads/DTBTimeTrace;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .line 66
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->a()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBTimeTrace;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerlessMetrics"

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/amazon/device/ads/DTBTimeTrace;->d:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 89
    iget-object v2, p0, Lcom/amazon/device/ads/DTBTimeTrace;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;

    .line 91
    invoke-static {v3}, Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;->b(Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;->a(Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v3}, Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;->a(Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "Total Time:"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBTimeTrace;->d:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1073
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBTimeTrace;->b:Z

    .line 1074
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBTimeTrace;->d:Ljava/util/Date;

    .line 1075
    iget-object v1, p0, Lcom/amazon/device/ads/DTBTimeTrace;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
