.class final synthetic Lcom/google/android/gms/internal/ads/zzbtn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# static fields
.field static final zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbtn;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onResume()V

    return-void
.end method
