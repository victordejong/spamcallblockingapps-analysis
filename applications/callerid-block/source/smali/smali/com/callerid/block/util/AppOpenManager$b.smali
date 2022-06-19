.class Lcom/callerid/block/util/AppOpenManager$b;
.super Lcom/google/android/gms/ads/t/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/AppOpenManager;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/AppOpenManager;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/AppOpenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager$b;->a:Lcom/callerid/block/util/AppOpenManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/t/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/callerid/block/main/EZCallApplication;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/callerid/block/main/EZCallApplication;->f:Z

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callerid/block/start/StartActivityTest;->W()Lcom/callerid/block/start/StartActivityTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/start/StartActivityTest;->V()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColdStarts--onAppOpenAdFailedToLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppOpenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/t/a;

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/AppOpenManager$b;->c(Lcom/google/android/gms/ads/t/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/t/a;)V
    .locals 4

    const-string v0, "AppOpenManager"

    :try_start_0
    const-string v1, "onAppOpenAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/callerid/block/util/AppOpenManager$b;->a:Lcom/callerid/block/util/AppOpenManager;

    iput-object p1, v1, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/callerid/block/util/AppOpenManager;->h(Lcom/callerid/block/util/AppOpenManager;J)J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isColdStarts:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/callerid/block/main/EZCallApplication;->f:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/callerid/block/start/StartActivityTest;->W()Lcom/callerid/block/start/StartActivityTest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/start/StartActivityTest;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
