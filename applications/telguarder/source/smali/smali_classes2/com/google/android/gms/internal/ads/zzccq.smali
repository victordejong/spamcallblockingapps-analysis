.class public final Lcom/google/android/gms/internal/ads/zzccq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field zzgex:Lcom/google/android/gms/internal/ads/zzafs;

.field zzgey:Lcom/google/android/gms/internal/ads/zzafr;

.field zzgez:Lcom/google/android/gms/internal/ads/zzagg;

.field zzgfa:Lcom/google/android/gms/internal/ads/zzagf;

.field zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

.field final zzgfc:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafy;",
            ">;"
        }
    .end annotation
.end field

.field final zzgfd:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgfc:Landroidx/collection/SimpleArrayMap;

    .line 3
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgfd:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzagf;)Lcom/google/android/gms/internal/ads/zzccq;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgfa:Lcom/google/android/gms/internal/ads/zzagf;

    return-object p0
.end method

.method public final zzaor()Lcom/google/android/gms/internal/ads/zzcco;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcco;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcco;-><init>(Lcom/google/android/gms/internal/ads/zzccq;Lcom/google/android/gms/internal/ads/zzccn;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafr;)Lcom/google/android/gms/internal/ads/zzccq;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgey:Lcom/google/android/gms/internal/ads/zzafr;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafs;)Lcom/google/android/gms/internal/ads/zzccq;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgex:Lcom/google/android/gms/internal/ads/zzafs;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzagg;)Lcom/google/android/gms/internal/ads/zzccq;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgez:Lcom/google/android/gms/internal/ads/zzagg;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzakb;)Lcom/google/android/gms/internal/ads/zzccq;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgfb:Lcom/google/android/gms/internal/ads/zzakb;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzafx;)Lcom/google/android/gms/internal/ads/zzccq;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgfc:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzgfd:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
