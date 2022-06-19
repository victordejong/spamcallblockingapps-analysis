.class final Lcom/google/android/gms/internal/ads/ctv;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/csm;",
        "Lcom/google/android/gms/internal/ads/cvy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cvy;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/czv;

    new-instance v0, Lcom/google/android/gms/internal/ads/ctx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ctx;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvy;->b()Lcom/google/android/gms/internal/ads/cwc;

    move-result-object v1

    const-class v3, Lcom/google/android/gms/internal/ads/dai;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dai;

    new-instance v1, Lcom/google/android/gms/internal/ads/cvi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/cvi;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvy;->c()Lcom/google/android/gms/internal/ads/cxp;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/ctd;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ctd;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvy;->c()Lcom/google/android/gms/internal/ads/cxp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxp;->b()Lcom/google/android/gms/internal/ads/cxt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxt;->b()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/czv;-><init>(Lcom/google/android/gms/internal/ads/dai;Lcom/google/android/gms/internal/ads/ctd;I)V

    .line 7
    return-object v2
.end method
