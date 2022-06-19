.class public final Lcom/google/android/gms/internal/ads/bic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/cpo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/cpo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bic;->a:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cpo;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cpo;->o:Lcom/google/android/gms/internal/ads/cpa;

    iget p0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:I

    sget v0, Lcom/google/android/gms/internal/ads/cpg;->c:I

    if-ne p0, v0, :cond_0

    const-string p0, "rewarded_interstitial"

    goto :goto_0

    :cond_0
    const-string p0, "rewarded"

    .line 8
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bic;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bic;->a(Lcom/google/android/gms/internal/ads/cpo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
