.class public final Lcom/google/android/gms/internal/ads/zzchl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzug$zza$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfvf:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdnp;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfvf:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfvf:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdnp;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhle:Lcom/google/android/gms/internal/ads/zzdnc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhki:I

    sget v1, Lcom/google/android/gms/internal/ads/zzdnh;->zzhkm:I

    if-ne v0, v1, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzbyy:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzbyu:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    return-object v0
.end method
