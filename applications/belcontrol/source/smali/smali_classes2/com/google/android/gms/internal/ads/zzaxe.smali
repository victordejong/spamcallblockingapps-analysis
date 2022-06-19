.class public final synthetic Lcom/google/android/gms/internal/ads/zzaxe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxs;


# static fields
.field public static final zzebl:Lcom/google/android/gms/internal/ads/zzaxs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxe;->zzebl:Lcom/google/android/gms/internal/ads/zzaxs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->generateEventId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
