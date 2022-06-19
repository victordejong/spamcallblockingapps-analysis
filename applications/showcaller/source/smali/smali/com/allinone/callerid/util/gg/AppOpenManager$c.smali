.class Lcom/allinone/callerid/util/gg/AppOpenManager$c;
.super Lcom/google/android/gms/ads/u/a$a;
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
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$c;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/u/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/start/StartActivity;->u:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/start/StartActivity;->b0()Lcom/allinone/callerid/start/StartActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/start/StartActivity;->a0()V

    .line 5
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

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/u/a;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/gg/AppOpenManager$c;->c(Lcom/google/android/gms/ads/u/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/u/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "AppOpenManager"

    const-string v1, "onAppOpenAdLoaded"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$c;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    iput-object p1, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    .line 4
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/gg/AppOpenManager;->i(Lcom/allinone/callerid/util/gg/AppOpenManager;J)J

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    sget-boolean p1, Lcom/allinone/callerid/start/StartActivity;->u:Z

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Lcom/allinone/callerid/start/StartActivity;->b0()Lcom/allinone/callerid/start/StartActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/start/StartActivity;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
