.class public final synthetic Lcom/google/android/gms/internal/ads/zzcoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzww;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcoc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcoc;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/internal/ads/zzwp;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzcof;->zzc:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzwp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacf;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(I)V

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaay;

    .line 4
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final synthetic zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzwp;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwv;->zza(Lcom/google/android/gms/internal/ads/zzww;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzwp;

    move-result-object p1

    return-object p1
.end method
