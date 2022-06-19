.class Lcom/allinone/callerid/util/gg/b$b;
.super Lcom/google/android/gms/ads/i;
.source "AdMobRewardInterstitialTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/b;->d(Landroid/app/Activity;Lcom/allinone/callerid/util/gg/b$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/util/gg/b$e;

.field final synthetic b:Lcom/allinone/callerid/util/gg/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/b;Lcom/allinone/callerid/util/gg/b$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/b$b;->b:Lcom/allinone/callerid/util/gg/b;

    iput-object p2, p0, Lcom/allinone/callerid/util/gg/b$b;->a:Lcom/allinone/callerid/util/gg/b$e;

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/i;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/i;->b()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/b$b;->a:Lcom/allinone/callerid/util/gg/b$e;

    invoke-interface {v0}, Lcom/allinone/callerid/util/gg/b$e;->c()V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/i;->c(Lcom/google/android/gms/ads/a;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/b$b;->a:Lcom/allinone/callerid/util/gg/b$e;

    invoke-interface {p1}, Lcom/allinone/callerid/util/gg/b$e;->d()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/i;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/i;->e()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/b$b;->a:Lcom/allinone/callerid/util/gg/b$e;

    invoke-interface {v0}, Lcom/allinone/callerid/util/gg/b$e;->b()V

    return-void
.end method
