.class abstract Lcom/google/android/gms/internal/ads/zzely;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# static fields
.field private static final zzisc:Lcom/google/android/gms/internal/ads/zzely;

.field private static final zzisd:Lcom/google/android/gms/internal/ads/zzely;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzema;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzema;-><init>(Lcom/google/android/gms/internal/ads/zzelx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisc:Lcom/google/android/gms/internal/ads/zzely;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzelz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelz;-><init>(Lcom/google/android/gms/internal/ads/zzelx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisd:Lcom/google/android/gms/internal/ads/zzely;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelx;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzely;-><init>()V

    return-void
.end method

.method static zzbjo()Lcom/google/android/gms/internal/ads/zzely;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisc:Lcom/google/android/gms/internal/ads/zzely;

    return-object v0
.end method

.method static zzbjp()Lcom/google/android/gms/internal/ads/zzely;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisd:Lcom/google/android/gms/internal/ads/zzely;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
