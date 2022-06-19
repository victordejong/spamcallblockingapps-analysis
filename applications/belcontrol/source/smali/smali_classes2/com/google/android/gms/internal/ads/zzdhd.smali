.class public final Lcom/google/android/gms/internal/ads/zzdhd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdha;",
        ">;"
    }
.end annotation


# instance fields
.field public zzduo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field public zzher:Lcom/google/android/gms/internal/ads/zzabb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzdzv;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzabb;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhd;->zzher:Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhd;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhd;->zzduo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdha;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhd;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdhc;-><init>(Lcom/google/android/gms/internal/ads/zzdhd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
