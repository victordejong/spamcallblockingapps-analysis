.class public final Lcom/google/android/gms/internal/ads/cpf;
.super Lcom/google/android/gms/internal/ads/cpa;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpa",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cpf;-><init>(I)V

    .line 2
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cpa;-><init>(I)V

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cpd;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpf;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 0

    .prologue
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpd;

    .line 8
    return-object p0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 0

    .prologue
    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/cpd;

    .line 13
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 0

    .prologue
    .line 14
    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;

    .line 17
    return-object p0
.end method
