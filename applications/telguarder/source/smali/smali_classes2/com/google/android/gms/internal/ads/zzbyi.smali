.class public final Lcom/google/android/gms/internal/ads/zzbyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyf;


# instance fields
.field private final zzdwa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

.field private zzgbc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdss;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdwa:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzdwa:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    return-void
.end method


# virtual methods
.method public final zzamr()V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzgbc:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzdwa:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdss;->zzk(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzgbc:Z

    :cond_0
    return-void
.end method
