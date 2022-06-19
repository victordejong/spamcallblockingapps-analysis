.class Lcom/allinone/callerid/util/gg/b$a;
.super Lcom/google/android/gms/ads/z/c;
.source "AdMobRewardInterstitialTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/b;->c(Lcom/allinone/callerid/util/gg/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/util/gg/b$d;

.field final synthetic b:Lcom/allinone/callerid/util/gg/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/b;Lcom/allinone/callerid/util/gg/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/b$a;->b:Lcom/allinone/callerid/util/gg/b;

    iput-object p2, p0, Lcom/allinone/callerid/util/gg/b$a;->a:Lcom/allinone/callerid/util/gg/b$d;

    invoke-direct {p0}, Lcom/google/android/gms/ads/z/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/b$a;->a:Lcom/allinone/callerid/util/gg/b$d;

    invoke-interface {p1}, Lcom/allinone/callerid/util/gg/b$d;->b()V

    .line 3
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "tony"

    const-string v0, "onAdFailedToLoad"

    .line 4
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/z/b;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/gg/b$a;->c(Lcom/google/android/gms/ads/z/b;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/z/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/b$a;->b:Lcom/allinone/callerid/util/gg/b;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/gg/b;->a(Lcom/allinone/callerid/util/gg/b;Lcom/google/android/gms/ads/z/b;)Lcom/google/android/gms/ads/z/b;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/b$a;->a:Lcom/allinone/callerid/util/gg/b$d;

    invoke-interface {p1}, Lcom/allinone/callerid/util/gg/b$d;->a()V

    .line 4
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "tony"

    const-string v0, "onAdLoaded"

    .line 5
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
