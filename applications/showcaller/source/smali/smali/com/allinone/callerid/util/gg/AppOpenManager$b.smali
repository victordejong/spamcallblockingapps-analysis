.class Lcom/allinone/callerid/util/gg/AppOpenManager$b;
.super Lcom/google/android/gms/ads/i;
.source "AppOpenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/AppOpenManager;->j()V
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
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$b;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "AppOpenManager"

    const-string v1, "onAdDismissedFullScreenContent"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$b;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/util/gg/AppOpenManager;->j()V

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

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "AppOpenManager"

    const-string v1, "onAdShowedFullScreenContent"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$b;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z

    return-void
.end method
