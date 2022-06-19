.class Lcom/callerid/block/util/AppOpenManager$c;
.super Lcom/google/android/gms/ads/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/AppOpenManager;->l()V
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

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager$c;->a:Lcom/callerid/block/util/AppOpenManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    const-string v0, "AppOpenManager"

    const-string v1, "onAdDismissedFullScreenContent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/callerid/block/util/AppOpenManager$c;->a:Lcom/callerid/block/util/AppOpenManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/callerid/block/util/AppOpenManager;->g:Z

    invoke-static {}, Lcom/callerid/block/start/StartActivityTest;->W()Lcom/callerid/block/start/StartActivityTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/start/StartActivityTest;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lcom/google/android/gms/ads/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToShowFullScreenContent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppOpenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    sput-boolean p1, Lcom/callerid/block/start/StartActivityTest;->B:Z

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AppOpenManager"

    const-string v1, "onAdShowedFullScreenContent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/callerid/block/start/StartActivityTest;->A:Z

    iget-object v1, p0, Lcom/callerid/block/util/AppOpenManager$c;->a:Lcom/callerid/block/util/AppOpenManager;

    iput-boolean v0, v1, Lcom/callerid/block/util/AppOpenManager;->g:Z

    return-void
.end method
