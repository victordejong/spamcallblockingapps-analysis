.class public Ld2/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/ScheduledExecutorService;

.field public b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld2/d1;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld2/d1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iput-object v0, p0, Ld2/d1;->c:Ljava/lang/String;

    .line 4
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    const-string v2, "network_type"

    .line 5
    invoke-static {v1, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    new-instance v0, Ld2/t0;

    const/4 v2, 0x1

    const-string v3, "Network.on_status_change"

    invoke-direct {v0, v3, v2, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    const-string v1, "none"

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v1, "wifi"

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    :cond_4
    const-string v1, "cell"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    new-instance v2, Ld2/u$a;

    invoke-direct {v2}, Ld2/u$a;-><init>()V

    .line 6
    iget-object v3, v2, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred when retrieving activeNetworkInfo in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v3, v2, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    const-string v4, "ADCNetwork.getConnectivityStatus(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v3, v2, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v0, Ld2/u;->f:Ld2/u;

    .line 11
    invoke-virtual {v2, v0}, Ld2/u$a;->a(Ld2/u;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    new-instance v2, Ld2/u$a;

    invoke-direct {v2}, Ld2/u$a;-><init>()V

    .line 13
    iget-object v3, v2, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    const-string v4, "SecurityException - please ensure you added the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v3, v2, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    const-string v4, "ACCESS_NETWORK_STATE permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v3, v2, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v0, Ld2/u;->e:Ld2/u;

    .line 18
    invoke-virtual {v2, v0}, Ld2/u$a;->a(Ld2/u;)V

    :cond_5
    :goto_1
    return-object v1
.end method
