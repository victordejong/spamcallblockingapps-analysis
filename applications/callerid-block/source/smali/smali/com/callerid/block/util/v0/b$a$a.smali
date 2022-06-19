.class Lcom/callerid/block/util/v0/b$a$a;
.super Lcom/google/android/gms/ads/w/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/v0/b$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/v0/b$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/v0/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/v0/b$a$a;->a:Lcom/callerid/block/util/v0/b$a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544ainitStartInterstitialAd_onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/j;->f()Lcom/google/android/gms/ads/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/w/a;

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/v0/b$a$a;->c(Lcom/google/android/gms/ads/w/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/w/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/util/v0/b$a$a;->a:Lcom/callerid/block/util/v0/b$a;

    iget-object v0, v0, Lcom/callerid/block/util/v0/b$a;->a:Lcom/callerid/block/util/v0/b;

    invoke-static {v0, p1}, Lcom/callerid/block/util/v0/b;->b(Lcom/callerid/block/util/v0/b;Lcom/google/android/gms/ads/w/a;)Lcom/google/android/gms/ads/w/a;

    iget-object p1, p0, Lcom/callerid/block/util/v0/b$a$a;->a:Lcom/callerid/block/util/v0/b$a;

    iget-object p1, p1, Lcom/callerid/block/util/v0/b$a;->a:Lcom/callerid/block/util/v0/b;

    invoke-static {p1}, Lcom/callerid/block/util/v0/b;->a(Lcom/callerid/block/util/v0/b;)Lcom/google/android/gms/ads/w/a;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/util/v0/b$a$a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/v0/b$a$a$a;-><init>(Lcom/callerid/block/util/v0/b$a$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/w/a;->b(Lcom/google/android/gms/ads/i;)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "\u5e7f\u544ainitStartInterstitialAd_onAdLoaded"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
