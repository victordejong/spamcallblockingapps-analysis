.class public final Lcom/google/android/gms/internal/ads/zzdat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdar;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdat;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdar;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdar;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdat;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdar;-><init>(Lcom/google/android/gms/internal/ads/zzdnp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
