.class Lcom/callerid/block/main/MainActivity$v;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "v"
.end annotation


# instance fields
.field private final a:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x234

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/callerid/block/bean/GameInfosVersionModel;

    iput-object p1, v0, Lcom/callerid/block/main/MainActivity;->y:Lcom/callerid/block/bean/GameInfosVersionModel;

    invoke-virtual {p1}, Lcom/callerid/block/bean/GameInfosVersionModel;->getUpdatePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/main/MainActivity;->T(Lcom/callerid/block/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity;->y:Lcom/callerid/block/bean/GameInfosVersionModel;

    invoke-virtual {p1}, Lcom/callerid/block/bean/GameInfosVersionModel;->getMinMaintenanceVersion()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testupdate"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->S(Lcom/callerid/block/main/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/callerid/block/util/t0;->D(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->L(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/callerid/block/util/n0;->W0(Landroid/content/Context;J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->L(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    const/4 p1, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, p1}, Lcom/callerid/block/main/MainActivity;->f1(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/callerid/block/util/n0;->v1(Z)V

    :try_start_1
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1, v1}, Lcom/callerid/block/main/MainActivity;->f1(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/callerid/block/util/n0;->v1(Z)V

    invoke-static {}, Lcom/callerid/block/util/n0;->C1()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    :try_start_2
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Lcom/callerid/block/main/MainActivity;->g1()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {v4, v5}, Lcom/callerid/block/util/n0;->H1(J)V

    goto :goto_2

    :cond_3
    sub-long v0, v4, v0

    const-wide/32 v2, 0x2932e00

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    :try_start_3
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$v;->a:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Lcom/callerid/block/main/MainActivity;->g1()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/callerid/block/util/n0;->v1(Z)V

    :cond_5
    :goto_2
    return-void
.end method
