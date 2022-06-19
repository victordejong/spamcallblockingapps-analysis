.class final Lcom/google/android/gms/internal/ads/zzbok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

.field private final synthetic zzfws:Lcom/google/android/gms/internal/ads/zzboe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboe;Lcom/google/android/gms/internal/ads/zzdzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfws:Lcom/google/android/gms/internal/ads/zzboe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnt;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfws:Lcom/google/android/gms/internal/ads/zzboe;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboe;->zza(Lcom/google/android/gms/internal/ads/zzboe;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzl;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfws:Lcom/google/android/gms/internal/ads/zzboe;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboe;->zza(Lcom/google/android/gms/internal/ads/zzboe;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbok;->zzfwr:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
