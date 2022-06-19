.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$3;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x1f4

    :try_start_0
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, p2, v2}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lk61$a;

    const-string v2, "no token"

    invoke-direct {v1, v2, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "no context"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    new-instance v2, Lk61$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, v2}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_0
    return-void
.end method
