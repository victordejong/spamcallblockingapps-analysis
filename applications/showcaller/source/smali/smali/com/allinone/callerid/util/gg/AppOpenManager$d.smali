.class Lcom/allinone/callerid/util/gg/AppOpenManager$d;
.super Lcom/google/android/gms/ads/i;
.source "AppOpenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/AppOpenManager;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/util/gg/AppOpenManager;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$d;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    :try_start_0
    const-string v0, "AppOpenManager"

    const-string v1, "onAdDismissedFullScreenContent"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$d;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z

    .line 4
    invoke-static {}, Lcom/allinone/callerid/start/StartActivity;->b0()Lcom/allinone/callerid/start/StartActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/start/StartActivity;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Lcom/google/android/gms/ads/a;)V
    .locals 2

    .line 1
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

    .line 2
    invoke-static {}, Lcom/allinone/callerid/start/StartActivity;->b0()Lcom/allinone/callerid/start/StartActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/start/StartActivity;->a0()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "AppOpenManager"

    const-string v1, "onAdShowedFullScreenContent"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/allinone/callerid/start/StartActivity;->v:Z

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$d;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    iput-boolean v0, v1, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z

    return-void
.end method
