.class public abstract Lcom/google/android/gms/internal/ads/zzely;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzisc:Lcom/google/android/gms/internal/ads/zzely;

.field private static final zzisd:Lcom/google/android/gms/internal/ads/zzely;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzema;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzema;-><init>(Lcom/google/android/gms/internal/ads/zzelx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisc:Lcom/google/android/gms/internal/ads/zzely;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelz;-><init>(Lcom/google/android/gms/internal/ads/zzelx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisd:Lcom/google/android/gms/internal/ads/zzely;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzely;-><init>()V

    return-void
.end method

.method public static zzbjo()Lcom/google/android/gms/internal/ads/zzely;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisc:Lcom/google/android/gms/internal/ads/zzely;

    return-object v0
.end method

.method public static zzbjp()Lcom/google/android/gms/internal/ads/zzely;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzely;->zzisd:Lcom/google/android/gms/internal/ads/zzely;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)Ljava/util/List;
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

.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
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

.method public abstract zzb(Ljava/lang/Object;J)V
.end method
