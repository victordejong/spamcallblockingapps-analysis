.class public final Lcom/google/android/gms/internal/ads/zzbaf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzeiq:Lcom/google/android/gms/internal/ads/zzbae;

.field private final synthetic zzeir:Lcom/google/android/gms/internal/ads/zzbac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbad;Lcom/google/android/gms/internal/ads/zzbae;Lcom/google/android/gms/internal/ads/zzbac;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaf;->zzeiq:Lcom/google/android/gms/internal/ads/zzbae;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbaf;->zzeir:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaf;->zzeiq:Lcom/google/android/gms/internal/ads/zzbae;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaf;->zzeir:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbac;->run()V

    return-void
.end method
