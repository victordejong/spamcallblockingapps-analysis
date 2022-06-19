.class public final Lcom/google/android/gms/internal/ads/zzuy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeli;


# static fields
.field public static final zzeu:Lcom/google/android/gms/internal/ads/zzeli;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzuy;->zzeu:Lcom/google/android/gms/internal/ads/zzeli;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzcm(I)Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
