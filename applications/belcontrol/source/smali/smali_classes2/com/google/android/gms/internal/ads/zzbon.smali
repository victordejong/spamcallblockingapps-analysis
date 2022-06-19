.class public final Lcom/google/android/gms/internal/ads/zzbon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdnl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwt:Lcom/google/android/gms/internal/ads/zzboj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzboj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzfwt:Lcom/google/android/gms/internal/ads/zzboj;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzboj;)Lcom/google/android/gms/internal/ads/zzbon;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbon;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbon;-><init>(Lcom/google/android/gms/internal/ads/zzboj;)V

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzboj;)Lcom/google/android/gms/internal/ads/zzdnl;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzboj;->zzakw()Lcom/google/android/gms/internal/ads/zzdnl;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdnl;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzfwt:Lcom/google/android/gms/internal/ads/zzboj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbon;->zzf(Lcom/google/android/gms/internal/ads/zzboj;)Lcom/google/android/gms/internal/ads/zzdnl;

    move-result-object v0

    return-object v0
.end method
