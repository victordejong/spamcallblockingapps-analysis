.class public final Lcom/google/android/gms/internal/ads/zzbxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdkk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgav:Lcom/google/android/gms/internal/ads/zzbwg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzgav:Lcom/google/android/gms/internal/ads/zzbwg;

    return-void
.end method

.method public static zzaa(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbxb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>(Lcom/google/android/gms/internal/ads/zzbwg;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxb;->zzgav:Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzamk()Lcom/google/android/gms/internal/ads/zzdkk;

    move-result-object v0

    return-object v0
.end method
