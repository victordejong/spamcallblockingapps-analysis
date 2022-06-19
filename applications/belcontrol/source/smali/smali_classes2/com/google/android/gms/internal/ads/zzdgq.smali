.class public final Lcom/google/android/gms/internal/ads/zzdgq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdgr;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field public zzhei:Lcom/google/android/gms/internal/ads/zztj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztj;Lcom/google/android/gms/internal/ads/zzdzv;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzhei:Lcom/google/android/gms/internal/ads/zztj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgq;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdgr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdgt;-><init>(Lcom/google/android/gms/internal/ads/zzdgq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
