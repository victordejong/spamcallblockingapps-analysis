.class final Lcom/google/android/gms/internal/ads/zzakx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdji:Lcom/google/android/gms/internal/ads/zzaif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzdjj:Lcom/google/android/gms/internal/ads/zzako;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdjj:Lcom/google/android/gms/internal/ads/zzako;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdji:Lcom/google/android/gms/internal/ads/zzaif;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakx;)Lcom/google/android/gms/internal/ads/zzaif;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdji:Lcom/google/android/gms/internal/ads/zzaif;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdji:Lcom/google/android/gms/internal/ads/zzaif;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdjj:Lcom/google/android/gms/internal/ads/zzako;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaif;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
