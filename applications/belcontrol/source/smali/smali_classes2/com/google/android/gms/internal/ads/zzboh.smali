.class public final Lcom/google/android/gms/internal/ads/zzboh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzbnz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

.field private final synthetic zzfws:Lcom/google/android/gms/internal/ads/zzboe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzboe;Lcom/google/android/gms/internal/ads/zzdzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfws:Lcom/google/android/gms/internal/ads/zzboe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfws:Lcom/google/android/gms/internal/ads/zzboe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbnz;->zzfwk:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzboe;->zza(Lcom/google/android/gms/internal/ads/zzboe;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdzl;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboh;->zzfws:Lcom/google/android/gms/internal/ads/zzboe;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zza(Lcom/google/android/gms/internal/ads/zzboe;)V

    return-void
.end method
