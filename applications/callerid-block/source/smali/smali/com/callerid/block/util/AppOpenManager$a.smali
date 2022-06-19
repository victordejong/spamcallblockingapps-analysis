.class Lcom/callerid/block/util/AppOpenManager$a;
.super Lcom/google/android/gms/ads/i;
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

    iput-object p1, p0, Lcom/callerid/block/util/AppOpenManager$a;->a:Lcom/callerid/block/util/AppOpenManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AppOpenManager"

    const-string v1, "onAdDismissedFullScreenContent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/callerid/block/util/AppOpenManager$a;->a:Lcom/callerid/block/util/AppOpenManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/callerid/block/util/AppOpenManager;->g:Z

    invoke-virtual {v0}, Lcom/callerid/block/util/AppOpenManager;->i()V

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

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AppOpenManager"

    const-string v1, "onAdShowedFullScreenContent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/callerid/block/util/AppOpenManager$a;->a:Lcom/callerid/block/util/AppOpenManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/callerid/block/util/AppOpenManager;->g:Z

    return-void
.end method
