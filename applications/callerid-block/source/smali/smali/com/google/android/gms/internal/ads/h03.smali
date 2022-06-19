.class final Lcom/google/android/gms/internal/ads/h03;
.super Lcom/google/android/gms/internal/ads/l03;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/l03<",
        "Lcom/google/android/gms/internal/ads/o0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/k03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h03;->c:Lcom/google/android/gms/internal/ads/k03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h03;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l03;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h03;->b:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/k03;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/m2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/m2;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h03;->c:Lcom/google/android/gms/internal/ads/k03;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->l(Lcom/google/android/gms/internal/ads/k03;)Lcom/google/android/gms/internal/ads/e2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h03;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e2;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/o0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/h0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h03;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    const v1, 0xc91ed10

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/h0;->z3(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/o0;

    move-result-object p1

    return-object p1
.end method
