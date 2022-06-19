.class public final Lcom/google/android/gms/internal/ads/zzbzr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzr;->zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbzr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzr;-><init>(Lcom/google/android/gms/internal/ads/zzbyz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzr;->zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->zzamu()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
