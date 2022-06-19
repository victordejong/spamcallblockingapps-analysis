.class Lcom/allinone/callerid/util/gg/e$a;
.super Lcom/google/android/gms/ads/x/b;
.source "CallscreenBackInterstitialTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/e;->e(ZLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/allinone/callerid/util/gg/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/e;ZLandroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    iput-boolean p2, p0, Lcom/allinone/callerid/util/gg/e$a;->a:Z

    iput-object p3, p0, Lcom/allinone/callerid/util/gg/e$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/x/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/gg/e;->a(Lcom/allinone/callerid/util/gg/e;Z)Z

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backInterstitialAd_onAdFailedToLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/x/a;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/gg/e$a;->c(Lcom/google/android/gms/ads/x/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/x/a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/gg/e;->a(Lcom/allinone/callerid/util/gg/e;Z)Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/gg/e;->c(Lcom/allinone/callerid/util/gg/e;Lcom/google/android/gms/ads/x/a;)Lcom/google/android/gms/ads/x/a;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/f/f;->m(J)V

    .line 5
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "backInterstitialAd_onAdLoaded"

    .line 6
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/allinone/callerid/util/gg/e$a;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    invoke-static {p1}, Lcom/allinone/callerid/util/gg/e;->b(Lcom/allinone/callerid/util/gg/e;)Lcom/google/android/gms/ads/x/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    invoke-static {p1}, Lcom/allinone/callerid/util/gg/e;->b(Lcom/allinone/callerid/util/gg/e;)Lcom/google/android/gms/ads/x/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/gg/e$a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/x/a;->d(Landroid/app/Activity;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/e$a;->c:Lcom/allinone/callerid/util/gg/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/e;->c(Lcom/allinone/callerid/util/gg/e;Lcom/google/android/gms/ads/x/a;)Lcom/google/android/gms/ads/x/a;

    :cond_1
    return-void
.end method
