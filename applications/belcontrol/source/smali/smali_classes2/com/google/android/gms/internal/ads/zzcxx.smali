.class public final synthetic Lcom/google/android/gms/internal/ads/zzcxx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# static fields
.field public static final zzgya:Lcom/google/android/gms/internal/ads/zzdkc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgya:Lcom/google/android/gms/internal/ads/zzdkc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwx;->onAdClosed()V

    return-void
.end method
