.class public final synthetic Lcom/google/android/gms/internal/ads/zzug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzug;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug;->zza:Lcom/google/android/gms/internal/ads/zzug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzuj;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzuj;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuj;->zza:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzuj;->zza:I

    sub-int/2addr p1, p2

    return p1
.end method
