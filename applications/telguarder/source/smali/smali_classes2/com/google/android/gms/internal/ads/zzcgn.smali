.class final Lcom/google/android/gms/internal/ads/zzcgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzerp:Ljava/lang/String;

.field private final synthetic zzgja:Lcom/google/android/gms/internal/ads/zzaif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzerp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzgja:Lcom/google/android/gms/internal/ads/zzaif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzerp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzgja:Lcom/google/android/gms/internal/ads/zzaif;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
