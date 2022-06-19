.class public final Lcom/google/android/gms/internal/ads/zzbwp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbya<",
        "Lcom/google/android/gms/internal/ads/zzbsa;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzgav:Lcom/google/android/gms/internal/ads/zzbwg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzgav:Lcom/google/android/gms/internal/ads/zzbwg;

    return-void
.end method

.method public static zzn(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzbwp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbwp;-><init>(Lcom/google/android/gms/internal/ads/zzbwg;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwp;->zzgav:Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzamb()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
