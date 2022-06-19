.class public final Lcom/google/android/gms/internal/ads/zzbrc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdnk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbqx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    return-void
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbrc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrc;-><init>(Lcom/google/android/gms/internal/ads/zzbqx;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzalm()Lcom/google/android/gms/internal/ads/zzdnk;

    move-result-object v0

    return-object v0
.end method
