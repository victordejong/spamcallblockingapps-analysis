.class final Lcom/google/android/gms/common/api/internal/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/f;

.field private final b:I

.field private final c:Lcom/google/android/gms/common/api/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/f;ILcom/google/android/gms/common/api/internal/b;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f;",
            "I",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/am;->a:Lcom/google/android/gms/common/api/internal/f;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/am;->b:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/am;->c:Lcom/google/android/gms/common/api/internal/b;

    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/am;->d:J

    return-void
.end method

.method static a(Lcom/google/android/gms/common/api/internal/f;ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/am;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/f;",
            "I",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;)",
            "Lcom/google/android/gms/common/api/internal/am<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->a()Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/af;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6000
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 6
    instance-of v4, v4, Lcom/google/android/gms/common/internal/d;

    if-nez v4, :cond_2

    return-object v1

    .line 7000
    :cond_2
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 7
    check-cast v4, Lcom/google/android/gms/common/internal/d;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/d;->hasConnectionInfo()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/d;->isConnecting()Z

    move-result v5

    if-nez v5, :cond_4

    .line 9
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/common/api/internal/am;->a(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/internal/d;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 8000
    :cond_3
    iget v1, v3, Lcom/google/android/gms/common/api/internal/af;->h:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/google/android/gms/common/api/internal/af;->h:I

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v0

    :cond_5
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/am;

    if-eqz v2, :cond_6

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_1

    :cond_6
    const-wide/16 v1, 0x0

    :goto_1
    move-wide v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/common/api/internal/am;-><init>(Lcom/google/android/gms/common/api/internal/f;ILcom/google/android/gms/common/api/internal/b;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/internal/d;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;",
            "Lcom/google/android/gms/common/internal/d<",
            "*>;I)",
            "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationMethodKeyAllowlist()[I

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodInvocationMethodKeyDisallowlist()[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, p2}, Lcom/google/android/gms/common/util/b;->a([II)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v1, p2}, Lcom/google/android/gms/common/util/b;->a([II)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 4000
    :cond_2
    :goto_0
    iget p0, p0, Lcom/google/android/gms/common/api/internal/af;->h:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMaxMethodInvocationsLogged()I

    move-result p2

    if-ge p0, p2, :cond_3

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/am;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/f;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->a()Lcom/google/android/gms/common/internal/p;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/am;->a:Lcom/google/android/gms/common/api/internal/f;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/am;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/af;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2000
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 5
    instance-of v3, v3, Lcom/google/android/gms/common/internal/d;

    if-nez v3, :cond_3

    goto/16 :goto_8

    .line 3000
    :cond_3
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 6
    check-cast v3, Lcom/google/android/gms/common/internal/d;

    iget-wide v4, v0, Lcom/google/android/gms/common/api/internal/am;->d:J

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v4, v7

    if-lez v10, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 7
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->getGCoreServiceId()I

    move-result v20

    const/16 v5, 0x64

    if-eqz v1, :cond_8

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v10

    and-int/2addr v4, v10

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getBatchPeriodMillis()I

    move-result v10

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMaxMethodInvocationsInBatch()I

    move-result v11

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getVersion()I

    move-result v1

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->hasConnectionInfo()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->isConnecting()Z

    move-result v12

    if-nez v12, :cond_7

    iget v4, v0, Lcom/google/android/gms/common/api/internal/am;->b:I

    .line 13
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/am;->a(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/internal/d;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    .line 14
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMethodTimingTelemetryEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v3, v0, Lcom/google/android/gms/common/api/internal/am;->d:J

    cmp-long v11, v3, v7

    if-lez v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 15
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getMaxMethodInvocationsLogged()I

    move-result v11

    move v4, v6

    :cond_7
    move v2, v10

    move v3, v11

    goto :goto_3

    :cond_8
    const/16 v10, 0x1388

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/16 v3, 0x64

    :goto_3
    iget-object v6, v0, Lcom/google/android/gms/common/api/internal/am;->a:Lcom/google/android/gms/common/api/internal/f;

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_9

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_6

    .line 17
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/h;->c()Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v12, 0x64

    :goto_4
    const/4 v13, -0x1

    goto :goto_6

    .line 18
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object v5

    .line 19
    instance-of v9, v5, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v9, :cond_c

    .line 20
    check-cast v5, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/ApiException;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    if-nez v5, :cond_b

    const/4 v5, -0x1

    goto :goto_5

    .line 23
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    :goto_5
    move v13, v5

    move v12, v9

    goto :goto_6

    :cond_c
    const/16 v9, 0x65

    const/16 v12, 0x65

    goto :goto_4

    :goto_6
    if-eqz v4, :cond_d

    .line 16
    iget-wide v7, v0, Lcom/google/android/gms/common/api/internal/am;->d:J

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v16, v4

    move-wide v14, v7

    goto :goto_7

    :cond_d
    move-wide v14, v7

    move-wide/from16 v16, v14

    .line 25
    :goto_7
    new-instance v4, Lcom/google/android/gms/common/internal/MethodInvocation;

    iget v11, v0, Lcom/google/android/gms/common/api/internal/am;->b:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v4

    .line 26
    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    int-to-long v14, v2

    .line 27
    iget-object v2, v6, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/common/api/internal/an;

    move-object v11, v5

    move-object v12, v4

    move v13, v1

    move/from16 v16, v3

    .line 3001
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/api/internal/an;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    const/16 v1, 0x12

    .line 3002
    invoke-virtual {v2, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3001
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    :goto_8
    return-void
.end method
