.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;
.super Lcom/google/android/gms/ads/z/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/z/c;-><init>()V

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

    const-string v1, "onRewardedAdFailedToLoad:"

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

    check-cast p1, Lcom/google/android/gms/ads/z/b;

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->c(Lcom/google/android/gms/ads/z/b;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/z/b;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onRewardedAdLoaded"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/z/b;->b(Lcom/google/android/gms/ads/i;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/z/b;->c(Landroid/app/Activity;Lcom/google/android/gms/ads/n;)V

    return-void
.end method
